#ifndef __COMPILER_INCLUDE_AST_AST_HH__
#define __COMPILER_INCLUDE_AST_AST_HH__

#include <cstdint>
#include <iostream>
#include <map>
#include <memory>
#include <string>
#include <typeinfo>
#include <unordered_map>
#include <vector>

#include "llvm/IR/Constants.h"
#include "llvm/IR/GlobalValue.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Support/raw_ostream.h"

namespace glang {

struct CodeGenCtx {
  CodeGenCtx();
  std::unique_ptr<llvm::LLVMContext> context_ = nullptr;
  std::unique_ptr<llvm::Module> module_ = nullptr;
  std::unique_ptr<llvm::IRBuilder<>> builder_ = nullptr;
};

enum class BinOp {
  /* arithm */
  Plus,
  Minus,
  Div,
  Mod,
  Mult,

  /* logic */
  And,
  Or,
  Xor,
  Equal,
  NotEqual,
  Greater,
  Less,
  GreaterOrEqual,
  LessOrEqual,

  Assign
};

enum class UnOp {
  /* IO */
  Output,
  Input
};

struct INode {
  virtual llvm::Value *codegen(CodeGenCtx &ctx) = 0;
  virtual ~INode() {}
};

class I32Node : public INode {
public:
  I32Node(std::int32_t val) : val_{val} {}
  std::int32_t get() const { return val_; }
  llvm::Value *codegen(CodeGenCtx &ctx) override;

private:
  std::int32_t val_;
};

class BinOpNode : public INode {
public:
  BinOpNode(std::shared_ptr<INode> lhs, BinOp op, std::shared_ptr<INode> rhs)
      : lhs_{lhs}, rhs_{rhs}, op_{op} {}
  llvm::Value *codegen(CodeGenCtx &ctx) override;

private:
  std::shared_ptr<INode> lhs_, rhs_;
  BinOp op_;
};

class UnOpNode : public INode {
public:
  UnOpNode(UnOp op, std::shared_ptr<INode> val) : val_{val}, op_{op} {}
  llvm::Value *codegen(CodeGenCtx &ctx) override;

private:
  std::shared_ptr<INode> val_;
  UnOp op_;
};

struct DeclNode : public INode {
  virtual llvm::Value *codegen(CodeGenCtx &ctx) override = 0;
};

class DeclVarNode : public DeclNode {
public:
  llvm::Value *codegen(CodeGenCtx &ctx) override;
  void store(CodeGenCtx &ctx, llvm::Value *val);

private:
  llvm::Value *alloca_ = nullptr;
};

class FuncDeclNode;

class ScopeNode : public INode {
public:
  ScopeNode() = default;
  ScopeNode(std::shared_ptr<ScopeNode> parent) : parent_{parent} {}

  void insertChild(std::shared_ptr<INode> child) { childs_.push_back(child); }
  std::shared_ptr<ScopeNode> getParent() const { return parent_; }
  std::shared_ptr<DeclNode> getDeclIfVisible(const std::string &name) const;
  void insertDecl(const std::string &name, std::shared_ptr<DeclNode> decl) {
    symTable_[name] = decl;
  }
  llvm::Value *codegen(CodeGenCtx &ctx) override;

  void setParentFunc(std::shared_ptr<FuncDeclNode> parentFunc) {
    parentFunc_ = parentFunc;
  }
  std::shared_ptr<FuncDeclNode> getParentFunc() const { return parentFunc_; }

  using SymTab = std::unordered_map<std::string, std::shared_ptr<DeclNode>>;
  const SymTab &getSymTab() const { return symTable_; }

private:
  std::vector<std::shared_ptr<INode>> childs_;
  std::shared_ptr<ScopeNode> parent_ = nullptr;
  std::shared_ptr<FuncDeclNode> parentFunc_ = nullptr;
  SymTab symTable_;
};

class DeclGlobalArrNode : public DeclNode {
public:
  DeclGlobalArrNode(std::int32_t size) : size_{size} {}
  void setName(const std::string &name) { name_ = name; }
  llvm::Value *codegen(CodeGenCtx &ctx) override;

