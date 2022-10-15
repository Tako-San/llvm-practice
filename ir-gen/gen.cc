#include <fstream>
#include <iostream>
#include <memory>

#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>

#include <llvm/ExecutionEngine/ExecutionEngine.h>
#include <llvm/ExecutionEngine/GenericValue.h>
#include <llvm/ExecutionEngine/Interpreter.h>

#include <llvm/Support/TargetSelect.h>

#include "game-of-life/draw.h"
#include "game-of-life/gol.h"

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
  auto *func = llvm::Function::Create(funcType, llvm::Function::ExternalLinkage,
                                      "init", cbm.llvmModule);
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
  auto *func = llvm::Function::Create(funcType, llvm::Function::ExternalLinkage,
                                      "finished", cbm.llvmModule);
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

auto genCalcNeighboursCommon(CBM &cbm, llvm::GlobalVariable *surfCur) {
  auto &context = *cbm.context;
  auto &builder = *cbm.builder;
  auto *llvmModule = cbm.llvmModule;

  auto *funcType = llvm::FunctionType::get(
      builder.getInt8Ty(), {builder.getInt64Ty(), builder.getInt64Ty()}, false);
  auto *func = llvm::Function::Create(funcType, llvm::Function::InternalLinkage,
                                      "genCalcNeighboursCommon", llvmModule);

  auto *entryBB = llvm::BasicBlock::Create(context, "", func);
  builder.SetInsertPoint(entryBB);

  auto *a0 = func->getArg(0);
  auto *a1 = func->getArg(1);
  auto *a3 = builder.CreateLoad(builder.getInt8PtrTy(), surfCur);
  auto *a4 = builder.CreateAdd(a0, builder.getInt64(-1));
  auto *a5 = builder.CreateMul(a1, builder.getInt64(640));
  auto *a6 = builder.CreateAdd(a5, builder.getInt64(-640));
  auto *a7 = builder.CreateAdd(a6, a4);
  auto *a8 = builder.CreateGEP(builder.getInt8Ty(), a3, a7);
  auto *a9 = builder.CreateLoad(builder.getInt8Ty(), a8);
  auto *a10 = builder.CreateICmpNE(a9, builder.getInt8(0));
  auto *a11 = builder.CreateZExt(a10, builder.getInt64Ty());
  auto *a12 = builder.CreateAdd(a5, a4);
  auto *a13 = builder.CreateGEP(builder.getInt8Ty(), a3, a12);
  auto *a14 = builder.CreateLoad(builder.getInt8Ty(), a13);
  auto *a15 = builder.CreateICmpNE(a14, builder.getInt8(0));
  auto *a16 = builder.CreateZExt(a15, builder.getInt64Ty());
  auto *a17 = builder.CreateAdd(a16, a11, "", true, true);
  auto *a18 = builder.CreateAdd(a5, builder.getInt64(640));
  auto *a19 = builder.CreateAdd(a18, a4);
  auto *a20 = builder.CreateGEP(builder.getInt8Ty(), a3, a19);
  auto *a21 = builder.CreateLoad(builder.getInt8Ty(), a20);
  auto *a22 = builder.CreateICmpNE(a21, builder.getInt8(0));
  auto *a23 = builder.CreateZExt(a22, builder.getInt64Ty());
  auto *a24 = builder.CreateAdd(a17, a23, "", true, true);
  auto *a25 = builder.CreateAdd(a6, a0);
  auto *a26 = builder.CreateGEP(builder.getInt8Ty(), a3, a25);
  auto *a27 = builder.CreateLoad(builder.getInt8Ty(), a26);
  auto *a28 = builder.CreateICmpNE(a27, builder.getInt8(0));
  auto *a29 = builder.CreateZExt(a28, builder.getInt64Ty());
  auto *a30 = builder.CreateAdd(a24, a29, "", true, true);
  auto *a31 = builder.CreateAdd(a18, a0);
  auto *a32 = builder.CreateGEP(builder.getInt8Ty(), a3, a31);
  auto *a33 = builder.CreateLoad(builder.getInt8Ty(), a32);
  auto *a34 = builder.CreateICmpNE(a33, builder.getInt8(0));
  auto *a35 = builder.CreateZExt(a34, builder.getInt64Ty());
  auto *a36 = builder.CreateAdd(a30, a35, "", true, true);
  auto *a37 = builder.CreateAdd(a0, builder.getInt64(1));
  auto *a38 = builder.CreateAdd(a6, a37);
  auto *a39 = builder.CreateGEP(builder.getInt8Ty(), a3, a38);
  auto *a40 = builder.CreateLoad(builder.getInt8Ty(), a39);
  auto *a41 = builder.CreateICmpNE(a40, builder.getInt8(0));
  auto *a42 = builder.CreateZExt(a41, builder.getInt64Ty());
  auto *a43 = builder.CreateAdd(a36, a42, "", true, true);
  auto *a44 = builder.CreateAdd(a5, a37);
  auto *a45 = builder.CreateGEP(builder.getInt8Ty(), a3, a44);
  auto *a46 = builder.CreateLoad(builder.getInt8Ty(), a45);
  auto *a47 = builder.CreateICmpNE(a46, builder.getInt8(0));
  auto *a48 = builder.CreateZExt(a47, builder.getInt64Ty());
  auto *a49 = builder.CreateAdd(a43, a48, "", true, true);
  auto *a50 = builder.CreateAdd(a18, a37);
  auto *a51 = builder.CreateGEP(builder.getInt8Ty(), a3, a50);
  auto *a52 = builder.CreateLoad(builder.getInt8Ty(), a51);
  auto *a53 = builder.CreateICmpNE(a52, builder.getInt8(0));
  auto *a54 = builder.CreateZExt(a53, builder.getInt64Ty());
  auto *a55 = builder.CreateAdd(a49, a54, "", true, true);

  builder.CreateRet(a55);
  return func;
}

