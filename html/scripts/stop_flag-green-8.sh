#!/bin/bash
# Auto-generated stop script for flag-green-8

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing intergalactic-ctf..."
$docker_cmd stop intergalactic-ctf
$docker_cmd rm intergalactic-ctf
echo "✅ intergalactic-ctf stopped and removed."
