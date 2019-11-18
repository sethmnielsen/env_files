cmake_minimum_required(VERSION 3.0.0)
find_package(OpenCV)

add_executable(opencv_version opencv_version.cpp)
target_link_libraries(opencv_version ${OpenCV_LIBS})

#get_cmake_property(_variableNames VARIABLES)
#list (SORT _variableNames)
#message(STATUS "print_all_variables------------------------------------------{")
#foreach (_variableName ${_variableNames})
#      message(STATUS "${_variableName}=${${_variableName}}")
#endforeach()
#message(STATUS "print_all_variables------------------------------------------}")

