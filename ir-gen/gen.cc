#include <fstream>
#include <iostream>
#include <memory>

#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Module.h>
#include <llvm/Support/raw_ostream.h>

void genFillRand(llvm::LLVMContext &context, llvm::IRBuilder<> &builder,
                 llvm::Module *llvmModule) {
  auto *funcType = llvm::FunctionType::get(builder.getVoidTy(), false);
  auto *func = llvm::Function::Create(funcType, llvm::Function::ExternalLinkage,
                                      "fillRand", llvmModule);

  // entry:
  auto *entryBB = llvm::BasicBlock::Create(context, "entry", func);

  builder.SetInsertPoint(entryBB);
  builder.CreateRetVoid();
}

int main() {
  llvm::LLVMContext context{};
  // ; ModuleID = 'top'
  // source_filename = "top"
  auto llvmModule = std::make_unique<llvm::Module>("top", context);
  llvm::IRBuilder builder{context};

  genFillRand(context, builder, llvmModule.get());

  // declare void @main()
  auto *funcType = llvm::FunctionType::get(builder.getVoidTy(), false);
  auto *mainFunc = llvm::Function::Create(
      funcType, llvm::Function::ExternalLinkage, "main", llvmModule.get());

  // entry:
  auto *entryBB = llvm::BasicBlock::Create(context, "entry", mainFunc);

  builder.SetInsertPoint(entryBB);
  builder.CreateRetVoid();

  std::cout << "#[LLVM IR]:\n";
  std::string s;
  llvm::raw_string_ostream os(s);
  llvmModule->print(os, nullptr);
  os.flush();
  std::cout << s;

  return 0;
}
