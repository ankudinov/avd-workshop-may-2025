#!/usr/bin/env bash

set +e

if [ "$(command -v podman)" ]; then
    CONTAINER_ENGINE="podman"
elif [ "$(command -v docker)" ]; then
    CONTAINER_ENGINE="docker"
else
    echo "ERROR: Failed to find container engine. Please install docker or podman." >&2
    exit 1
fi

${CONTAINER_ENGINE} run --detach --name marp -v $(pwd)/slides:/home/marp/app/ -p 8080:8080 ghcr.io/marp-team/marp-cli:v4.1.2 --html --server .
