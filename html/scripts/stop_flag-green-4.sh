#!/bin/bash
# Auto-generated stop script for flag-green-4

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing green-4..."
$docker_cmd stop green-4
$docker_cmd rm green-4
echo "✅ green-4 stopped and removed."
