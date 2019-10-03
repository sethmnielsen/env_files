cmake -DCMAKE_INSTALL_PREFIX=/usr/local/opencv \
      -DCMAKE_BUILD_TYPE=RELEASE \
      -DWITH_CUDA=ON \
      -DENABLE_FAST_MATH=1 \
      -DCUDA_FAST_MATH=1 \
      -DWITH_CUBLAS=1 \
      -DINSTALL_PYTHON_EXAMPLES=OFF \
      -DENABLE_PRECOMPILED_HEADERS=OFF \
      -DWITH_OPENMP=ON \
      -DWITH_NVCUVID=ON \
      -DWITH_QT=ON \
      -DWITH_GTK=OFF \
      -DPYTHON_DEFAULT_EXECUTABLE=/home/seth/.virtualenvs/default/bin/python3 \
      -DBUILD_USE_SYMLINKS=ON \
      -DBUILD_PERF_TESTS=OFF \
      -DBUILD_TESTS=OFF \
      -DBUILD_JAVA=OFF \
      -DBUILD_PROTOBUF=ON \
      -DBUILD_opencv_java_bindings_gen=OFF \
      -DBUILD_opencv_cnn_3dobj=OFF \
      -DWITH_GDAL=ON \
      -DWITH_CLP=ON \
      -DTesseract_INCLUDE_DIR=/usr/include/tesseract \
      -DTesseract_LIBRARY=/usr/lib/x86_64-linux-gnu/libtesseract.so \
      -DOpenBLAS_LIB=/usr/lib/x86_64-linux-gnu/openblas/libblas.so \
      -DWITH_OPENGL=ON \
      -DWITH_VULKAN=ON \
      -DPYTHON3_INCLUDE_DIR2=/home/seth/.virtualenvs/default/lib/python3.6/site-packages \
      -DBUILD_opencv_cudacodec=OFF \
      -DOPENCV_EXTRA_MODULES_PATH=~/Downloads/opencv_contrib/modules \
      -DWITH_TBB=ON  .. \