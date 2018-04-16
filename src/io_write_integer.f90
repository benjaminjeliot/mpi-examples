!
! src/io_write_integer.f90
!

module io_write

use MPI

implicit none

contains

subroutine io_write_integer(a)

  integer, intent(in) :: a

  write (*, *) "io_write_integer"

  write (*, *) "a =", a

end subroutine io_write_integer

end module io_write

