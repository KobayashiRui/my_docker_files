FROM osrf/ros:melodic-desktop-full

RUN apt update

####install messa libraries####
RUN apt -y install libgl1-mesa-glx
RUN apt -y install libgl1-mesa-dri
RUN rm -rf /var/lib/apt/lists/*

####install ROS options####
RUN apt -y install ros-melodic-ros-control 
RUN apt -y install ros-melodic-ros-controllers
RUN apt -y install ros-melodic-moveit
RUN apt -y install ros-melodic-usb-cam
RUN apt -y install ros-melodic-rosserial-arduino
RUN apt -y install ros-melodic-rosserial
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