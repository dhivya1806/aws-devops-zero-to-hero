#!/bin/bash
set -e

# Stop the running container (if any)
containerID= `docker ps | awk -F " " '{print $1}'`
sudo docker rm -f $containerID
