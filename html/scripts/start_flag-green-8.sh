#!/bin/bash
# Auto-generated start script for flag-green-8

# Function to check if docker command needs sudo
docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    else
        echo "Error: Docker is not running or you don't have permissions."
        echo "Please ensure Docker is installed and running."
        exit 1
    fi
fi

echo "Starting flag-green-8..."
# Run the command
$docker_cmd run -d \
    -p 21111:80 \
    --restart always \
    --name intergalactic-ctf \
    joshbeck2024/intergalactic-ctf-challenge-green-8

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-green-8 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:21111"
echo "--------------------------------------------------------"
