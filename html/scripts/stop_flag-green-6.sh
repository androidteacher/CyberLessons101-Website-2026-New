#!/bin/bash
# Auto-generated stop script for flag-green-6

docker_cmd="docker"
if ! docker ps >/dev/null 2>&1; then
    if sudo docker ps >/dev/null 2>&1; then
        docker_cmd="sudo docker"
    fi
fi

echo "Stopping and removing ctf-ocr..."
$docker_cmd stop ctf-ocr
$docker_cmd rm ctf-ocr
echo "✅ ctf-ocr stopped and removed."
