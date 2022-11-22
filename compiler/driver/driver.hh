#ifndef __COMPILER_INCLUDE_DRIVER_DRIVER_HH__
#define __COMPILER_INCLUDE_DRIVER_DRIVER_HH__

#ifndef yyFlexLexer
#include <FlexLexer.h>
#endif

#include <string>
#include <fstream>
#include <sstream>
#include <memory>

#include "parser.hh"
#include "ast.hh"

namespace yy {

class Driver final {
public:
    ~Driver() = default;
    Driver(std::istream& in, std::ostream& out);

    parser::token_type yylex(parser::semantic_type* yylval);
    bool parse();
    void codegen();
    void dumpIR(std::ostream& out);

    friend parser;
private:
    std::unique_ptr<yyFlexLexer> m_lexer = nullptr;
    glang::CodeGenCtx m_codegenCtx;
    std::shared_ptr<glang::ScopeN> m_currentScope = std::make_shared<glang::ScopeN>();
    std::vector<std::string> m_currentFunctionArgs;
};

} // namespace yy

#endif // __COMPILER_INCLUDE_DRIVER_DRIVER_HH__
