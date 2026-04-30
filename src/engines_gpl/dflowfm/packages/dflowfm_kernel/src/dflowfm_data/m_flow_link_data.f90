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
module m_flow_link_data
   use precision

   implicit none

   real(kind=dp), allocatable, target :: a1(:)
   real(kind=dp), allocatable :: a1m(:)
   real(kind=dp), allocatable, target :: s1(:)
   real(kind=dp), allocatable, target :: vol1(:)
   real(kind=dp), allocatable, target :: vol1_f(:) !< [m3] flow volume volume at end of timestep {"location": "face", "shape": ["ndx"]}
   real(kind=dp), allocatable :: volerror(:)
   real(kind=dp), allocatable, target :: hs(:)
   real(kind=dp), allocatable, target :: zws(:)
   real(kind=dp), allocatable :: tidep(:, :)
   real(kind=dp), allocatable, target :: ucx(:)
   real(kind=dp), allocatable, target :: ucy(:)
   real(kind=dp), allocatable :: uc1d(:)
   real(kind=dp), allocatable :: ustbc(:)
   real(kind=dp), allocatable :: qw(:)
   real(kind=dp), allocatable :: ustb(:)
   real(kind=dp), allocatable :: ustw(:)
   real(kind=dp), allocatable, target :: u0(:)
   real(kind=dp), allocatable, target :: u1(:)
   real(kind=dp), allocatable, target :: q1(:)
   real(kind=dp), allocatable :: qin(:) !< rain, evap, qlat and src netto inloop (m3/s)
   real(kind=dp), allocatable, target :: au(:)
   real(kind=dp), allocatable :: advi(:)
   real(kind=dp), allocatable :: adve(:)
   real(kind=dp), allocatable, target :: hu(:)
   real(kind=dp), allocatable :: v(:)
   real(kind=dp), allocatable :: fu(:)
   real(kind=dp), allocatable :: ru(:)
   real(kind=dp), allocatable :: squ(:)
   real(kind=dp), allocatable :: sqi(:)
   real(kind=dp), allocatable :: same(:)
   real(kind=dp), allocatable :: suu(:)
   real(kind=dp), allocatable :: cfuhi(:)
   real(kind=dp), allocatable :: vicLu(:)
   real(kind=dp), allocatable, target :: frcu(:)
   real(kind=dp), allocatable, target :: frculin(:)
   integer, allocatable :: ifrcutp(:)
   real(kind=dp), allocatable :: z0ucur(:)
   real(kind=dp), allocatable, target :: wdsu_x(:)
   real(kind=dp), allocatable :: wavfu(:)
   real(kind=dp), allocatable :: plotlin(:)
   real(kind=dp), allocatable, target :: taubxu(:)
   real(kind=dp), allocatable, target :: FrcInternalTides2D(:)
   integer, allocatable :: numlimdt(:)

   real(kind=dp), dimension(:), allocatable :: spircrv !< 1/R_s streamline curvature                 ,    (1/m)
   real(kind=dp), dimension(:), allocatable :: spirint !< spiral flow intensity                      ,    (m/s)
   real(kind=dp), dimension(:), allocatable :: spirfx !< Secondary flow force for momentum in x-dir ,    (m/s^2)
   real(kind=dp), dimension(:), allocatable :: spirfy !< Secondary flow force for momentum in y-dir ,    (m/s^2)
   real(kind=dp), dimension(:), allocatable :: ht_xx !< array hT_xx, for calculation of spirfx and spirfy
   real(kind=dp), dimension(:), allocatable :: ht_xy !< array hT_xy, for calculation of spirfx and spirfy
   integer :: numoptsf

   real(kind=dp) :: vol1tot !< Total volume   end of timestep            (m3)
   real(kind=dp) :: vol1ini !< Total volume   initially                  (m3)
   real(kind=dp) :: Volgrw !< Total volume grw end of timestep          (m3)
   real(kind=dp) :: Volgrwini !< Total volume grw initially                (m3)
   real(kind=dp) :: vinbndcum !< Cumulative volume through boundaries in   (m3) Cumulative values
   real(kind=dp) :: voutbndcum !< Cumulative volume through boundaries out  (m3)
   real(kind=dp) :: qinrain !< Total influx rain                         (m3/s)
   real(kind=dp) :: qouteva !< Total outflux evaporation                 (m3/s)
   real(kind=dp) :: vinraincum !< Total inflow from rain                    (m3) integrated over all time steps
   real(kind=dp) :: voutevacum !< Total outflow to evaporation              (m3) integrated over all time steps
   real(kind=dp), dimension(2) :: vinlatcum !< Total inflow from diffuse laterals (1D and 2D) (m3)
   real(kind=dp), dimension(2) :: voutlatcum !< Total outflow to diffuse laterals  (1D and 2D) (m3)
   real(kind=dp) :: vingrwcum !< Total inflow from groundwater             (m3)
   real(kind=dp) :: voutgrwcum !< Total outflow to groundwater              (m3)
   real(kind=dp) :: a1ini !< Total model area rain evap               (m2)
end module m_flow_link_data
