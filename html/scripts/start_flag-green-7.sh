#!/bin/bash
# Auto-generated start script for flag-green-7

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

echo "Starting flag-green-7..."
# Run the command
$docker_cmd run -d \
    --name green-7 \
    -p 2222:22 \
    -p 8080:80 \
    joshbeck2024/ctf-powershell-flag-green-7

echo ""
echo "--------------------------------------------------------"
echo "✅ flag-green-7 started successfully!"
echo "--------------------------------------------------------"
echo "Connect (PowerShell 7+):  Enter-PSSession -HostName localhost -Port 2222 -UserName ctfuser"
echo "Credentials:              ctfuser / ctfuser"
echo "In-container walkthrough: http://localhost:8080"
echo "--------------------------------------------------------"
