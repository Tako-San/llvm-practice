%option c++

%option noyywrap debug
%option yylineno

%s IN_COMMENT

%{

#include "parser.hh"

%}

WS          [ \t\n\v]+
COMM        "//".*"\n"

DIGIT       [0-9]

LETTER      [a-zA-Z]
LETTER_D    [A-Za-z0-9_]

INT         [1-9]{DIGIT}*
ID          {LETTER}{LETTER_D}*

%%

{WS}                 /* skip blanks and tabs */
{COMM}               /* skip comments to the end of line */

<INITIAL>"/*"        {BEGIN(IN_COMMENT);}

<IN_COMMENT>"*/"     {BEGIN(INITIAL);}

<IN_COMMENT>[^*\n]+  /* skip comments */
<IN_COMMENT>"*"      /* skip lone star */

{INT}                { return yy::parser::token_type::INT; }

{ID}                 { return yy::parser::token_type::ID; }

"+"                  { return yy::parser::token_type::ADD; }
"-"                  { return yy::parser::token_type::SUB; }
"*"                  { return yy::parser::token_type::MUL; }
"/"                  { return yy::parser::token_type::DIV; }
"%"                  { return yy::parser::token_type::MOD; }
":="                 { return yy::parser::token_type::ASSIGN; }

"or"                 { return yy::parser::token_type::OR; }
"and"                { return yy::parser::token_type::AND; }
"xor"                { return yy::parser::token_type::XOR; }

">"                  { return yy::parser::token_type::GREATER; }
"<"                  { return yy::parser::token_type::LESS; }
">="                 { return yy::parser::token_type::GR_EQ; }
"<="                 { return yy::parser::token_type::LS_EQ; }
"=="                 { return yy::parser::token_type::IS_EQ; }
"!="                 { return yy::parser::token_type::NOT_EQ; }

","                  { return yy::parser::token_type::COMMA; }
":"                  { return yy::parser::token_type::COLON; }
";"                  { return yy::parser::token_type::SCOLON; }

"("                  { return yy::parser::token_type::LRB; }
")"                  { return yy::parser::token_type::RRB; }
"["                  { return yy::parser::token_type::LSB; }
"]"                  { return yy::parser::token_type::RSB; }

"if"                 { return yy::parser::token_type::IF; }
"then"               { return yy::parser::token_type::THEN; }
"else"               { return yy::parser::token_type::ELSE; }
"while"              { return yy::parser::token_type::WHILE; }
"return"             { return yy::parser::token_type::RETURN; }
"routine"            { return yy::parser::token_type::ROUTINE; }
"var"                { return yy::parser::token_type::VAR; }
"is"                 { return yy::parser::token_type::IS; }
"loop"               { return yy::parser::token_type::LOOP; }
"end"                { return yy::parser::token_type::END; }

"array"              { return yy::parser::token_type::ARRAY; }
"integer"            { return yy::parser::token_type::INT_TYPE; }

"scan"               { return yy::parser::token_type::SCAN; }
"print"              { return yy::parser::token_type::PRINT; }

.                    { return yy::parser::token_type::ERR; }

%%
