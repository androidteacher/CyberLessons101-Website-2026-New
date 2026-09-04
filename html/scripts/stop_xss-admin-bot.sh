#!/bin/bash
# Auto-generated stop script for xss-admin-bot

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing xss-admin-bot..."
$docker_cmd stop xss-admin-bot
$docker_cmd rm xss-admin-bot
echo "✅ xss-admin-bot stopped and removed."
