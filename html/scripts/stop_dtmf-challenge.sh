#!/bin/bash
# Auto-generated stop script for dtmf-challenge

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing dtmf-challenge..."
$docker_cmd stop dtmf-challenge
$docker_cmd rm dtmf-challenge
echo "✅ dtmf-challenge stopped and removed."
