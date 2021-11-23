FROM osrf/ros:melodic-desktop-full-bionic

WORKDIR /usr/src/px4_gazebo_docker

COPY . .

SHELL ["/bin/bash", "-c"]

RUN ./install_everything.sh

# CMD ./px4_launch.sh

# USER MUST RUN DOCKERFILE WITH --network host ARGUMENT!
