find_package(SFML 2.5 COMPONENTS system window graphics REQUIRED)

add_executable(GOL draw.cc gol.cc main.cc)
target_link_libraries(GOL sfml-graphics)
target_compile_features(GOL PRIVATE cxx_std_20)
set_target_properties(GOL
  PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)