auto genCalcNeighbours(CBM &cbm) {}

auto genCalcSurf(CBM &cbm, llvm::GlobalVariable *surfNext,
                 llvm::Function *calcStateFunc) {
  auto &context = *cbm.context;
  auto &builder = *cbm.builder;
  auto *llvmModule = cbm.llvmModule;

  auto *funcType = llvm::FunctionType::get(builder.getVoidTy(), false);
  auto *func = llvm::Function::Create(funcType, llvm::Function::InternalLinkage,
                                      "calcSurf", llvmModule);

  auto *entryBB = llvm::BasicBlock::Create(context, "entry", func);
  auto *hLoopBB = llvm::BasicBlock::Create(context, "loop.cond.height", func);
  auto *returnBB = llvm::BasicBlock::Create(context, "return", func);
  auto *wLoopBB = llvm::BasicBlock::Create(context, "loop.cond.width", func);
  auto *bodyBB = llvm::BasicBlock::Create(context, "loop.body", func);

  /* entry */

  builder.SetInsertPoint(entryBB);
  builder.CreateBr(wLoopBB);

  /* loop.cond.height */
  builder.SetInsertPoint(hLoopBB);

  auto *line = builder.CreatePHI(builder.getInt64Ty(), 2, "line");
  line->addIncoming(builder.getInt64(0), entryBB);

  auto *offset =
      builder.CreateMul(line, builder.getInt64(640), "offset", true, true);
  builder.CreateBr(bodyBB);

  /* return */
  builder.SetInsertPoint(returnBB);
  builder.CreateRetVoid();

  { /* loop.cond.width */
    builder.SetInsertPoint(wLoopBB);

    auto *add = builder.CreateAdd(line, builder.getInt64(1), "", true, true);
    line->addIncoming(add, wLoopBB);

    auto *icmp = builder.CreateICmpEQ(add, builder.getInt64(360));
    builder.CreateCondBr(icmp, returnBB, hLoopBB);
  }

  { /* loop.body */
    builder.SetInsertPoint(bodyBB);

    auto *col = builder.CreatePHI(builder.getInt64Ty(), 2, "col");
    col->addIncoming(builder.getInt64(0), hLoopBB);

    auto *idx = builder.CreateAdd(col, offset, "idx", true, true);
    auto *surf = builder.CreateLoad(builder.getInt8PtrTy(), surfNext, "surf");
    auto *gep = builder.CreateGEP(builder.getInt8Ty(), surf, idx, "ptr");

    auto *val = builder.CreateCall(calcStateFunc, {col, line}, "val");
    builder.CreateStore(val, gep);

    auto *add = builder.CreateAdd(col, builder.getInt64(1));
    col->addIncoming(add, bodyBB);

    auto *icmp = builder.CreateICmpEQ(add, builder.getInt64(640));
    builder.CreateCondBr(icmp, wLoopBB, bodyBB);
  }

  return func;
}

auto genMain(CBM &cbm) {
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
    builder.CreateStore(gepCur, llvmModule->getGlobalVariable("SURF_CUR"));
    builder.CreateCall(llvmModule->getFunction("fillRand"));

    auto *gepNext = builder.CreateConstGEP2_64(arrayTy, bufNext, 0, 0);
    builder.CreateStore(gepNext, llvmModule->getGlobalVariable("SURF_NEXT"));
    builder.CreateCall(llvmModule->getFunction("init"),
                       {builder.getInt64(H), builder.getInt64(W)});
    builder.CreateBr(condBB);
  }

  { /* loop.cond */
    builder.SetInsertPoint(condBB);
    auto *call = builder.CreateCall(llvmModule->getFunction("finished"));
    auto *icmp = builder.CreateICmpEQ(call, builder.getInt8(0));
    builder.CreateCondBr(icmp, bodyBB, returnBB);
  }

  /* loop.body */
  builder.SetInsertPoint(bodyBB);
  builder.CreateCall(llvmModule->getFunction("calcSurf"));
  builder.CreateCall(llvmModule->getFunction("swap"));
  builder.CreateCall(llvmModule->getFunction("draw"));
  builder.CreateBr(condBB);

  /* return */
  builder.SetInsertPoint(returnBB);
  builder.CreateRet(builder.getInt32(0));

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

