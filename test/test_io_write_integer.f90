!
! test/test_io_write_integer.f90
!

program test_io_write_integer

  use mpi
  use io_write

  implicit none

  integer :: ierror
  integer :: comm, mpi_size, rank

  write(*, *) "test_io_write_integer"

  call MPI_Init(ierror)

  comm = MPI_COMM_WORLD

  call MPI_Comm_size(comm, mpi_size, ierror)
  call MPI_Comm_rank(comm, rank, ierror)

  call io_write_integer(mpi_size)

  call io_write_integer(rank)

  call MPI_Finalize(ierror)

end program test_io_write_integer

