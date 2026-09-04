#!/bin/bash
# Auto-generated stop script for flag-w

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-w..."
$docker_cmd stop flag-w
$docker_cmd rm flag-w
echo "✅ flag-w stopped and removed."
