#! /bin/bash
xhost +

docker run -it \
    --env="DISPLAY" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix" \
    --device=/dev/dri:/dev/dri \
    --privileged \
    -v /home/kr/git/ROS_practice/ROS_data/:/ros_ws/src \
    ros_melodic \
    bash
