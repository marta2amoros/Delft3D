!----- AGPL --------------------------------------------------------------------
!
!  Copyright (C)  Stichting Deltares, 2017-2025.
!
!  This file is part of Delft3D (D-Flow Flexible Mesh component).
!
!-------------------------------------------------------------------------------

subroutine unc_read_net_wrapper(filename, numk_keep, numl_keep, numk_read, numl_read, ierr)
   use unstruc_netcdf, only: unc_read_net
   implicit none

   character(*), intent(in) :: filename
   integer, intent(inout) :: numk_keep
   integer, intent(inout) :: numl_keep
   integer, intent(out) :: numk_read
   integer, intent(out) :: numl_read
   integer, intent(out) :: ierr

   call unc_read_net(filename, numk_keep, numl_keep, numk_read, numl_read, ierr)
end subroutine unc_read_net_wrapper

subroutine md5_net_file_wrapper(numlstart, numlcount)
   use unstruc_netcdf, only: md5_net_file
   implicit none

   integer, intent(in) :: numlstart
   integer, intent(in) :: numlcount

   call md5_net_file(numlstart, numlcount)
end subroutine md5_net_file_wrapper
