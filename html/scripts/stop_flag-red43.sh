#!/bin/bash
# Auto-generated stop script for flag-red43

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-red43..."
$docker_cmd stop flag-red43
$docker_cmd rm flag-red43
echo "✅ flag-red43 stopped and removed."
