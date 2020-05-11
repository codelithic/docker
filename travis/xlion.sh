
#!/usr/bin/env bash

set -euov pipefail

source travis/libs/variables.sh

THEUSER=mrdev
docker build --rm --build-arg user=${THEUSER} -t ${DOCKER_REPOSITORY}/xclion:1.0  -f xwinubuntu/Dockerfile . 

echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USERNAME}" --password-stdin

docker tag "${DOCKER_REPOSITORY}/xclion:1.0" "${DOCKER_REPOSITORY}/xclion:latest"

docker push "${DOCKER_REPOSITORY}/xclion:latest"

