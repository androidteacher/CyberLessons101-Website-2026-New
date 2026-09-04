#!/bin/bash
# Auto-generated start script for flag-red29

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

echo "Starting flag-red29..."
# Run the command
$docker_cmd run -d \
    -p 9041:80 \
    --restart always \
    --name flag-red29 \
    joshbeck2024/ctf-advanced-sql-injection-training-flag-red29

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-red29 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9041"
echo "--------------------------------------------------------"
