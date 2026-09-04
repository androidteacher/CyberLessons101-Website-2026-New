#!/bin/bash
# Auto-generated stop script for wireshark-login

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing wireshark-login..."
$docker_cmd stop wireshark-login
$docker_cmd rm wireshark-login
echo "✅ wireshark-login stopped and removed."
