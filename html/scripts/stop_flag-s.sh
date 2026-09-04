#!/bin/bash
# Auto-generated stop script for flag-s

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-s..."
$docker_cmd stop flag-s
$docker_cmd rm flag-s
echo "✅ flag-s stopped and removed."
