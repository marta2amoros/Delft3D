!----- AGPL --------------------------------------------------------------------
!
!  Copyright (C)  Stichting Deltares, 2017-2025.
!
!  This file is part of Delft3D (D-Flow Flexible Mesh component).
!
!  Delft3D is free software: you can redistribute it and/or modify
!  it under the terms of the GNU Affero General Public License as
!  published by the Free Software Foundation version 3.
!
!  Delft3D  is distributed in the hope that it will be useful,
!  but WITHOUT ANY WARRANTY; without even the implied warranty of
!  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
!  GNU Affero General Public License for more details.
!
!  You should have received a copy of the GNU Affero General Public License
!  along with Delft3D.  If not, see <http://www.gnu.org/licenses/>.
!
!  contact: delft3d.support@deltares.nl
!  Stichting Deltares
!  P.O. Box 177
!  2600 MH Delft, The Netherlands
!
!  All indications and logos of, and references to, "Delft3D",
!  "D-Flow Flexible Mesh" and "Deltares" are registered trademarks of Stichting
!  Deltares, and remain the property of Stichting Deltares. All rights reserved.
!
!-------------------------------------------------------------------------------
module m_flow_vertical_data
   implicit none

   integer :: kmx !< nr of 3d layers, increasing in positive upward direction
   integer :: ndkx !< dim of 3d flow nodes (internal + boundary)
   integer :: lnkx !< dim of 3d flow links (internal + boundary)
   integer :: kplot !< layer nr to be plotted
   integer :: nplot !< vertical profile to be plotted at node nr
   integer :: kplotordepthaveraged = 1 !< 1 = kplot, 2 = averaged
   integer :: kplotfrombedorsurface = 2 !< up or down k
   integer, allocatable, target :: ktop(:) !< [-] layer-compressed top layer cell number
   integer, allocatable, target :: kbot(:) !< [-] layer-compressed bottom layer cell number
   integer, allocatable :: kmxn(:) !< Maximum number of active vertical cells per horizontal base cell n
   integer, allocatable, target :: Ltop(:) !< [-] layer-compressed top layer edge number
   integer, allocatable, target :: Lbot(:) !< [-] layer-compressed bottom layer edge number
   integer, allocatable :: kmxL(:) !< max nr of vertical links per base link L
end module m_flow_vertical_data
