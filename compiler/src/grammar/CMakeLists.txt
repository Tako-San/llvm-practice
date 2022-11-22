
flex_target(lexer
  lexer.lex
  ${CMAKE_CURRENT_BINARY_DIR}/lex.yy.cc
)

bison_target(parser
  parser.y
  ${CMAKE_CURRENT_BINARY_DIR}/parser.tab.cc)

add_flex_bison_dependency(lexer parser)

add_executable(tmp ${BISON_parser_OUTPUTS} ${FLEX_lexer_OUTPUTS})
target_link_libraries(tmp y)
target_include_directories(tmp PRIVATE ${CMAKE_CURRENT_BINARY_DIR})
set_target_properties(tmp
  PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)
