cmake_minimum_required(VERSION 3.16)
project(MatrixMultiplication)
set(CMAKE_CXX_STANDARD 17)
set(BUILD_SHARED_LIBS ON)
include(common.cmake)
find_package(pybind11)
# Add the source files for your project

# Link libraries

pybind11_add_module(mathmult mdrange.cpp)


target_link_libraries(mathmult PRIVATE Kokkos::kokkos pybind11::module)
set_target_properties(mathmult PROPERTIES POSITION_INDEPENDENT_CODE ON)




# add_library(mathmultlib SHARED mdrange.cpp)
# add_executable(mathmult main.cpp)
# target_link_libraries(mathmultlib PUBLIC Kokkos::kokkos)
# target_link_libraries(mathmult PRIVATE Kokkos::kokkos mathmultlib)
# set_target_properties(mathmult PROPERTIES POSITION_INDEPENDENT_CODE ON)
# set_target_properties(mathmultlib PROPERTIES POSITION_INDEPENDENT_CODE ON)

