cmake_minimum_required(VERSION 3.22)
project(LLVM_PRACTICE)

include(cmake/comp-flags.cmake)
include(cmake/list-dirs.cmake)

add_subdirectory(game-of-life)
add_subdirectory(ir-gen)
add_subdirectory(compiler)

apply_compiler_flags(GOL PRIVATE)
apply_compiler_flags(gen PRIVATE)
