#!/usr/bin/env bash

set -euov pipefail

source travis/libs/variables.sh

export SSH_KEY='ssh-rsa AAAAB3NzaC1yc2EAAAACABEAAACBALJ0Vw927ajlsqoX3CLDNF81Ck4bZm4BSmtrfvKdMe42BeGVy/SilEeG5cAYzHtfN0Hsgxi00JN7wxP5SZnmF+p5T0+o2Zeu4bgLVc718kXNU2hJaAFV06QkNM9z7TFFa7PNpleTGBV6EQPfxjjgjdCGKw+kpv2ROe1hI8xHzwKz'

sudo docker build --rm -t "${DOCKER_IMAGE}:${DOCKER_TAG}" -f ubuntu/Dockerfile  .  --build-arg  pkey="${SSH_KEY}"  --build-arg user=mrdev  --build-arg bindpath=mct

echo "${DOCKER_PASSWORD}" | docker login -u "${DOCKER_USERNAME}" --password-stdin

docker push "${DOCKER_IMAGE}:${DOCKER_TAG}"

