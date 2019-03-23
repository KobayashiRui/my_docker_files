FROM ros:melodic
RUN apt update
RUN apt install -y ros-melodic-usb-cam
RUN apt install -y ros-melodic-rosserial-arduino
RUN apt install -y ros-melodic-rosserial
RUN apt install -y libopencv-dev
RUN apt install -y python-opencv
RUN apt install -y ros-melodic-cv-bridge
RUN apt install -y ros-melodic-vision-opencv
WORKDIR /root
RUN mkdir -p /root/ros_ws/src
RUN ["/bin/bash", "-c",". /opt/ros/melodic/setup.bash; catkin_init_workspace /root/ros_ws/src"] 
