# cmake -DCMAKE_INSTALL_PREFIX=/usr/local/opencv \
#              -DCMAKE_BUILD_TYPE=RELEASE \
#              -DWITH_CUDA=ON \
#              -DENABLE_FAST_MATH=1 \
#              -DCUDA_FAST_MATH=1 \
#              -DWITH_CUBLAS=1 \
#              -DINSTALL_PYTHON_EXAMPLES=OFF \
#              -DENABLE_PRECOMPILED_HEADERS=OFF \
#              -DWITH_OPENMP=ON \
#              -DWITH_NVCUVID=ON \
#              -DWITH_QT=ON \
#              -DWITH_GTK=OFF \
#              -DOPENCV_EXTRA_MODULES_PATH=~/Downloads/opencv_contrib/modules \
#              -DBUILD_opencv_cudacodec=OFF \
#              -DPYTHON_DEFAULT_EXECUTABLE=$(which python3) \
#              -DBUILD_USE_SYMLINKS=ON \
#              -DBUILD_PERF_TESTS=OFF \
#              -DBUILD_TESTS=OFF \
#              -DBUILD_JAVA=OFF \
#              -DBUILD_PROTOBUF=ON \
#              -DBUILD_opencv_java_bindings_gen=OFF \
#              -DBUILD_opencv_cnn_3dobj=OFF \
#              -DWITH_GDAL=ON \
#              -DWITH_CLP=ON \
#              -DTesseract_INCLUDE_DIR=/usr/include/tesseract \
#              -DTesseract_LIBRARY=/usr/lib/x86_64-linux-gnu/libtesseract.so \
#              -DOpenBLAS_LIB=/usr/lib/x86_64-linux-gnu/openblas/libblas.so \
#              -DWITH_OPENGL=ON \
#              -DWITH_VULKAN=ON \
#              -DWITH_TBB=ON \
#              ..

# cmake -DOPENCV_PYTHON3_VERSION=ON ..



# On Arch
cmake -DWITH_OPENGL=1 \
      -DWITH_CLP=1 \
      -DOpenBLAS_LIB=/usr/lib/libopenblas.so \
      -DLAPACK_CBLAS_H=mkl_cblas.h \
      -DWITH_NVCUVID=1 \
      -DWITH_OPENMP=1 \
      -DCLAMDBLAS_ROOT_DIR=/usr/lib/cmake/clBLAS \
      -DWITH_NGRAPH=0 \
      -DCUDA_ARCH_BIN="60 61 62 70 75" \
      -DOpenBLAS_LIBRARY=/usr/lib/libopenblas.so \
      -DOPENCV_GENERATE_PKGCONFIG=1 \
      -DWITH_OPENCL_SVM=1 \
      -DCMAKE_BUILD_TYPE=Release \
      -DOPENCV_ENABLE_NONFREE=1 \
      -DCLAMDFFT_ROOT_DIR=/usr/lib/cmake/clFFT \
      -DCUDA_HOST_COMPILER=/usr/bin/gcc-9 \
      -DMKL_WITH_OPENMP=1 \
      -DCMAKE_CONFIGURATION_TYPES="Debug;Release" \
      -DWITH_GTK=0 \
      -DWITH_OPENCLAMDBLAS=1 \
      -DWITH_TBB=1 \
      -DCUDA_FAST_MATH=1 \
      -DWITH_CUDA=1 \
      -DCMAKE_INSTALL_PREFIX=/usr \
      -DWITH_GDAL=1 \
      -DCLAMDBLAS_INCLUDE_DIR=/usr/include \
      -DWITH_VULKAN=1 \
      -DWITH_QT=1 \
      -DCLAMDFFT_INCLUDE_DIR=/usr/include \
      -DOPENCV_EXTRA_MODULES_PATH="/home/seth/packages/opencv_source/opencv_contrib/modules"
      ..
