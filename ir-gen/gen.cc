#include <fstream>
#include <iostream>
#include <memory>

#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/Support/raw_ostream.h>

constexpr size_t W = 640;
constexpr size_t H = 360;
constexpr size_t HxW = H * W;

struct CBM {
  llvm::LLVMContext *context; // C
  llvm::IRBuilder<> *builder; // B
  llvm::Module *llvmModule;   // M
};

auto genInit(CBM &cbm) {
  auto &builder = *cbm.builder;

  auto *funcType = llvm::FunctionType::get(
      builder.getVoidTy(), {builder.getInt64Ty(), builder.getInt64Ty()}, false);
  auto *func = llvm::Function::Create(
      funcType, llvm::Function::AvailableExternallyLinkage, "init",
      cbm.llvmModule);
  return func;
}

auto genGetZeroOrOne(CBM &cbm) {
  auto *funcType = llvm::FunctionType::get(cbm.builder->getInt8Ty(), false);
  auto *func = llvm::Function::Create(
      funcType, llvm::Function::AvailableExternallyLinkage, "getZeroOrOne",
      cbm.llvmModule);
  return func;
}

auto genFinished(CBM &cbm) {
  auto *funcType = llvm::FunctionType::get(cbm.builder->getInt8Ty(), false);
  auto *func = llvm::Function::Create(
      funcType, llvm::Function::AvailableExternallyLinkage, "finished",
      cbm.llvmModule);
  return func;
}

auto genFillRand(CBM &cbm, llvm::GlobalVariable *surfCur,
                 llvm::Function *getZeroOrOne) {
  auto &context = *cbm.context;
  auto &builder = *cbm.builder;
  auto *llvmModule = cbm.llvmModule;

  auto *funcType = llvm::FunctionType::get(builder.getVoidTy(), false);
  auto *func = llvm::Function::Create(funcType, llvm::Function::InternalLinkage,
                                      "fillRand", llvmModule);

  auto *entryBB = llvm::BasicBlock::Create(context, "entry", func);
  auto *returnBB = llvm::BasicBlock::Create(context, "return", func);
  auto *loopBB = llvm::BasicBlock::Create(context, "loop", func);

  { /* entry */
    builder.SetInsertPoint(entryBB);
    builder.CreateBr(loopBB);
  }

  { /* return */
    builder.SetInsertPoint(returnBB);
    builder.CreateRetVoid();
  }

  { /* loop */
    builder.SetInsertPoint(loopBB);

    auto *idx = builder.CreatePHI(builder.getInt64Ty(), 2, "idx");
    idx->addIncoming(builder.getInt64(0), entryBB);

    auto *zeroOrOne = builder.CreateCall(getZeroOrOne, llvm::None, "val");
    auto *surf = builder.CreateLoad(surfCur->getValueType(), surfCur, "surf");
    auto *ePtr = builder.CreateGEP(builder.getInt8Ty(), surf, idx, "ePtr");
    builder.CreateStore(zeroOrOne, ePtr);

    auto *inc = builder.CreateAdd(idx, builder.getInt64(1), "inc", true, true);
    idx->addIncoming(inc, loopBB);

    auto *cmp = builder.CreateICmp(llvm::CmpInst::ICMP_EQ, inc,
                                   builder.getInt64(HxW), "cmp");
    builder.CreateCondBr(cmp, returnBB, loopBB);
  }

  return func;
}

auto genMain(CBM &cbm, llvm::GlobalVariable *surfCur,
             llvm::GlobalVariable *surfNext, llvm::Function *fillRand,
             llvm::Function *init, llvm::Function *finished) {
  auto &context = *cbm.context;
  auto &builder = *cbm.builder;
  auto *llvmModule = cbm.llvmModule;

  auto *funcType = llvm::FunctionType::get(builder.getInt32Ty(), false);
  auto *mainFunc = llvm::Function::Create(
      funcType, llvm::Function::ExternalLinkage, "main", llvmModule);

  auto *entryBB = llvm::BasicBlock::Create(context, "entry", mainFunc);
  auto *condBB = llvm::BasicBlock::Create(context, "loop.cond", mainFunc);
  auto *bodyBB = llvm::BasicBlock::Create(context, "loop.body", mainFunc);
  auto *returnBB = llvm::BasicBlock::Create(context, "return", mainFunc);

  { /* entry */
    builder.SetInsertPoint(entryBB);

    auto arrayTy = llvm::ArrayType::get(builder.getInt8Ty(), HxW);
    auto *bufCur = builder.CreateAlloca(arrayTy);
    auto *bufNext = builder.CreateAlloca(arrayTy);

    auto *gepCur = builder.CreateConstGEP2_64(arrayTy, bufCur, 0, 0);
    builder.CreateStore(gepCur, surfCur);
    builder.CreateCall(fillRand);

    auto *gepNext = builder.CreateConstGEP2_64(arrayTy, bufNext, 0, 0);
    builder.CreateStore(gepNext, surfNext);
    builder.CreateCall(init, {builder.getInt64(H), builder.getInt64(W)});
    builder.CreateBr(condBB);
  }

  { /* loop.cond */
    builder.SetInsertPoint(condBB);
    auto *callVal = builder.CreateCall(finished);
    auto *icmpVal = builder.CreateICmpEQ(callVal, builder.getInt8(0));
    builder.CreateCondBr(icmpVal, bodyBB, returnBB);
  }

  { /* loop.body */
    builder.SetInsertPoint(bodyBB);
    builder.CreateBr(condBB);
  }

  { /* return */
    builder.SetInsertPoint(returnBB);
    auto *retVal =
        llvm::ConstantInt::get(builder.getInt32Ty(), llvm::APInt::getZero(32));
    builder.CreateRet(retVal);
  }

  return mainFunc;
}

auto *createGlobalSurf(CBM &cbm, llvm::Constant *val, std::string_view name) {
  auto &context = *cbm.context;
  auto &builder = *cbm.builder;
  auto *llvmModule = cbm.llvmModule;

  auto *surf =
      new llvm::GlobalVariable(*llvmModule, builder.getInt8PtrTy(), false,
                               llvm::GlobalVariable::CommonLinkage, val, name);
  surf->setAlignment(llvm::MaybeAlign(8));
  return surf;
}

int main() {
  llvm::LLVMContext context{};
  llvm::IRBuilder builder{context};
  auto llvmModule = std::make_unique<llvm::Module>("top", context);
  CBM cbm{&context, &builder, llvmModule.get()};

  auto *nullVal = llvm::ConstantPointerNull::get(builder.getInt8PtrTy());
  auto *surfCur = createGlobalSurf(cbm, nullVal, "SURF_CUR");
  auto *surfNext = createGlobalSurf(cbm, nullVal, "SURF_NEXT");

  auto *getZeroOrOneFunc = genGetZeroOrOne(cbm);
  auto *initFunc = genInit(cbm);
  auto *finishedFunc = genFinished(cbm);

  auto *fillRandFunc = genFillRand(cbm, surfCur, getZeroOrOneFunc);
  genMain(cbm, surfCur, surfNext, fillRandFunc, initFunc, finishedFunc);

  llvmModule->dump();
  return 0;
}
