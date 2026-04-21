module load 2025
module load gcc/13.3.0
module load openmpi/4.1.7
module load cmake/3.30.5
module load netcdf-c/4.9.2
module load netcdf-fortran/4.6.1
module load petsc/3.22.1
module load proj/9.4.1
module load libtiff/4.7.0
module load libjpeg-turbo/3.0.3
module load curl/8.10.1
module load libidn2/2.3.7
module load gdal/3.10.0

export FC=mpifort
export CXX=mpicxx
export CC=mpicc

# Install Gtest: needed for building Delft3D-FM tests
cwd=$PWD
if [ ! -d "$HOME/progs/install/googletest" ]; then
    echo "Installing GoogleTest framework"
    cd $/HOME/progs/src/
    git clone https://github.com/google/googletest.git
    cd googletest
    mkdir build
    cd build
    mkdir $HOME/progs/install/googletest
    cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/progs/install/googletest -DBUILD_SHARED_LIBS=ON
    make -j 4
    make install
    cd cwd
fi
export PATH=$HOME/progs/install/googletest/lib64:$PATH
export LD_LIBRARY_PATH=$HOME/progs/install/googletest/lib64:$LD_LIBRARY_PATH
export GTEST_INCLUDE_DIR=$HOME/progs/install/googletest/include