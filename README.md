# ROS PX4 Gazebo Docker
## Use on Ubuntu:
**It is advised that you use Ubuntu 18.04 with this docker**
### Installation (only do these steps the first time you use the docker)
1. Install Docker for Ubuntu by following the instructions [here](https://docs.docker.com/engine/install/ubuntu/)
2. Pull docker
```shell
sudo docker pull ghcr.io/lu-centre-for-autonomous-systems/px4-gazebo-ros:latest
```
3. Configure Display:
```shell
xhost +local:`sudo docker inspect --format='{{ .Config.Hostname }}' ghcr.io/lu-centre-for-autonomous-systems/px4-gazebo-ros`
```
### Run the docker
```shell
sudo docker run -it --privileged --network host -e DISPLAY=$DISPLAY -e SIM_MODEL=iris -e SIM_WORLD=baylands -v /tmp/.X11-unix:/tmp/.X11-unix ghcr.io/lu-centre-for-autonomous-systems/px4-gazebo-ros ./px4_launch.sh
```
