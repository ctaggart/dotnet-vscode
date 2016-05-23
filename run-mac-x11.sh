#!/bin/sh
# run image using Docker for Mac and XQuartz
open -a XQuartz
xhost +
ip=`ifconfig en0 | grep inet | awk '$1=="inet" {print $2}'`
docker run --rm -it \
    --name dotnet-vscode \
    -e DISPLAY=$ip:0 \
    --security-opt seccomp=unconfined \
    --net=host \
    ctaggart/dotnet-vscode