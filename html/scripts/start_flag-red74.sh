#!/bin/bash
# Auto-generated start script for flag-red74

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

echo "Starting flag-red74..."
# Run the command
$docker_cmd run -d \
    -p 10005 \
    --restart always \
    --name flag-red74 \
    github:androidteacher/CVE-2025-64424-Coolify-

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-red74 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:10005"
echo "--------------------------------------------------------"
