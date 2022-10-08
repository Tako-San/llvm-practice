find_package(LLVM REQUIRED CONFIG)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

llvm_map_components_to_libnames(LLVMLIBS core)

add_executable(gen gen.cc)
target_compile_features(gen PRIVATE cxx_std_20)

target_include_directories(gen PRIVATE ${LLVM_INCLUDE_DIRS})
target_link_libraries(gen PRIVATE ${LLVMLIBS})

set_target_properties(gen
  PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)
