#include "ast.hh"

namespace glang {

CodeGenCtx::CodeGenCtx() {
  context_ = std::make_unique<llvm::LLVMContext>();
  module_ = std::make_unique<llvm::Module>("main", *context_);
  builder_ = std::make_unique<llvm::IRBuilder<>>(*context_);

  // __glang_print
  llvm::FunctionType *glangPrintTy = llvm::FunctionType::get(
      builder_->getVoidTy(), {builder_->getInt32Ty()}, false);
  auto *glangPrint = llvm::Function::Create(
      glangPrintTy, llvm::Function::ExternalLinkage, "__glang_print", *module_);

  // __glang_scan
  llvm::FunctionType *glangScanTy =
      llvm::FunctionType::get(builder_->getInt32Ty(), false);
  auto *glangScan = llvm::Function::Create(
      glangScanTy, llvm::Function::ExternalLinkage, "__glang_scan", *module_);
}

std::shared_ptr<DeclNode>
ScopeNode::getDeclIfVisible(const std::string &name) const {
  std::shared_ptr<DeclNode> ret = nullptr;
  auto &&it = symTable_.find(name);
  if (it != symTable_.end()) {
    return it->second;
  }
  if (parent_) {
    return parent_->getDeclIfVisible(name);
  }
  return ret;
}

llvm::Value *ScopeNode::codegen(CodeGenCtx &ctx) {
  for (auto &&child : childs_) {
    child->codegen(ctx);
  }
  return nullptr;
}

llvm::Value *I32Node::codegen(CodeGenCtx &ctx) {
  return ctx.builder_->getInt32(val_);
}

llvm::Value *DeclVarNode::codegen(CodeGenCtx &ctx) {
  auto &&builder = ctx.builder_;
  if (!alloca_) {
    alloca_ = builder->CreateAlloca(builder->getInt32Ty());
  }
  return builder->CreateLoad(builder->getInt32Ty(), alloca_);
}

void DeclVarNode::store(CodeGenCtx &ctx, llvm::Value *val) {
  ctx.builder_->CreateStore(val, alloca_);
}

void ArrAccessNode::store(CodeGenCtx &ctx, llvm::Value *val) {
  ctx.builder_->CreateStore(val, ptr_);
}

llvm::Value *BinOpNode::codegen(CodeGenCtx &ctx) {
  llvm::Value *lhsCodeGen = lhs_->codegen(ctx);
  llvm::Value *rhsCodeGen = rhs_->codegen(ctx);
  switch (op_) {
  case BinOp::Plus:
    return ctx.builder_->CreateAdd(lhsCodeGen, rhsCodeGen);
  case BinOp::Minus:
    return ctx.builder_->CreateSub(lhsCodeGen, rhsCodeGen);
  case BinOp::Div:
    return ctx.builder_->CreateSDiv(lhsCodeGen, rhsCodeGen);
  case BinOp::Xor:
    return ctx.builder_->CreateXor(lhsCodeGen, rhsCodeGen);
  case BinOp::Mod:
    // todo
    assert(0);
  case BinOp::Mult:
    return ctx.builder_->CreateMul(lhsCodeGen, rhsCodeGen);
  case BinOp::And:
    return ctx.builder_->CreateAnd(lhsCodeGen, rhsCodeGen);
  case BinOp::Or:
    return ctx.builder_->CreateOr(lhsCodeGen, rhsCodeGen);
  case BinOp::Equal:
    return ctx.builder_->CreateICmpEQ(lhsCodeGen, rhsCodeGen);
  case BinOp::NotEqual:
    return ctx.builder_->CreateICmpNE(lhsCodeGen, rhsCodeGen);
  case BinOp::Greater:
    return ctx.builder_->CreateICmpSGT(lhsCodeGen, rhsCodeGen);
  case BinOp::Less:
    return ctx.builder_->CreateICmpSLT(lhsCodeGen, rhsCodeGen);
  case BinOp::GreaterOrEqual:
    return ctx.builder_->CreateICmpSGE(lhsCodeGen, rhsCodeGen);
  case BinOp::LessOrEqual:
    return ctx.builder_->CreateICmpSLE(lhsCodeGen, rhsCodeGen);
  case BinOp::Assign:

    if (std::shared_ptr<DeclVarNode> decl =
            std::dynamic_pointer_cast<DeclVarNode>(lhs_)) {
      decl->store(ctx, rhsCodeGen);
    } else if (std::shared_ptr<ArrAccessNode> decl =
                   std::dynamic_pointer_cast<ArrAccessNode>(lhs_)) {
      decl->store(ctx, rhsCodeGen);
    }
    return nullptr;
  }

  assert(0);
  nullptr;
}

llvm::Value *UnOpNode::codegen(CodeGenCtx &ctx) {
  auto &&module = ctx.module_;
  auto &&builder = ctx.builder_;
  llvm::Value *valCodegen;
  if (val_) {
    valCodegen = val_->codegen(ctx);
  }
  switch (op_) {
  case UnOp::Output: {
    auto *glangPrint = module->getFunction("__glang_print");
    assert(glangPrint && "Driver shall create decl for __glang_print");

    llvm::Value *args[] = {valCodegen};
    return builder->CreateCall(glangPrint, args);
  }
  case UnOp::Input: {
    auto *glangScan = module->getFunction("__glang_scan");
    assert(glangScan && "Driver shall create decl for __glang_scan");

    return builder->CreateCall(glangScan);
  }
  };
  assert(0);
  nullptr;
}

llvm::Value *IfNode::codegen(CodeGenCtx &ctx) {
  auto &&module = ctx.module_;
  auto &&builder = ctx.builder_;
  auto &&context = ctx.context_;

  auto &&funcHeader = currentScope_->getParentFunc();
  auto *func = module->getFunction(funcHeader->getName());
  assert(func && "Driver shall create decl for func");

  llvm::BasicBlock *taken = llvm::BasicBlock::Create(*context, "", func);
  llvm::BasicBlock *notTaken = llvm::BasicBlock::Create(*context, "", func);

  auto *conditionCodegen = condition_->codegen(ctx);

  builder->CreateCondBr(conditionCodegen, taken, notTaken);
  builder->SetInsertPoint(taken);
  block_->codegen(ctx);
  builder->CreateBr(notTaken);
  builder->SetInsertPoint(notTaken);
  return nullptr;
}

llvm::Value *WhileNode::codegen(CodeGenCtx &ctx) {
  auto &&module = ctx.module_;
  auto &&builder = ctx.builder_;
  auto &&context = ctx.context_;

  auto &&funcHeader = currentScope_->getParentFunc();
  auto *func = module->getFunction(funcHeader->getName());
  assert(func && "Driver shall create decl for func");

  llvm::BasicBlock *takenBB = llvm::BasicBlock::Create(*context, "", func);
  llvm::BasicBlock *notTakenBB = llvm::BasicBlock::Create(*context, "", func);
  llvm::BasicBlock *conditionBB = llvm::BasicBlock::Create(*context, "", func);

  builder->CreateBr(conditionBB);
  builder->SetInsertPoint(conditionBB);
  auto *conditionCodegen = condition_->codegen(ctx);
  builder->CreateCondBr(conditionCodegen, takenBB, notTakenBB);

  builder->SetInsertPoint(takenBB);
  auto *blockCodegen = block_->codegen(ctx);
  builder->CreateBr(conditionBB);

  builder->SetInsertPoint(notTakenBB);
  return nullptr;
}

llvm::Value *FuncDeclNode::codegen(CodeGenCtx &ctx) {
  if (!func_) {
    auto &&module = ctx.module_;
    auto &&builder = ctx.builder_;
    auto &&context = ctx.context_;

    std::vector<llvm::Type *> argTypes;
    for (std::size_t i = 0; i < argNames_.size(); ++i) {
      argTypes.push_back(builder->getInt32Ty());
    }

    llvm::FunctionType *functTy =
        llvm::FunctionType::get(builder->getInt32Ty(), argTypes, false);
    func_ = llvm::Function::Create(functTy, llvm::Function::ExternalLinkage,
                                   name_, *module);
  }
  return func_;
}

llvm::Value *FuncNode::codegen(CodeGenCtx &ctx) {
  auto &&module = ctx.module_;
  auto &&builder = ctx.builder_;
  auto &&context = ctx.context_;

  header_->codegen(ctx); // create func declaration

  auto &&FuncNodeame = header_->getName();
  auto *func = module->getFunction(FuncNodeame);

  llvm::BasicBlock *initBB = llvm::BasicBlock::Create(*context, "entry", func);
  builder->SetInsertPoint(initBB);

  auto &&argNames = header_->getArgNames();
  auto &&symTable = scope_->getSymTab();

  for (std::size_t i = 0; i < argNames.size(); ++i) {
    auto &&it = symTable.find(argNames[i]);
    if (it != symTable.end()) {
      auto &&decl = std::dynamic_pointer_cast<DeclVarNode>(it->second);
      decl->codegen(ctx);
      auto &&argVal = func->getArg(i);
      decl->store(ctx, argVal);
    }
  }

  scope_->codegen(ctx);
  return nullptr;
}

llvm::Value *RetVoidNode::codegen(CodeGenCtx &ctx) {
  auto *ret = ctx.builder_->CreateRetVoid();
  return ret;
}

llvm::Value *RetNode::codegen(CodeGenCtx &ctx) {
  auto *valCodegen = val_->codegen(ctx);
  auto *ret = ctx.builder_->CreateRet(valCodegen);
  return ret;
}

llvm::Value *RoutineCallNode::codegen(CodeGenCtx &ctx) {
  auto &&module = ctx.module_;
  auto &&builder = ctx.builder_;
  auto &&context = ctx.context_;

  auto *funcDecl = llvm::dyn_cast<llvm::Function>(funcDecl_->codegen(ctx));
  auto *funcTy = funcDecl->getFunctionType();

  auto &&symTable = currScope_->getSymTab();

  std::vector<llvm::Value *> args;
  for (auto &&name : argNames_) {
    auto &&it = symTable.find(name);
    assert(it != symTable.end());
    args.push_back(it->second->codegen(ctx));
  }

  auto *ret = builder->CreateCall(funcTy, funcDecl, args);
  return ret;
}

llvm::Value *DeclGlobalArrNode::codegen(CodeGenCtx &ctx) {
  auto &&module = ctx.module_;
  auto &&builder = ctx.builder_;
  auto &&context = ctx.context_;

  arrayType_ = llvm::ArrayType::get(builder->getInt32Ty(), size_);
  array_ = module->getOrInsertGlobal(name_, arrayType_);
  return array_;
}

llvm::Value *ArrAccessNode::codegen(CodeGenCtx &ctx) {
  auto &&module = ctx.module_;
  auto &&builder = ctx.builder_;
  auto &&context = ctx.context_;

  std::shared_ptr<DeclGlobalArrNode> decl =
      std::dynamic_pointer_cast<DeclGlobalArrNode>(arrDecl_);
  auto *arr = decl->getArr();
  auto *arrTy = decl->getArrayType();

  auto *idx = access_->codegen(ctx);
  ptr_ = builder->CreateGEP(arrTy, arr,
                            {
                                builder->getInt32(0),
                                idx,
                            });
  return builder->CreateLoad(builder->getInt32Ty(), ptr_);
}

} // namespace glang
