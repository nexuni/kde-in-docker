#!/usr/bin/env bash

set -eu
set -o pipefail

# RELEASE="$1"

IMAGE="nexi/kde-vnc:galactic"

docker build -t "$IMAGE" . -f "focal/Dockerfile"

if [[ $# -gt 1 ]]
then
  docker push "$IMAGE"
fi
