#!/bin/bash
# Auto-generated stop script for flag-red62

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing flag-red62..."
$docker_cmd stop flag-red62
$docker_cmd rm flag-red62
echo "✅ flag-red62 stopped and removed."
