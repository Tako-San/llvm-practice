find_package(BISON 3.8 REQUIRED)
find_package(FLEX REQUIRED)
find_package(LLVM REQUIRED CONFIG)

set(grammarPath "${CMAKE_CURRENT_SOURCE_DIR}/grammar")
set(driverPath "${CMAKE_CURRENT_SOURCE_DIR}/driver")
set(astPath "${CMAKE_CURRENT_SOURCE_DIR}/ast")

bison_target(parser grammar/parser.y ${CMAKE_CURRENT_BINARY_DIR}/parser.cc
             DEFINES_FILE ${CMAKE_CURRENT_BINARY_DIR}/parser.hh)

message(STATUS "bison output: ${BISON_parser_OUTPUTS}")

flex_target(lexer grammar/lexer.lex  ${CMAKE_CURRENT_BINARY_DIR}/lexer.cc)
message(STATUS "flex output: ${FLEX_lexer_OUTPUTS}")

add_flex_bison_dependency(lexer parser)

add_executable(glang
    glang.cc
    ${driverPath}/driver.cc
    ${astPath}/ast.cc
    ${FLEX_lexer_OUTPUTS}
    ${BISON_parser_OUTPUTS}
)

target_link_libraries(glang LLVM)

target_include_directories(glang
    PUBLIC ${driverPath}
    PUBLIC ${grammarPath}
    PUBLIC ${astPath}
    PUBLIC ${CMAKE_CURRENT_BINARY_DIR}
    target_include_directories(glang PRIVATE ${LLVM_INCLUDE_DIRS})
)

set_target_properties(glang
  PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)
