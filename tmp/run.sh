

xhost +si:localuser:root

docker run -ti  --security-opt="seccomp=unconfined"  -e DISPLAY=$DISPLAY -p 8888:80 -p 2222:22  -v /tmp/.X11-unix:/tmp/.X11-unix xbase:1.0

