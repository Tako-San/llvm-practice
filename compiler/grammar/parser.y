%language "c++"
%skeleton "lalr1.cc"

%define api.value.type variant
%param {Driver* driver}

%code requires {
  #include <string>
  #include <memory>
  namespace yy { class Driver; }
  namespace langI { class INode; class ScopeNode; class FuncDeclNode; }
}

%code {
  #include "driver.hh"
  #include "ast.hh"
  namespace yy {parser::token_type yylex(parser::semantic_type* yylval, Driver* driver);}
}

%token <std::string> ID
%token <int> INT
%token ADD SUB
       MUL DIV
       MOD ASSIGN
       OR AND
       XOR GREATER
       LESS GR_EQ
       LS_EQ IS_EQ
       NOT_EQ COMMA
       COLON SCOLON
       LRB RRB
       LSB RSB
       IF THEN ELSE
       WHILE RETURN
       ROUTINE VAR
       IS LOOP
       END ARRAY
       INT_TYPE
       SCAN PRINT
       ERR
       ;

 %nterm<std::shared_ptr<glang::INode>>     Program
                                           VariableDeclaration
                                           RoutineDeclaration
                                           Parameters
                                           ParamDecl
                                           Statement
                                           ReturnStatement
                                           Assignment
                                           RoutineCall
                                           Arguments
                                           WhileLoop
                                           IfStatement
                                           Expression
                                           ExpressionTerm
                                           Primary
                                           ModPrimary
                                           ;


// %nterm<std::shared_ptr<glang::ScopeNode>>     globalScope
// %nterm<std::shared_ptr<glang::ScopeNode>>     scope
// %nterm<std::shared_ptr<glang::ScopeNode>>     closeSc
// %nterm<std::shared_ptr<glang::ScopeNode>>     openSc
// %nterm<std::shared_ptr<glang::INode>>      func
// %nterm<std::shared_ptr<glang::FuncDeclNode>>  funcSign
// %nterm<std::shared_ptr<glang::INode>>      argList
// %nterm<std::shared_ptr<glang::INode>>      stm
// %nterm<std::shared_ptr<glang::INode>>      declVar
// %nterm<std::shared_ptr<glang::INode>>      lval
// %nterm<std::shared_ptr<glang::INode>>      if
// %nterm<std::shared_ptr<glang::INode>>      while
// %nterm<std::shared_ptr<glang::INode>>      expr1
// %nterm<std::shared_ptr<glang::INode>>      expr2
// %nterm<std::shared_ptr<glang::INode>>      expr3
// %nterm<std::shared_ptr<glang::INode>>      condition
// %nterm<std::shared_ptr<glang::INode>>      output
// %nterm<std::shared_ptr<glang::INode>>      stms
// %nterm<std::shared_ptr<glang::INode>>      return
// %nterm<std::shared_ptr<glang::INode>>      funcCall
// %nterm<std::shared_ptr<glang::INode>>      globalArrDecl
// %nterm<std::shared_ptr<glang::INode>>      arrAccess

%right ASSIGN

%right ELSE THEN

%left OR
%left AND
%left XOR
%left IS_EQ NOT_EQ
%left
      GREATER LESS
      GR_EQ LS_EQ
      ;

%left ADD SUB
%left MUL DIV MOD

%%

Parse   : Program {YYACCEPT;}

Program : RoutineDeclaration {}
        | VariableDeclaration {}
        | Program VariableDeclaration {}
        | Program RoutineDeclaration {}

VariableDeclaration : VAR ID COLON Type IS Expression {}
                    | VAR ID COLON Type {}

RoutineDeclaration : ROUTINE ID IS Body END {}
                   | ROUTINE ID COLON Type IS Body END {}
                   | ROUTINE ID LRB Parameters RRB IS Body END {}
                   | ROUTINE ID LRB Parameters RRB COLON Type IS Body END {}

Parameters : ParamDecl {}
           | Parameters COMMA ParamDecl {}

ParamDecl : ID COLON Type {}

Type : PrimitiveType {}
     | ArrayType {}

PrimitiveType : INT_TYPE {}

ArrayType : ARRAY LSB Expression RSB PrimitiveType

Body : Statement {}
     | VariableDeclaration {}
     | Body Statement {}
     | Body VariableDeclaration {}

Statement : Assignment SCOLON       { $$ = $1; }
          | RoutineCall SCOLON      { $$ = $1; }
          | PRINT Expression SCOLON {}
          | SCAN ID SCOLON          {}
          | WhileLoop               { $$ = $1; }
          | IfStatement             { $$ = $1; }
          | ReturnStatement SCOLON  { $$ = $1; }

ReturnStatement : RETURN            { $$ = std::make_shared<glang::RetVoidNode>(); }
                | RETURN Expression { $$ = std::make_shared<glang::RetNode>($2); }

Assignment : ID ASSIGN Expression {}

RoutineCall : ID LRB RRB {}
            | ID LRB Arguments RRB {}

Arguments : Expression {}
          | Arguments COMMA Expression {}

WhileLoop : WHILE Expression LOOP Body END {}

IfStatement : IF Expression THEN Body END {}
            | IF Expression THEN Body ELSE Body END {}


Expression : Expression OR Expression      { $$ = std::make_shared<glang::BinOpNode>($1, glang::BinOp::Or, $3); }
           | Expression AND Expression     { $$ = std::make_shared<glang::BinOpNode>($1, glang::BinOp::And, $3); }
           | Expression XOR Expression     { $$ = std::make_shared<glang::BinOpNode>($1, glang::BinOp::Xor, $3); }
           | Expression IS_EQ Expression   { $$ = std::make_shared<glang::BinOpNode>($1, glang::BinOp::And, $3); }
           | Expression NOT_EQ Expression  { $$ = std::make_shared<glang::BinOpNode>($1, glang::BinOp::And, $3); }
           | Expression GREATER Expression { $$ = std::make_shared<glang::BinOpNode>($1, glang::BinOp::And, $3); }
           | Expression LESS Expression    { $$ = std::make_shared<glang::BinOpNode>($1, glang::BinOp::And, $3); }
           | Expression LS_EQ Expression   { $$ = std::make_shared<glang::BinOpNode>($1, glang::BinOp::And, $3); }
           | Expression GR_EQ Expression   { $$ = std::make_shared<glang::BinOpNode>($1, glang::BinOp::And, $3); }
           | Expression ADD Expression     { $$ = std::make_shared<glang::BinOpNode>($1, glang::BinOp::And, $3); }
           | Expression SUB Expression     { $$ = std::make_shared<glang::BinOpNode>($1, glang::BinOp::And, $3); }
           | Expression MUL Expression     { $$ = std::make_shared<glang::BinOpNode>($1, glang::BinOp::And, $3); }
           | Expression DIV Expression     { $$ = std::make_shared<glang::BinOpNode>($1, glang::BinOp::And, $3); }
           | Expression MOD Expression     { $$ = std::make_shared<glang::BinOpNode>($1, glang::BinOp::And, $3); }
           | ExpressionTerm {}

ExpressionTerm : LRB Expression RRB {}
               | Primary {}

Primary : INT {}
        | ModPrimary {}

ModPrimary : ID {}
           | ID LSB Expression RSB {}
           | RoutineCall {}

%%

namespace yy {

parser::token_type yylex (parser::semantic_type* yylval, Driver* driver) {
  return driver->yylex(yylval);
}

void parser::error (const std::string& msg) {
  std::cout << msg << " in line: " << std::endl;
}

}
