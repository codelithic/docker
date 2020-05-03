#!/usr/bin/env bash


export DOCKER_REPOSITORY="codelithic"

export NULL='none'
export TRAVIS_BRANCH="${TRAVIS_BRANCH:-develop}"
export TRAVIS_BUILD_NUMBER="${TRAVIS_BUILD_NUMBER:-0}"


export DOCKER_NAME='environment';
export DOCKER_IMAGE="${DOCKER_REPOSITORY}/${DOCKER_NAME}_${TRAVIS_BRANCH}"
export DOCKER_TAG="${TRAVIS_BUILD_NUMBER}"


export DOCKER_LATEST="${DOCKER_REPOSITORY}/${DOCKER_NAME}:latest"
