#!/bin/sh
export TURTLEBOT_GAZEBO_WORLD_FILE="$(rospack find world)/project1_world.world"
export TURTLEBOT_GAZEBO_MAP_FILE="$(rospack find world)/map2.yaml"
xterm -e "roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 5
xterm -e "roslaunch turtlebot_gazebo amcl_demo.launch" &
sleep 5
xterm -e "roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5
xterm -e "rosrun add_markers virtual" &