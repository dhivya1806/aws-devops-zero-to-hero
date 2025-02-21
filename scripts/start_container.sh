#!/bin/bash
set -e

containerID=`sudo docker ps | awk -F " " '{print $1}'`
docker rm -f $containerID

# Pull the Docker image from Docker Hub
sudo docker pull dhivya1806/code-build-pythondemo:latest

# Run the Docker image as a container
sudo docker run -d -p 5000:5000 dhivya1806/code-build-pythondemo
