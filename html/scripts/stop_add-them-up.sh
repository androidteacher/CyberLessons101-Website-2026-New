#!/bin/bash
# Auto-generated stop script for add-them-up

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing add-them-up..."
$docker_cmd stop add-them-up
$docker_cmd rm add-them-up
echo "✅ add-them-up stopped and removed."
