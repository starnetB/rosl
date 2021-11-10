# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "beginner_tutorlials: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ibeginner_tutorlials:/home/franka/home/catkin_ws/src/beginner_tutorlials/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(beginner_tutorlials_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/franka/home/catkin_ws/src/beginner_tutorlials/msg/Num.msg" NAME_WE)
add_custom_target(_beginner_tutorlials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorlials" "/home/franka/home/catkin_ws/src/beginner_tutorlials/msg/Num.msg" ""
)

get_filename_component(_filename "/home/franka/home/catkin_ws/src/beginner_tutorlials/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_beginner_tutorlials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "beginner_tutorlials" "/home/franka/home/catkin_ws/src/beginner_tutorlials/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(beginner_tutorlials
  "/home/franka/home/catkin_ws/src/beginner_tutorlials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorlials
)

### Generating Services
_generate_srv_cpp(beginner_tutorlials
  "/home/franka/home/catkin_ws/src/beginner_tutorlials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorlials
)

### Generating Module File
_generate_module_cpp(beginner_tutorlials
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorlials
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(beginner_tutorlials_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(beginner_tutorlials_generate_messages beginner_tutorlials_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/franka/home/catkin_ws/src/beginner_tutorlials/msg/Num.msg" NAME_WE)
add_dependencies(beginner_tutorlials_generate_messages_cpp _beginner_tutorlials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/franka/home/catkin_ws/src/beginner_tutorlials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(beginner_tutorlials_generate_messages_cpp _beginner_tutorlials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beginner_tutorlials_gencpp)
add_dependencies(beginner_tutorlials_gencpp beginner_tutorlials_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_tutorlials_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(beginner_tutorlials
  "/home/franka/home/catkin_ws/src/beginner_tutorlials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorlials
)

### Generating Services
_generate_srv_eus(beginner_tutorlials
  "/home/franka/home/catkin_ws/src/beginner_tutorlials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorlials
)

### Generating Module File
_generate_module_eus(beginner_tutorlials
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorlials
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(beginner_tutorlials_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(beginner_tutorlials_generate_messages beginner_tutorlials_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/franka/home/catkin_ws/src/beginner_tutorlials/msg/Num.msg" NAME_WE)
add_dependencies(beginner_tutorlials_generate_messages_eus _beginner_tutorlials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/franka/home/catkin_ws/src/beginner_tutorlials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(beginner_tutorlials_generate_messages_eus _beginner_tutorlials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beginner_tutorlials_geneus)
add_dependencies(beginner_tutorlials_geneus beginner_tutorlials_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_tutorlials_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(beginner_tutorlials
  "/home/franka/home/catkin_ws/src/beginner_tutorlials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorlials
)

### Generating Services
_generate_srv_lisp(beginner_tutorlials
  "/home/franka/home/catkin_ws/src/beginner_tutorlials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorlials
)

### Generating Module File
_generate_module_lisp(beginner_tutorlials
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorlials
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(beginner_tutorlials_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(beginner_tutorlials_generate_messages beginner_tutorlials_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/franka/home/catkin_ws/src/beginner_tutorlials/msg/Num.msg" NAME_WE)
add_dependencies(beginner_tutorlials_generate_messages_lisp _beginner_tutorlials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/franka/home/catkin_ws/src/beginner_tutorlials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(beginner_tutorlials_generate_messages_lisp _beginner_tutorlials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beginner_tutorlials_genlisp)
add_dependencies(beginner_tutorlials_genlisp beginner_tutorlials_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_tutorlials_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(beginner_tutorlials
  "/home/franka/home/catkin_ws/src/beginner_tutorlials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorlials
)

### Generating Services
_generate_srv_nodejs(beginner_tutorlials
  "/home/franka/home/catkin_ws/src/beginner_tutorlials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorlials
)

### Generating Module File
_generate_module_nodejs(beginner_tutorlials
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorlials
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(beginner_tutorlials_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(beginner_tutorlials_generate_messages beginner_tutorlials_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/franka/home/catkin_ws/src/beginner_tutorlials/msg/Num.msg" NAME_WE)
add_dependencies(beginner_tutorlials_generate_messages_nodejs _beginner_tutorlials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/franka/home/catkin_ws/src/beginner_tutorlials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(beginner_tutorlials_generate_messages_nodejs _beginner_tutorlials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beginner_tutorlials_gennodejs)
add_dependencies(beginner_tutorlials_gennodejs beginner_tutorlials_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_tutorlials_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(beginner_tutorlials
  "/home/franka/home/catkin_ws/src/beginner_tutorlials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorlials
)

### Generating Services
_generate_srv_py(beginner_tutorlials
  "/home/franka/home/catkin_ws/src/beginner_tutorlials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorlials
)

### Generating Module File
_generate_module_py(beginner_tutorlials
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorlials
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(beginner_tutorlials_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(beginner_tutorlials_generate_messages beginner_tutorlials_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/franka/home/catkin_ws/src/beginner_tutorlials/msg/Num.msg" NAME_WE)
add_dependencies(beginner_tutorlials_generate_messages_py _beginner_tutorlials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/franka/home/catkin_ws/src/beginner_tutorlials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(beginner_tutorlials_generate_messages_py _beginner_tutorlials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(beginner_tutorlials_genpy)
add_dependencies(beginner_tutorlials_genpy beginner_tutorlials_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS beginner_tutorlials_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorlials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/beginner_tutorlials
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(beginner_tutorlials_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorlials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/beginner_tutorlials
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(beginner_tutorlials_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorlials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/beginner_tutorlials
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(beginner_tutorlials_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorlials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/beginner_tutorlials
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(beginner_tutorlials_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorlials)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3.8\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorlials\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/beginner_tutorlials
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(beginner_tutorlials_generate_messages_py std_msgs_generate_messages_py)
endif()
