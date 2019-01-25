FROM osrf/ros:melodic-desktop-full

#nvidia-docer2 setting
ENV NVIDIA_VISIBLE_DEVICES \
    ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES \
    ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

#RUN source /opt/ros/melodic/setup.bash
RUN mkdir -p /ros_ws/src
#RUN cd /ros_ws/src
#RUN /bin/bash -c 'catkin_init_workspace'
RUN ["/bin/bash", "-c", ". /opt/ros/melodic/setup.bash; catkin_init_workspace /ros_ws/src"]
RUN mkdir /ros_ws/src/meta_git_pkg
