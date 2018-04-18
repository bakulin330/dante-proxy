#!/bin/bash
source ./config.sh

docker build --force-rm -f Dockerfile -t $TAG .