// int oldMain() {
//   llvm::LLVMContext context{};
//   llvm::IRBuilder builder{context};
//   auto llvmModule = std::make_unique<llvm::Module>("top", context);
//   CBM cbm{&context, &builder, llvmModule.get()};

//   auto *nullVal = llvm::ConstantPointerNull::get(builder.getInt8PtrTy());
//   auto *surfCur = createGlobalSurf(cbm, nullVal, "SURF_CUR");
//   auto *surfNext = createGlobalSurf(cbm, nullVal, "SURF_NEXT");

//   auto *getZeroOrOneFunc = genGetZeroOrOne(cbm);
//   auto *initFunc = genInit(cbm);
//   auto *finishedFunc = genFinished(cbm);

//   auto *fillRandFunc = genFillRand(cbm, surfCur, getZeroOrOneFunc);

//   auto *calcStateFunc = genCalcNeighboursCommon(cbm, surfCur);
//   auto *calcSurfFunc = genCalcSurf(cbm, surfNext, calcStateFunc);

//   genMain(cbm, surfCur, surfNext, fillRandFunc, initFunc, finishedFunc,
//           calcSurfFunc, finishedFunc, finishedFunc);

//   llvmModule->dump();
//   return 0;
// }

int main2() {
  llvm::LLVMContext context{};
  llvm::IRBuilder builder{context};
  auto llvmModule = std::make_unique<llvm::Module>("top", context);
  CBM cbm{&context, &builder, llvmModule.get()};

  auto *golMainFuncTy = llvm::FunctionType::get(builder.getInt32Ty(), false);
  auto *golMainFunc =
      llvm::Function::Create(golMainFuncTy, llvm::Function::ExternalLinkage,
                             "golMain", llvmModule.get());

  llvmModule->dump();

  auto *ee = llvm::EngineBuilder(std::move(llvmModule)).create();
  ee->InstallLazyFunctionCreator([&](const std::string &fnName) -> void * {
    if (fnName == "golMain") {
      return reinterpret_cast<void *>(golMain);
    }
    return nullptr;
  });

  ee->finalizeObject();
  std::vector<llvm::GenericValue> noargs{};
  ee->runFunction(golMainFunc, noargs);

  return 0;
}

int main() {
  llvm::LLVMContext context{};
  llvm::IRBuilder builder{context};
  auto llvmModule = std::make_unique<llvm::Module>("top", context);
  CBM cbm{&context, &builder, llvmModule.get()};

  auto *nullVal = llvm::ConstantPointerNull::get(builder.getInt8PtrTy());
  auto *surfCur = createGlobalSurf(cbm, nullVal, "SURF_CUR");
  auto *surfNext = createGlobalSurf(cbm, nullVal, "SURF_NEXT");

  genInit(cbm);
  genFinished(cbm);

  auto *fillRandFuncTy =
      llvm::FunctionType::get(cbm.builder->getVoidTy(), false);
  llvm::Function::Create(fillRandFuncTy, llvm::Function::ExternalLinkage,
                         "fillRand", cbm.llvmModule);

  auto *calcSurfFuncTy =
      llvm::FunctionType::get(cbm.builder->getVoidTy(), false);
  llvm::Function::Create(calcSurfFuncTy, llvm::Function::ExternalLinkage,
                         "calcSurf", cbm.llvmModule);

  auto *swapFuncTy = llvm::FunctionType::get(cbm.builder->getVoidTy(), false);
  llvm::Function::Create(swapFuncTy, llvm::Function::ExternalLinkage, "swap",
                         cbm.llvmModule);

  auto *drawFuncTy = llvm::FunctionType::get(cbm.builder->getVoidTy(), false);
  llvm::Function::Create(drawFuncTy, llvm::Function::ExternalLinkage, "draw",
                         cbm.llvmModule);

  auto *golMain = genMain(cbm);

  llvmModule->dump();

  auto *ee = llvm::EngineBuilder(std::move(llvmModule)).create();
  ee->InstallLazyFunctionCreator([&](const std::string &fnName) -> void * {
    if (fnName == "fillRand") {
      return reinterpret_cast<void *>(fillRand);
    }
    if (fnName == "init") {
      return reinterpret_cast<void *>(init);
    }
    if (fnName == "finished") {
      return reinterpret_cast<void *>(finished);
    }
    if (fnName == "calcSurf") {
      return reinterpret_cast<void *>(calcSurf);
    }
    if (fnName == "swap") {
      return reinterpret_cast<void *>(swap);
    }
    if (fnName == "draw") {
      return reinterpret_cast<void *>(draw);
    }

    return nullptr;
  });

  ee->addGlobalMapping(surfCur, reinterpret_cast<void *>(SURF_CUR));
  ee->addGlobalMapping(surfNext, reinterpret_cast<void *>(SURF_NEXT));

  ee->finalizeObject();
  ee->runFunction(golMain, {});

  return 0;
}
