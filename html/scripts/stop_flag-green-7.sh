#!/bin/bash
# Auto-generated stop script for flag-green-7

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing green-7..."
$docker_cmd stop green-7
$docker_cmd rm green-7
echo "✅ green-7 stopped and removed."
