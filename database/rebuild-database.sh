#!/usr/bin/env bash
#==============================================================================
#
# Builds or rebuilds the database image and container.
#
#==============================================================================
# exit script on any error
trap 'exit' ERR

IMAGE_VERSION="1.0"
IMAGE_NAME="supercharge-db"
IMAGE_TAG="${IMAGE_NAME}:${IMAGE_VERSION}"
CONTAINER_NAME="supercharge-db"

SCRIPT_DIR=`dirname $0`;


#
# Build image.
#
docker build --no-cache --tag "${IMAGE_TAG}" "${SCRIPT_DIR}/"

#
# Remove the container (even if it is currently running).  Ignore error condition if container does not exist.
#
docker rm --force "${CONTAINER_NAME}" > /dev/null 2>&1 || true

#
# Create and start the container.
#
docker run --name "${CONTAINER_NAME}" \
           --detach \
           --restart unless-stopped \
           --publish 15435:5432 \
           --env POSTGRES_HOST_AUTH_METHOD=trust \
           "${IMAGE_TAG}"
