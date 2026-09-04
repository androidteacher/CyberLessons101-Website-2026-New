#!/bin/bash
# Auto-generated stop script for flag-red18

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-red18..."
$docker_cmd stop flag-red18
$docker_cmd rm flag-red18
echo "✅ flag-red18 stopped and removed."
