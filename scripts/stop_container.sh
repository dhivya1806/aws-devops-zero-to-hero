#!/bin/bash
set -e
sudo docker rmi `sudo docker image ls | egrep "^mailcow/" | awk '{print$3}'`

