#! /bin/bash

docker run --runtime=nvidia -e NVIDIA_VISIBLE_DEVICES=0 -it  -v $(pwd):/workspace pytorch 
