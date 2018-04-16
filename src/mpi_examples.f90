!
! src/mpi_examples.f90
!

program mpi_examples

  use mpi
  use io_write

  implicit none

  integer :: ierror
  integer :: comm, mpi_size, rank

  write (*, *) "mpi_examples"

  call MPI_Init(ierror)

  comm = MPI_COMM_WORLD

  call MPI_Comm_size(comm, mpi_size, ierror)
  call MPI_Comm_rank(comm, rank, ierror)

  write (*, *) "process", rank, "of", mpi_size

  call io_write_integer(rank)

  call MPI_Finalize(ierror)

end program mpi_examples

