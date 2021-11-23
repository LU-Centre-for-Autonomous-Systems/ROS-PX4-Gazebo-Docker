FROM osrf/ros:melodic-desktop-full-bionic

WORKDIR /usr/src/px4_gazebo_docker

COPY . .

SHELL ["/bin/bash", "-c"]

RUN ./install_everything.sh

LABEL org.opencontainers.image.source="https://github.com/ewan-pugh/ROS-PX4-Gazebo-Docker"

# USER MUST RUN DOCKERFILE WITH --network host ARGUMENT!
