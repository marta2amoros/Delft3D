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
module fm_external_qhbnd_data
   use precision, only: dp

   implicit none

   integer, allocatable :: kbndu(:, :) !< velocity boundary points index array
   integer, allocatable :: L1qbnd(:) !< first nbndu point in discharge bnd nqbnd
   integer, allocatable :: L2qbnd(:) !< second nbndu point in discharge bnd nqbnd
   real(kind=dp), allocatable :: at_all(:) !< "at" for all qbnd's, dim(nqbnd)
   real(kind=dp), allocatable :: at_sum(:) !< "at" for all qbnd's, summed over all domains
   real(kind=dp), allocatable :: wwssav_all(:, :) !< "wwav" and "ssav" for all qbd's
   real(kind=dp), allocatable :: wwssav_sum(:, :) !< summed "wwav" and "ssav" for all qbd's
   integer :: japartqbnd !< one or more discharge boundaries is partitioned
   integer :: nqbnd !< number of discharge boundaries
   integer :: nqhbnd !< number of qh boundaries
   real(kind=dp), allocatable, target :: atqh_all(:) !< qh discharge per domain
   real(kind=dp), allocatable :: atqh_sum(:) !< total qh discharge
end module fm_external_qhbnd_data
