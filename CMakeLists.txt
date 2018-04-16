#
# CMakeLists.txt
#

cmake_minimum_required(VERSION 3.1)

project(mpi_examples C Fortran)

set(CMAKE_Fortran_MODULE_DIRECTORY ${PROJECT_BINARY_DIR}/fortran_modules)

find_package(MPI REQUIRED)

add_subdirectory(src)

add_subdirectory(test)

