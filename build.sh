#!/usr/bin/env bash

docker build -t firefox -f ./DockerFile .
container=$(docker container create firefox)
echo "$container"
docker cp "$container":/firefox/firefox.snap .
echo "To install the snap run 'sudo snap install firefox.snap --dangerous --jailmode'"
