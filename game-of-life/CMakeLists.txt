find_package(SFML 2.5 COMPONENTS system window graphics REQUIRED)

add_library(DRAW STATIC draw.cc)
target_link_libraries(DRAW PRIVATE sfml-graphics)
target_compile_features(DRAW PRIVATE cxx_std_20)

add_executable(GOL gol.c main.c)
target_link_libraries(GOL DRAW)
target_compile_features(GOL PRIVATE c_std_11)

set_target_properties(GOL
  PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)
