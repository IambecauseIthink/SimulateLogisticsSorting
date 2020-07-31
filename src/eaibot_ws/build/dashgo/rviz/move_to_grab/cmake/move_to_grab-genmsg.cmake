# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "move_to_grab: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imove_to_grab:/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(move_to_grab_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/LoopMoveToGrabMsg.msg" NAME_WE)
add_custom_target(_move_to_grab_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "move_to_grab" "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/LoopMoveToGrabMsg.msg" "std_msgs/Bool:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:move_to_grab/MoveToGrabMsg:geometry_msgs/PoseStamped:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg" NAME_WE)
add_custom_target(_move_to_grab_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "move_to_grab" "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg" "std_msgs/Bool:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Pose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(move_to_grab
  "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/LoopMoveToGrabMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_to_grab
)
_generate_msg_cpp(move_to_grab
  "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_to_grab
)

### Generating Services

### Generating Module File
_generate_module_cpp(move_to_grab
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_to_grab
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(move_to_grab_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(move_to_grab_generate_messages move_to_grab_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/LoopMoveToGrabMsg.msg" NAME_WE)
add_dependencies(move_to_grab_generate_messages_cpp _move_to_grab_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg" NAME_WE)
add_dependencies(move_to_grab_generate_messages_cpp _move_to_grab_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(move_to_grab_gencpp)
add_dependencies(move_to_grab_gencpp move_to_grab_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_to_grab_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(move_to_grab
  "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/LoopMoveToGrabMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_to_grab
)
_generate_msg_eus(move_to_grab
  "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_to_grab
)

### Generating Services

### Generating Module File
_generate_module_eus(move_to_grab
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_to_grab
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(move_to_grab_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(move_to_grab_generate_messages move_to_grab_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/LoopMoveToGrabMsg.msg" NAME_WE)
add_dependencies(move_to_grab_generate_messages_eus _move_to_grab_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg" NAME_WE)
add_dependencies(move_to_grab_generate_messages_eus _move_to_grab_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(move_to_grab_geneus)
add_dependencies(move_to_grab_geneus move_to_grab_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_to_grab_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(move_to_grab
  "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/LoopMoveToGrabMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_to_grab
)
_generate_msg_lisp(move_to_grab
  "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_to_grab
)

### Generating Services

### Generating Module File
_generate_module_lisp(move_to_grab
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_to_grab
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(move_to_grab_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(move_to_grab_generate_messages move_to_grab_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/LoopMoveToGrabMsg.msg" NAME_WE)
add_dependencies(move_to_grab_generate_messages_lisp _move_to_grab_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg" NAME_WE)
add_dependencies(move_to_grab_generate_messages_lisp _move_to_grab_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(move_to_grab_genlisp)
add_dependencies(move_to_grab_genlisp move_to_grab_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_to_grab_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(move_to_grab
  "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/LoopMoveToGrabMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_to_grab
)
_generate_msg_nodejs(move_to_grab
  "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_to_grab
)

### Generating Services

### Generating Module File
_generate_module_nodejs(move_to_grab
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_to_grab
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(move_to_grab_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(move_to_grab_generate_messages move_to_grab_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/LoopMoveToGrabMsg.msg" NAME_WE)
add_dependencies(move_to_grab_generate_messages_nodejs _move_to_grab_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg" NAME_WE)
add_dependencies(move_to_grab_generate_messages_nodejs _move_to_grab_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(move_to_grab_gennodejs)
add_dependencies(move_to_grab_gennodejs move_to_grab_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_to_grab_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(move_to_grab
  "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/LoopMoveToGrabMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_to_grab
)
_generate_msg_py(move_to_grab
  "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_to_grab
)

### Generating Services

### Generating Module File
_generate_module_py(move_to_grab
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_to_grab
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(move_to_grab_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(move_to_grab_generate_messages move_to_grab_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/LoopMoveToGrabMsg.msg" NAME_WE)
add_dependencies(move_to_grab_generate_messages_py _move_to_grab_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/eaibot/eaibot_ws/src/dashgo/rviz/move_to_grab/msg/MoveToGrabMsg.msg" NAME_WE)
add_dependencies(move_to_grab_generate_messages_py _move_to_grab_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(move_to_grab_genpy)
add_dependencies(move_to_grab_genpy move_to_grab_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_to_grab_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_to_grab)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_to_grab
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(move_to_grab_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(move_to_grab_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_to_grab)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_to_grab
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(move_to_grab_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(move_to_grab_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_to_grab)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_to_grab
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(move_to_grab_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(move_to_grab_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_to_grab)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_to_grab
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(move_to_grab_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(move_to_grab_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_to_grab)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_to_grab\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_to_grab
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(move_to_grab_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(move_to_grab_generate_messages_py geometry_msgs_generate_messages_py)
endif()
