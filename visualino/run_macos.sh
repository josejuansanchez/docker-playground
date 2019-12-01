#!/bin/bash

# Allow access from localhost
xhost + 127.0.0.1

docker run -it --rm -e DISPLAY=host.docker.internal:0 \
-v "$(pwd)/sketchs:/sketchs" visualino