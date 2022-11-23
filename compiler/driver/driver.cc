#include "driver.hh"

namespace yy {

Driver::Driver(std::istream &in, std::ostream &out) {
  lexer_ = std::make_unique<yyFlexLexer>(in, out);
}

bool Driver::parse() {
  parser parser(this);
  bool res = parser.parse();
  return !res;
}

parser::token_type Driver::yylex(parser::semantic_type *yylval) {
  parser::token_type token = static_cast<parser::token_type>(lexer_->yylex());
  if (token == yy::parser::token_type::ID) {
    std::string name(lexer_->YYText());
    parser::semantic_type tmp;
    tmp.as<std::string>() = name;
    yylval->swap<std::string>(tmp);
  } else if (token == yy::parser::token_type::INT) {
    yylval->as<int>() = std::atoi(lexer_->YYText());
  }

  return token;
}

void Driver::codegen() { currentScope_->codegen(codegenCtx_); }

void Driver::dumpIR(std::ostream &out) {
  std::string s;
  llvm::raw_string_ostream os(s);
  codegenCtx_.module_->print(os, nullptr);
  os.flush();
  out << s;
}

} // namespace yy
