# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "readmarker: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ireadmarker:/home/dongha/me491_ros/src/readmarker/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(readmarker_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dongha/me491_ros/src/readmarker/msg/markermsg.msg" NAME_WE)
add_custom_target(_readmarker_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "readmarker" "/home/dongha/me491_ros/src/readmarker/msg/markermsg.msg" "sensor_msgs/CompressedImage:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(readmarker
  "/home/dongha/me491_ros/src/readmarker/msg/markermsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/readmarker
)

### Generating Services

### Generating Module File
_generate_module_cpp(readmarker
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/readmarker
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(readmarker_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(readmarker_generate_messages readmarker_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dongha/me491_ros/src/readmarker/msg/markermsg.msg" NAME_WE)
add_dependencies(readmarker_generate_messages_cpp _readmarker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(readmarker_gencpp)
add_dependencies(readmarker_gencpp readmarker_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS readmarker_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(readmarker
  "/home/dongha/me491_ros/src/readmarker/msg/markermsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/readmarker
)

### Generating Services

### Generating Module File
_generate_module_eus(readmarker
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/readmarker
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(readmarker_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(readmarker_generate_messages readmarker_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dongha/me491_ros/src/readmarker/msg/markermsg.msg" NAME_WE)
add_dependencies(readmarker_generate_messages_eus _readmarker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(readmarker_geneus)
add_dependencies(readmarker_geneus readmarker_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS readmarker_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(readmarker
  "/home/dongha/me491_ros/src/readmarker/msg/markermsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/readmarker
)

### Generating Services

### Generating Module File
_generate_module_lisp(readmarker
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/readmarker
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(readmarker_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(readmarker_generate_messages readmarker_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dongha/me491_ros/src/readmarker/msg/markermsg.msg" NAME_WE)
add_dependencies(readmarker_generate_messages_lisp _readmarker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(readmarker_genlisp)
add_dependencies(readmarker_genlisp readmarker_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS readmarker_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(readmarker
  "/home/dongha/me491_ros/src/readmarker/msg/markermsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/readmarker
)

### Generating Services

### Generating Module File
_generate_module_nodejs(readmarker
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/readmarker
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(readmarker_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(readmarker_generate_messages readmarker_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dongha/me491_ros/src/readmarker/msg/markermsg.msg" NAME_WE)
add_dependencies(readmarker_generate_messages_nodejs _readmarker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(readmarker_gennodejs)
add_dependencies(readmarker_gennodejs readmarker_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS readmarker_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(readmarker
  "/home/dongha/me491_ros/src/readmarker/msg/markermsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/readmarker
)

### Generating Services

### Generating Module File
_generate_module_py(readmarker
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/readmarker
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(readmarker_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(readmarker_generate_messages readmarker_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dongha/me491_ros/src/readmarker/msg/markermsg.msg" NAME_WE)
add_dependencies(readmarker_generate_messages_py _readmarker_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(readmarker_genpy)
add_dependencies(readmarker_genpy readmarker_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS readmarker_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/readmarker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/readmarker
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(readmarker_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(readmarker_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/readmarker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/readmarker
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(readmarker_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(readmarker_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/readmarker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/readmarker
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(readmarker_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(readmarker_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/readmarker)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/readmarker
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(readmarker_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(readmarker_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/readmarker)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/readmarker\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/readmarker
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(readmarker_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(readmarker_generate_messages_py sensor_msgs_generate_messages_py)
endif()
