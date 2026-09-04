#!/bin/bash
# Auto-generated start script for flag-red72

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

echo "Starting flag-red72..."
# Run the command
$docker_cmd run -d \
    -p 8080:8080 \
    --restart always \
    --name flag-red72 \
    joshbeck2024/ctf-tomcat-mgr-war-upload-flag-red72

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-red72 started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:8080"
echo "--------------------------------------------------------"
