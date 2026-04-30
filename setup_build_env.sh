#!/bin/bash
# Build environment setup for Delft3D dflowfm

export PATH=/home/mamorositrepat/bin/cmake-3.30.0-linux-x86_64/bin:/apps/arch/2025/software/linux-rhel8-cascadelake/gcc-13.3.0/openmpi-4.1.7-unupaqxigw4cpnfh4757pu6tjdqq5wl4/bin:$PATH

export LD_LIBRARY_PATH=/apps/arch/2025/software/linux-rhel8-cascadelake/gcc-13.3.0/openmpi-4.1.7-unupaqxigw4cpnfh4757pu6tjdqq5wl4/lib:$LD_LIBRARY_PATH

export PKG_CONFIG_PATH="/apps/arch/2025/software/linux-rhel8-cascadelake/gcc-13.3.0/petsc-3.22.1-kmurulvmnrx4b3w3gzcpuoivkt2yfun4/lib/pkgconfig:/apps/arch/2025/software/linux-rhel8-cascadelake/gcc-13.3.0/netcdf-fortran-4.6.1-n2z33vpkn3jcrjacyrtudhif3bt7rxvd/lib/pkgconfig:/apps/arch/2025/software/linux-rhel8-cascadelake/gcc-13.3.0/netcdf-c-4.9.2-eazho6ml6uxvu4qea4tnjjjzkjd2mtre/lib/pkgconfig:/apps/arch/2025/software/linux-rhel8-cascadelake/gcc-13.3.0/proj-9.4.1-w6pa5f53gwjfbcev54otu3cyidgbdbiv/lib64/pkgconfig:/apps/arch/2025/software/linux-rhel8-cascadelake/gcc-13.3.0/gdal-3.10.0-wtv5nbpjqdxcn2veeyoho2irqmbvrkz4/lib64/pkgconfig:/apps/arch/2025/software/linux-rhel8-cascadelake/gcc-13.3.0/openmpi-4.1.7-unupaqxigw4cpnfh4757pu6tjdqq5wl4/lib/pkgconfig:$PKG_CONFIG_PATH"

echo "Build environment loaded"
