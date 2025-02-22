#!/bin/bash
set -e


# Pull the Docker image from Docker Hub
sudo docker pull dhivya1806/simple-python-flask-app-demo:latest

# Run the Docker image as a container
sudo docker run -d -p 5000:5000 dhivya1806/simple-python-flask-app-demo
