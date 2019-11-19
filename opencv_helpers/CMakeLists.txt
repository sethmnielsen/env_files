cmake_minimum_required(VERSION 3.0.0)
find_package(OpenCV)
message(STATUS "OpenCV Version: ${OpenCV_VERSION} (${OpenCV_DIR})")
message(STATUS "OpenCV include dirs: ${OpenCV_INCLUDE_DIRS}")

add_executable(opencv_build_info opencv_build_info.cpp)
target_link_libraries(opencv_build_info ${OpenCV_LIBS})
