# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rosflight_holodeck: 1 messages, 0 services")

set(MSG_I_FLAGS "-Irosflight_holodeck:/home/seth/dev/ws/src/rosflight_holodeck/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rosflight_holodeck_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/seth/dev/ws/src/rosflight_holodeck/msg/Info.msg" NAME_WE)
add_custom_target(_rosflight_holodeck_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosflight_holodeck" "/home/seth/dev/ws/src/rosflight_holodeck/msg/Info.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rosflight_holodeck
  "/home/seth/dev/ws/src/rosflight_holodeck/msg/Info.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_holodeck
)

### Generating Services

### Generating Module File
_generate_module_cpp(rosflight_holodeck
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_holodeck
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rosflight_holodeck_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rosflight_holodeck_generate_messages rosflight_holodeck_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight_holodeck/msg/Info.msg" NAME_WE)
add_dependencies(rosflight_holodeck_generate_messages_cpp _rosflight_holodeck_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosflight_holodeck_gencpp)
add_dependencies(rosflight_holodeck_gencpp rosflight_holodeck_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosflight_holodeck_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rosflight_holodeck
  "/home/seth/dev/ws/src/rosflight_holodeck/msg/Info.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_holodeck
)

### Generating Services

### Generating Module File
_generate_module_eus(rosflight_holodeck
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_holodeck
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rosflight_holodeck_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rosflight_holodeck_generate_messages rosflight_holodeck_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight_holodeck/msg/Info.msg" NAME_WE)
add_dependencies(rosflight_holodeck_generate_messages_eus _rosflight_holodeck_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosflight_holodeck_geneus)
add_dependencies(rosflight_holodeck_geneus rosflight_holodeck_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosflight_holodeck_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rosflight_holodeck
  "/home/seth/dev/ws/src/rosflight_holodeck/msg/Info.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_holodeck
)

### Generating Services

### Generating Module File
_generate_module_lisp(rosflight_holodeck
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_holodeck
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rosflight_holodeck_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rosflight_holodeck_generate_messages rosflight_holodeck_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight_holodeck/msg/Info.msg" NAME_WE)
add_dependencies(rosflight_holodeck_generate_messages_lisp _rosflight_holodeck_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosflight_holodeck_genlisp)
add_dependencies(rosflight_holodeck_genlisp rosflight_holodeck_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosflight_holodeck_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rosflight_holodeck
  "/home/seth/dev/ws/src/rosflight_holodeck/msg/Info.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_holodeck
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rosflight_holodeck
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_holodeck
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rosflight_holodeck_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rosflight_holodeck_generate_messages rosflight_holodeck_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight_holodeck/msg/Info.msg" NAME_WE)
add_dependencies(rosflight_holodeck_generate_messages_nodejs _rosflight_holodeck_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosflight_holodeck_gennodejs)
add_dependencies(rosflight_holodeck_gennodejs rosflight_holodeck_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosflight_holodeck_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rosflight_holodeck
  "/home/seth/dev/ws/src/rosflight_holodeck/msg/Info.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_holodeck
)

### Generating Services

### Generating Module File
_generate_module_py(rosflight_holodeck
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_holodeck
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rosflight_holodeck_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rosflight_holodeck_generate_messages rosflight_holodeck_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight_holodeck/msg/Info.msg" NAME_WE)
add_dependencies(rosflight_holodeck_generate_messages_py _rosflight_holodeck_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosflight_holodeck_genpy)
add_dependencies(rosflight_holodeck_genpy rosflight_holodeck_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosflight_holodeck_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_holodeck)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_holodeck
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rosflight_holodeck_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rosflight_holodeck_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_holodeck)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_holodeck
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rosflight_holodeck_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rosflight_holodeck_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_holodeck)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_holodeck
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rosflight_holodeck_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rosflight_holodeck_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_holodeck)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_holodeck
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rosflight_holodeck_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rosflight_holodeck_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_holodeck)
  install(CODE "execute_process(COMMAND \"/home/seth/.virtualenvs/default/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_holodeck\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_holodeck
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rosflight_holodeck_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rosflight_holodeck_generate_messages_py std_msgs_generate_messages_py)
endif()
