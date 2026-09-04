#!/bin/bash
# Auto-generated stop script for flag-red6

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-red6..."
$docker_cmd stop flag-red6
$docker_cmd rm flag-red6
echo "✅ flag-red6 stopped and removed."
