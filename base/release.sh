#!/usr/bin/env bash

set -eu
set -o pipefail

RELEASE="$1"

IMAGE="nexi/kde-vnc:latest"

docker build -t "$IMAGE" . -f $RELEASE

if [[ $# -gt 1 ]]
then
  docker push "$IMAGE"
fi
