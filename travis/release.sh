
#!/usr/bin/env bash

set -euov pipefail

source travis/libs/variables.sh

docker pull "${DOCKER_IMAGE}:${DOCKER_TAG}"

docker tag "${DOCKER_IMAGE}:${DOCKER_TAG}" ${DOCKER_LATEST}

echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USERNAME}" --password-stdin

docker push ${DOCKER_LATEST}



