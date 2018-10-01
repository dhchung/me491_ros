cmake_minimum_required(VERSION 2.8.3)
project(ros_tutorials_topic)
## Packages required for catkin build
## If the dependent packages (message generation roscpp std_msgs) does not exist : error
find_package(catkin REQUIRED COMPONENTS message_generation roscpp std_msgs)
## Declare message : MsgTutorial.msg

add_message_files(FILES MsgTutorial.msg)
## Set the dependent message : std_msgs
generate_messages(DEPENDENCIES std_msgs)
## Options for catkin package : dependencies on the system and catkin build
catkin_package(
LIBRARIES ros_tutorials_topic
CATKIN_DEPENDS std_msgs roscpp)
## Setting the include directories
include_directories(${catkin_INCLUDE_DIRS})
## Options for the node, ‘topic_publisher’
## Settings for executable file, target link library, and additional libraries

add_executable(topic_publisher src/topic_publisher.cpp)
add_dependencies(topic_publisher ${${PROJECT_NAME}_EXPORTED_TARGETS}${catkin_EXPORTED_TARGETS})
target_link_libraries(topic_publisher ${catkin_LIBRARIES})
## Options for the node, ‘topic_subscriber’

add_executable(topic_subscriber src/topic_subscriber.cpp)
add_dependencies(topic_subscriber ${${PROJECT_NAME}_EXPORTED_TARGETS}${catkin_EXPORTED_TARGETS})
target_link_libraries(topic_subscriber ${catkin_LIBRARIES})
