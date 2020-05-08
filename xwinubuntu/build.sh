THEUSER=mrdev
#cat entrypoint.sh.tpl |  sed -e "s@#USER#@${THEUSER}@g > entrypoint.sh
docker build --rm --build-arg user=${THEUSER} -t xclion:1.0 . 



