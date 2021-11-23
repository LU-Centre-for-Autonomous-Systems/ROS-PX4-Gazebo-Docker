Run on Linux:
xhost +local:`sudo docker inspect --format='{{ .Config.Hostname }}' ewanpugh/px4-gazebo-ros`
sudo docker run -it --privileged --network host -e DISPLAY=$DISPLAY -e SIM_MODEL=iris -e SIM_WORLD=baylands -v /tmp/.X11-unix:/tmp/.X11-unix ewanpugh/px4-gazebo-ros ./px4_launch.sh

