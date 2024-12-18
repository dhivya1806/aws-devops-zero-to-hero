#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull dhivya1806/code-build-pythondemo:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 dhivya1806/code-build-pythondemo
