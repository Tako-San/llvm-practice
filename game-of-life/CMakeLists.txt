find_package(SFML 2.5 REQUIRED COMPONENTS system window graphics REQUIRED)

add_library(DRAW STATIC draw.cc)
target_link_libraries(DRAW PRIVATE sfml-graphics)
target_compile_features(DRAW PRIVATE cxx_std_20)

add_library(GOLlib STATIC gol.c)
target_compile_features(GOLlib PRIVATE cxx_std_20)
target_link_libraries(GOLlib PUBLIC DRAW)

add_executable(GOL main.c)
target_link_libraries(GOL PRIVATE GOLlib)
target_compile_features(GOL PRIVATE c_std_11)

set_target_properties(GOL
  PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"
)
