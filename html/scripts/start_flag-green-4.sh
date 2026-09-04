#!/bin/bash
# Auto-generated start script for flag-green-4

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

echo "Starting flag-green-4..."
# Run the command
$docker_cmd run -d \
    --name green-4 \
    -p 8888:22 \
    joshbeck2024/ctf-suid-challenge-flag-green-4

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-green-4 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: ssh -p 8888 <user>@localhost"
echo "--------------------------------------------------------"
