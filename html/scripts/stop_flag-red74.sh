#!/bin/bash
# Auto-generated stop script for flag-red74

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-red74..."
$docker_cmd stop flag-red74
$docker_cmd rm flag-red74
echo "✅ flag-red74 stopped and removed."
