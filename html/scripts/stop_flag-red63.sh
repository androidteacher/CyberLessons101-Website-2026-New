#!/bin/bash
# Auto-generated stop script for flag-red63

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-red63..."
$docker_cmd stop flag-red63
$docker_cmd rm flag-red63
echo "✅ flag-red63 stopped and removed."
