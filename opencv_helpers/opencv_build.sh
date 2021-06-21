#!/bin/zsh

set -e

mkdir -p build
cd build

pkgver=4.5.2
srcdir=..

_pythonpath=`python -c "from sysconfig import get_path; print(get_path('platlib'))"`

cmake \
    -DWITH_OPENGL=ON \
    -DWITH_TBB=ON \
    -DOpenGL_GL_PREFERENCE="GLVND" \
    -DCMAKE_INSTALL_PREFIX="/usr" \
    -DWITH_NVCUVID=ON \
    -DWITH_CUDA=ON \
    -DCUDA_FAST_MATH=ON \
    -DCUDA_HOST_COMPILER="/opt/cuda/bin/gcc" \
    -DOPENCV_EXTRA_MODULES_PATH="$srcdir/opencv_contrib-$pkgver/modules" \
    -DBUILD_USE_SYMLINKS=ON \
    -DWITH_CLP=ON \
    -DLAPACK_LIBRARIES="/usr/lib/liblapack.so;/usr/lib/libblas.so;/usr/lib/libcblas.so" \
    -DOpenBLAS_LIB="/usr/lib/libopenblas.so" \
    -DLAPACK_CBLAS_H="/usr/include/cblas.h" \
    -DLAPACK_LAPACKE_H="/usr/include/lapacke.h" \
    -DOPENCV_GENERATE_PKGCONFIG=ON \
    -DWITH_OPENCLAMDBLAS=ON \
    -DCLAMDBLAS_ROOT_DIR="/usr/lib/cmake/clBLAS" \
    -DCLAMDBLAS_INCLUDE_DIR="/usr/include" \
    -DCLAMDFFT_ROOT_DIR="/usr/lib/cmake/clFFT" \
    -DCLAMDFFT_INCLUDE_DIR="/usr/include" \
    -DWITH_OPENCL_SVM=ON \
    -DMKL_WITH_OPENMP=ON \
    -DWITH_OPENMP=ON \
    -DWITH_NGRAPH=OFF \
    -DOPENCV_ENABLE_NONFREE=ON \
    -DCUDA_ARCH_BIN="6.0 6.1 6.2 7.0 7.5" \
    -DBUILD_opencv_cnn_3dobj=OFF \
    -DWITH_GDAL=ON \
    -DWITH_VULKAN=ON \
    -DWITH_QT=ON \
    -DWITH_GTK=OFF \
    -DBUILD_JAVA=OFF \
    -DBUILD_opencv_java_bindings_gen=OFF \
    -DBUILD_opencv_rgbd=OFF \
    -DOPENCV_PYTHON3_INSTALL_PATH=$_pythonpath \
    ../opencv-$pkgver

make -j17
