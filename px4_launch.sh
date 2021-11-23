#! /bin/bash
source /opt/ros/melodic/setup.bash
cd PX4-Autopilot
DONT_RUN=1 make px4_sitl_default gazebo
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/px4_sitl_default
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Tools/sitl_gazebo

vehicle_path="$(pwd)/Tools/sitl_gazebo/models/$SIM_MODEL/$SIM_MODEL.sdf"
world_path="$(pwd)/Tools/sitl_gazebo/worlds/$SIM_WORLD.world"

roslaunch px4 mavros_posix_sitl.launch sdf:=$vehicle_path world:=$world_path
