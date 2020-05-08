

if [ -z "${DOCKER_PORTS}" ]
	export DOCKER_PORTS='-p 8888:80 -p 2222:22 '
fi


xhost +si:localuser:root
docker run -ti  --security-opt="seccomp=unconfined" ${DOCKER_MOUNTS} ${DOCKER_OPTIONS} ${DOCKER_PORTS} -e DISPLAY=$DISPLAY  -v /tmp/.X11-unix:/tmp/.X11-unix xclion:1.0

