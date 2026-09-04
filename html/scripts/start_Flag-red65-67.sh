#!/bin/bash
# Auto-generated start script for Flag-red65-67

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

echo "Starting Flag-red65-67..."
# Run the command
$docker_cmd run -d \
    -p 9047:80 \
    --restart always \
    --name Flag-red65-67 \
    joshbeck2024/ctf-php-serialization-part-2-flag-red65

echo ""
echo "--------------------------------------------------------"
echo "✅ Flag-red65-67 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:9047"
echo "--------------------------------------------------------"
