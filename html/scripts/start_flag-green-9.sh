#!/bin/bash
# Auto-generated start script for flag-green-9

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

echo "Starting flag-green-9..."
# Run the command
$docker_cmd run -d \
    --name siem-traversal \
    --pull=always \
    -p 12334:8080 \
    joshbeck2024/siem-traversal-flag-green-9:latest

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-green-9 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:12334"
echo "--------------------------------------------------------"
