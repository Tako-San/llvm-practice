#ifndef __COMPILER_DRIVER_DRIVER_HH__
#define __COMPILER_DRIVER_DRIVER_HH__

#ifndef yyFlexLexer
#include <FlexLexer.h>
#endif

#include <fstream>
#include <memory>
#include <sstream>
#include <string>

#include "ast.hh"
#include "parser.hh"

namespace yy {

class Driver final {
public:
  ~Driver() = default;
  Driver(std::istream &in, std::ostream &out);

  parser::token_type yylex(parser::semantic_type *yylval);
  bool parse();
  void codegen();
  void dumpIR(std::ostream &out);

  friend parser;

private:
  std::unique_ptr<yyFlexLexer> lexer_ = nullptr;
  glang::CodeGenCtx codegenCtx_;
  std::shared_ptr<glang::ScopeNode> currentScope_ =
      std::make_shared<glang::ScopeNode>();
  std::vector<std::string> currentFunctionArgs_;
};

} // namespace yy

#endif // __COMPILER_DRIVER_DRIVER_HH__
