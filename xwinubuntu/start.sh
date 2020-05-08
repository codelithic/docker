


xhost +si:localuser:root
docker start  --security-opt="seccomp=unconfined" $1

