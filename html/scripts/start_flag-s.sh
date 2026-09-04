#!/bin/bash
# Auto-generated start script for flag-s

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

echo "Starting flag-s..."
# Run the command
$docker_cmd run -d \
    -p 9040:80 \
    --restart always \
    --name flag-s \
    joshbeck2024/ctf-phpmyadmin-cve-2018-12613-flag-s

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-s started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9040"
echo "--------------------------------------------------------"
