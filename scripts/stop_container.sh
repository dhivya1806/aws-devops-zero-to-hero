#!/bin/bash

# Function to check if a container is running and delete it
delete_running_container() {
    container_id=$(sudo docker ps -q --filter "name=$1")
    
    if [ -z "$container_id" ]; then
        echo "Container with name '$1' is not running or does not exist."
    else
        sudo docker stop $container_id 
        echo "Stopping container $container_id..."
        sudo docker rm $container_id 
        echo "Container $container_id deleted."
    fi
}

# Check if argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <container_name>"
    exit 1
fi

# Call function to delete the container
delete_running_container $1



