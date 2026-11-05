#!/bin/bash
# Auto-generated stop script for flag-green-9

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing siem-traversal..."
$docker_cmd stop siem-traversal
$docker_cmd rm siem-traversal
echo "✅ siem-traversal stopped and removed."
