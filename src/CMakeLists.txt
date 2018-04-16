#
# src/CMakeLists.txt
#

add_library(io_write io_write_integer.f90)
target_include_directories(io_write PRIVATE ${MPI_Fortran_INCLUDE_PATH})
target_link_libraries(io_write PRIVATE ${MPI_Fortran_LIBRARIES})

add_executable(mpi_examples mpi_examples.f90)
target_include_directories(mpi_examples PRIVATE ${MPI_Fortran_INCLUDE_PATH})
target_link_libraries(mpi_examples PRIVATE ${MPI_Fortran_LIBRARIES} io_write)

