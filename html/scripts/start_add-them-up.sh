#!/bin/bash
# Auto-generated start script for add-them-up

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

echo "Starting add-them-up..."
# Run the command
$docker_cmd run -d \
    -p 80:80 -p 1337:1337 \
    --restart always \
    --name add-them-up \
    joshbeck2024/python_digit_challenge:latest

echo ""
echo "--------------------------------------------------------"
echo "✅ add-them-up started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:80"
echo "--------------------------------------------------------"
