#!/bin/bash
# Auto-generated stop script for prototype-pollution

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing prototype-pollution..."
$docker_cmd stop prototype-pollution
$docker_cmd rm prototype-pollution
echo "✅ prototype-pollution stopped and removed."
