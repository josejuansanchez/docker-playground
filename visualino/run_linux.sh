#!/bin/bash
set -x

xhost +local:root

docker run -it --rm -e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v "$(pwd)/sketchs:/sketchs" \
 visualino