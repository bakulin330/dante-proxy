#!/bin/bash
DIR_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source ./config.sh

docker stop $NAME
docker rm $NAME

docker run -d \
    -p 1080:1080 \
    --name $NAME \
    $TAG