#!/bin/bash

# Allow access from localhost
xhost + 127.0.0.1

docker run --rm -it -e DISPLAY=host.docker.internal:0 \
-v "$(pwd)/sql:/sql" mysql-workbench