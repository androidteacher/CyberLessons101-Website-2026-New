#!/bin/bash
# Auto-generated stop script for Flag-red65-67

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing Flag-red65-67..."
$docker_cmd stop Flag-red65-67
$docker_cmd rm Flag-red65-67
echo "✅ Flag-red65-67 stopped and removed."
