#! /bin/bash
docker run -it \
    --runtime=nvidia \
    -p 5901:5901 \
    ros2:dashing \
    bash
