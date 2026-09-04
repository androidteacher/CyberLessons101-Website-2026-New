#!/bin/bash
# Auto-generated start script for flag-red63

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

echo "Starting flag-red63..."
# Run the command
$docker_cmd run -d \
    -p 9043:80 \
    --restart always \
    --name flag-red63 \
    joshbeck2024/ctf-cve-2024-50498-wpquery-flag-red63

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-red63 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9043"
echo "--------------------------------------------------------"
