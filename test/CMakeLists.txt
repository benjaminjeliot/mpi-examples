#
# test/CMakeLists.txt
#

add_executable(test_io_write_integer test_io_write_integer.f90)
target_include_directories(test_io_write_integer PRIVATE ${MPI_Fortran_INCLUDE_PATH})
target_link_libraries(test_io_write_integer PRIVATE ${MPI_Fortran_LIBRARIES} io_write)

