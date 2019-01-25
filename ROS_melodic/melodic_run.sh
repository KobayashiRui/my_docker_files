#! /bin/bash
docker run -it --env="DISPLAY" --env="QT_X11_NO_MITSHM=1" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" -v /home/kr/git/ROS_practice/ROS_data:/ros_ws/src/meta_git_pkg  melodic 
