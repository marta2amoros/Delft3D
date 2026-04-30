module ifport
   implicit none

contains

   logical function CHANGEDIRQQ(dirname)
      character(len=*), intent(in) :: dirname
      integer :: status

      call chdir(trim(dirname), status)
      CHANGEDIRQQ = status == 0
   end function CHANGEDIRQQ

end module ifport
