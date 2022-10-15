cmake_minimum_required(VERSION 3.22)
project(LLVM_PRACTICE)

include(cmake/comp-flags.cmake)

add_subdirectory(game-of-life)
add_subdirectory(ir-gen)

apply_compiler_flags(GOL PRIVATE)
apply_compiler_flags(gen PRIVATE)
