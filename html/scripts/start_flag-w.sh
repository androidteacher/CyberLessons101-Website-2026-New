#!/bin/bash
# Auto-generated start script for flag-w

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

echo "Starting flag-w..."
# Run the command
$docker_cmd run -d \
    -p 9039:80 \
    --restart always \
    --name flag-w \
    joshbeck2024/ctf-wordpress-wpspritz-rfi-flagw

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-w started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9039"
echo "--------------------------------------------------------"
