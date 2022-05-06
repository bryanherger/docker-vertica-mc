#!/bin/bash
docker build -f Dockerfile.centos -t bryanherger/verticamc:latest .
docker container rm verticamc
docker create --name verticamc -it -p 35450:5450 -p 30022:22 --mount type=bind,source=/home/bryan/github/docker-vertica-mc/opt,target=/opt -e RUN_BASH=true bryanherger/verticamc:latest
echo Starting...
docker start -i verticamc
echo ...Restarting...
docker start -i verticamc
docker container rm verticamc
