FROM osrf/ros:melodic-desktop-full

####nvidia-docer2 setting####
ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

####install ROS options####
RUN apt update
RUN apt install -y ros-melodic-ros-control 
RUN apt install -y ros-melodic-ros-controllers
RUN apt install -y ros-melodic-moveit
RUN apt install -y ros-melodic-usb-cam
RUN apt install -y ros-melodic-rosserial-arduino
RUN apt install -y ros-melodic-rosserial
####install my vim env#####
RUN apt install -y vim-gnome
RUN mkdir -p /root/git
WORKDIR /root/git
RUN git clone https://github.com/KobayashiRui/vim.git
WORKDIR vim
RUN sh install.sh
RUN cp .vimrc /root/
RUN cp -r .TOML /root/
####make workspace#####
#RUN source /opt/ros/melodic/setup.bash
RUN mkdir -p /root/ros_ws/src
#RUN cd /ros_ws/src
#RUN /bin/bash -c 'catkin_init_workspace'
RUN ["/bin/bash", "-c", ". /opt/ros/melodic/setup.bash; catkin_init_workspace /root/ros_ws/src"]