  llvm::Constant *getArr() const { return array_; }
  llvm::Type *getArrayType() const { return arrayType_; }

private:
  std::int32_t size_;
  llvm::Constant *array_ = nullptr;
  llvm::Type *arrayType_ = nullptr;
  std::string name_;
};

class ArrAccessNode : public INode {
public:
  ArrAccessNode(std::shared_ptr<INode> access, std::shared_ptr<INode> arrDecl)
      : access_{access}, arrDecl_{arrDecl} {}

  llvm::Value *codegen(CodeGenCtx &ctx) override;
  void store(CodeGenCtx &ctx, llvm::Value *val);

private:
  std::shared_ptr<INode> access_, arrDecl_;
  llvm::Value *ptr_ = nullptr;
};

class IfNode : public INode {
public:
  IfNode(std::shared_ptr<ScopeNode> block, std::shared_ptr<INode> condition,
         std::shared_ptr<ScopeNode> currentScope)
      : block_{block}, condition_{condition}, currentScope_{currentScope} {}
  llvm::Value *codegen(CodeGenCtx &ctx) override;

private:
  std::shared_ptr<ScopeNode> block_;
  std::shared_ptr<INode> condition_;
  std::shared_ptr<ScopeNode> currentScope_;
};

class WhileNode : public INode {
public:
  WhileNode(std::shared_ptr<ScopeNode> block, std::shared_ptr<INode> condition,
            std::shared_ptr<ScopeNode> currentScope)
      : block_{block}, condition_{condition}, currentScope_{currentScope} {}
  llvm::Value *codegen(CodeGenCtx &ctx) override;

private:
  std::shared_ptr<ScopeNode> block_;
  std::shared_ptr<INode> condition_;
  std::shared_ptr<ScopeNode> currentScope_;
};

class FuncDeclNode : public DeclNode {
public:
  FuncDeclNode(const std::string &name,
               const std::vector<std::string> &argNames = {})
      : argNames_{argNames}, name_{name} {}
  llvm::Value *codegen(CodeGenCtx &ctx) override;
  const std::vector<std::string> &getArgNames() const { return argNames_; }
  const std::string &getName() const { return name_; }

private:
  std::vector<std::string> argNames_;
  std::string name_;
  llvm::Function *func_ = nullptr;
};

class FuncNode : public INode {
public:
  FuncNode(std::shared_ptr<ScopeNode> scope,
           std::shared_ptr<FuncDeclNode> header)
      : scope_{scope}, header_{header} {}
  llvm::Value *codegen(CodeGenCtx &ctx) override;

private:
  std::shared_ptr<ScopeNode> scope_;
  std::shared_ptr<FuncDeclNode> header_;
};

class RetVoidNode : public INode {
public:
  RetVoidNode() {}
  llvm::Value *codegen(CodeGenCtx &ctx) override;
};

class RetNode : public INode {
public:
  RetNode(std::shared_ptr<INode> val) : val_{val} {}
  llvm::Value *codegen(CodeGenCtx &ctx) override;

private:
  std::shared_ptr<INode> val_;
};

class RoutineCallNode : public INode {
public:
  RoutineCallNode(std::shared_ptr<INode> funcDecl,
                  std::shared_ptr<ScopeNode> currScope,
                  const std::vector<std::string> &argNames = {})
      : currScope_{currScope}, argNames_{argNames}, funcDecl_{funcDecl} {}
  llvm::Value *codegen(CodeGenCtx &ctx) override;

private:
  std::shared_ptr<ScopeNode> currScope_;
  std::vector<std::string> argNames_;
  std::shared_ptr<INode> funcDecl_;
};

} // namespace glang

#endif // __COMPILER_INCLUDE_AST_AST_HH__
