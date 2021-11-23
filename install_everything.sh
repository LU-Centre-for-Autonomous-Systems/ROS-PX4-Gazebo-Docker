chmod +x px4_launch.sh &&
apt-get update &&
apt-get install -y wget &&
echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list &&
wget https://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add - &&
apt-get update &&
apt-get upgrade -y libignition-math2 &&
apt-get install -y gazebo9 &&
apt-get install -y ros-melodic-mavros ros-melodic-mavros-extras &&
wget https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh &&
bash ./install_geographiclib_datasets.sh &&
git clone https://github.com/PX4/PX4-Autopilot.git --recursive &&
cd PX4-Autopilot &&
source /opt/ros/melodic/setup.bash &&
bash ./Tools/setup/ubuntu.sh --no-nuttx &&
DONT_RUN=1 make px4_sitl_default gazebo 


