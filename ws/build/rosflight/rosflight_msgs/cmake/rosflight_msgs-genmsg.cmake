# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rosflight_msgs: 8 messages, 3 services")

set(MSG_I_FLAGS "-Irosflight_msgs:/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rosflight_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/GPS.msg" NAME_WE)
add_custom_target(_rosflight_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosflight_msgs" "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/GPS.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/OutputRaw.msg" NAME_WE)
add_custom_target(_rosflight_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosflight_msgs" "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/OutputRaw.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/RCRaw.msg" NAME_WE)
add_custom_target(_rosflight_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosflight_msgs" "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/RCRaw.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Command.msg" NAME_WE)
add_custom_target(_rosflight_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosflight_msgs" "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Command.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Barometer.msg" NAME_WE)
add_custom_target(_rosflight_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosflight_msgs" "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Barometer.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Airspeed.msg" NAME_WE)
add_custom_target(_rosflight_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosflight_msgs" "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Airspeed.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Attitude.msg" NAME_WE)
add_custom_target(_rosflight_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosflight_msgs" "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Attitude.msg" "geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Status.msg" NAME_WE)
add_custom_target(_rosflight_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosflight_msgs" "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Status.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamFile.srv" NAME_WE)
add_custom_target(_rosflight_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosflight_msgs" "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamFile.srv" ""
)

get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamGet.srv" NAME_WE)
add_custom_target(_rosflight_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosflight_msgs" "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamGet.srv" ""
)

get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamSet.srv" NAME_WE)
add_custom_target(_rosflight_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rosflight_msgs" "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamSet.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_cpp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/OutputRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_cpp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/RCRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_cpp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_cpp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_cpp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Airspeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_cpp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Attitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_cpp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_msgs
)

### Generating Services
_generate_srv_cpp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_msgs
)
_generate_srv_cpp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamGet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_msgs
)
_generate_srv_cpp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_msgs
)

### Generating Module File
_generate_module_cpp(rosflight_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rosflight_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rosflight_msgs_generate_messages rosflight_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/GPS.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_cpp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/OutputRaw.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_cpp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/RCRaw.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_cpp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Command.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_cpp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Barometer.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_cpp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Airspeed.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_cpp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Attitude.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_cpp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Status.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_cpp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamFile.srv" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_cpp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamGet.srv" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_cpp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamSet.srv" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_cpp _rosflight_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosflight_msgs_gencpp)
add_dependencies(rosflight_msgs_gencpp rosflight_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosflight_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_eus(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/OutputRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_eus(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/RCRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_eus(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_eus(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_eus(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Airspeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_eus(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Attitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_eus(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_msgs
)

### Generating Services
_generate_srv_eus(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_msgs
)
_generate_srv_eus(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamGet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_msgs
)
_generate_srv_eus(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_msgs
)

### Generating Module File
_generate_module_eus(rosflight_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rosflight_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rosflight_msgs_generate_messages rosflight_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/GPS.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_eus _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/OutputRaw.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_eus _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/RCRaw.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_eus _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Command.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_eus _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Barometer.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_eus _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Airspeed.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_eus _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Attitude.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_eus _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Status.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_eus _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamFile.srv" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_eus _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamGet.srv" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_eus _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamSet.srv" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_eus _rosflight_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosflight_msgs_geneus)
add_dependencies(rosflight_msgs_geneus rosflight_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosflight_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_lisp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/OutputRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_lisp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/RCRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_lisp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_lisp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_lisp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Airspeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_lisp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Attitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_lisp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_msgs
)

### Generating Services
_generate_srv_lisp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_msgs
)
_generate_srv_lisp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamGet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_msgs
)
_generate_srv_lisp(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_msgs
)

### Generating Module File
_generate_module_lisp(rosflight_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rosflight_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rosflight_msgs_generate_messages rosflight_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/GPS.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_lisp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/OutputRaw.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_lisp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/RCRaw.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_lisp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Command.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_lisp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Barometer.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_lisp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Airspeed.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_lisp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Attitude.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_lisp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Status.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_lisp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamFile.srv" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_lisp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamGet.srv" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_lisp _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamSet.srv" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_lisp _rosflight_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosflight_msgs_genlisp)
add_dependencies(rosflight_msgs_genlisp rosflight_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosflight_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_nodejs(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/OutputRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_nodejs(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/RCRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_nodejs(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_nodejs(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_nodejs(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Airspeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_nodejs(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Attitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_nodejs(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_msgs
)

### Generating Services
_generate_srv_nodejs(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_msgs
)
_generate_srv_nodejs(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamGet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_msgs
)
_generate_srv_nodejs(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_msgs
)

### Generating Module File
_generate_module_nodejs(rosflight_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rosflight_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rosflight_msgs_generate_messages rosflight_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/GPS.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_nodejs _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/OutputRaw.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_nodejs _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/RCRaw.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_nodejs _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Command.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_nodejs _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Barometer.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_nodejs _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Airspeed.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_nodejs _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Attitude.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_nodejs _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Status.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_nodejs _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamFile.srv" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_nodejs _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamGet.srv" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_nodejs _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamSet.srv" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_nodejs _rosflight_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosflight_msgs_gennodejs)
add_dependencies(rosflight_msgs_gennodejs rosflight_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosflight_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/GPS.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_py(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/OutputRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_py(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/RCRaw.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_py(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_py(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Barometer.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_py(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Airspeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_py(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Attitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_msgs
)
_generate_msg_py(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_msgs
)

### Generating Services
_generate_srv_py(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamFile.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_msgs
)
_generate_srv_py(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamGet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_msgs
)
_generate_srv_py(rosflight_msgs
  "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_msgs
)

### Generating Module File
_generate_module_py(rosflight_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rosflight_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rosflight_msgs_generate_messages rosflight_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/GPS.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_py _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/OutputRaw.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_py _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/RCRaw.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_py _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Command.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_py _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Barometer.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_py _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Airspeed.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_py _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Attitude.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_py _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg/Status.msg" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_py _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamFile.srv" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_py _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamGet.srv" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_py _rosflight_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/seth/dev/ws/src/rosflight/rosflight_msgs/srv/ParamSet.srv" NAME_WE)
add_dependencies(rosflight_msgs_generate_messages_py _rosflight_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rosflight_msgs_genpy)
add_dependencies(rosflight_msgs_genpy rosflight_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rosflight_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rosflight_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rosflight_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rosflight_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rosflight_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rosflight_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rosflight_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rosflight_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rosflight_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rosflight_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rosflight_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rosflight_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rosflight_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_msgs)
  install(CODE "execute_process(COMMAND \"/home/seth/.virtualenvs/default/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rosflight_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rosflight_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rosflight_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
