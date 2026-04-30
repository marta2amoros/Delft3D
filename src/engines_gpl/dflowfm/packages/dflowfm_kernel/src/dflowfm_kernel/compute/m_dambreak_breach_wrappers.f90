!----- AGPL --------------------------------------------------------------------
!
!  Copyright (C)  Stichting Deltares, 2017-2025.
!
!  This file is part of Delft3D (D-Flow Flexible Mesh component).
!
!-------------------------------------------------------------------------------

subroutine set_dambreak_widening_method_wrapper(method_string)
   use m_dambreak_breach, only: set_dambreak_widening_method
   implicit none

   character(len=*), intent(inout) :: method_string

   call set_dambreak_widening_method(method_string)
end subroutine set_dambreak_widening_method_wrapper
