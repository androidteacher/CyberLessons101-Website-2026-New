#!/bin/bash
# Auto-generated start script for wireshark-login

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

echo "Starting wireshark-login..."
# Run the command
$docker_cmd run -d \
    -p 3222:5000 \
    --restart always \
    --name wireshark-login \
    joshbeck2024/ctf-wireshark-login

echo ""
echo "--------------------------------------------------------"
echo "✅ wireshark-login started successfully!"
echo "--------------------------------------------------------"
echo "You can access it at: http://localhost:3222"
echo "--------------------------------------------------------"
