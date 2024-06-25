#!/bin/bash
set -e
containerID= `docker ps | awk -F " " '{Print $1}'`
sudo docker rm -f $containerID
