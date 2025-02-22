#!/bin/bash

CONTAINER_ID=$(docker ps -q | head -n 1)

if [ -n "$CONTAINER_ID" ]; then
    echo "Stopping container: $CONTAINER_ID"
    docker stop "$CONTAINER_ID"
else
    echo "No running containers found."
fi



