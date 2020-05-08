
echo "mount point?"
read mp

echo "docker options?"
read options


xhost +si:localuser:root
docker run -ti  --security-opt="seccomp=unconfined" ${mo} ${options} -e DISPLAY=$DISPLAY -p 8888:80 -p 2222:22  -v /tmp/.X11-unix:/tmp/.X11-unix xclion:1.0

