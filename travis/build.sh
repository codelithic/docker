#!/usr/bin/env bash

set -euov pipefail

source travis/libs/variables.sh

export SSH_KEY="${SSH_KEY_PUBLIC}"

sudo docker build --rm -t "${DOCKER_IMAGE}:${DOCKER_TAG}" -f ubuntu/Dockerfile  .  --build-arg  pkey="${SSH_KEY}"  --build-arg user=mrdev  --build-arg bindpath=mct

echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USERNAME}" --password-stdin

docker push "${DOCKER_IMAGE}:${DOCKER_TAG}"

