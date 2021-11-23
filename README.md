# ROS PX4 Gazebo Docker
## Run on Linux:
Install Docker for Linux
Configure Display
```shell
xhost +local:`sudo docker inspect --format='{{ .Config.Hostname }}' ewanpugh/px4-gazebo-ros`
```
Run docker
```shell
sudo docker run -it --privileged --network host -e DISPLAY=$DISPLAY -e SIM_MODEL=iris -e SIM_WORLD=baylands -v /tmp/.X11-unix:/tmp/.X11-unix ewanpugh/px4-gazebo-ros ./px4_launch.sh
```
