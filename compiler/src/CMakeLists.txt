list_dirs(DIRS ${CMAKE_CURRENT_SOURCE_DIR})
set(LIBLIST ${DIRS})

foreach(DIR ${DIRS})
  add_subdirectory(${DIR})
endforeach()

set(LIBLIST "${LIBLIST}" PARENT_SCOPE)
