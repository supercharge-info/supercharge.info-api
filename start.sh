#!/bin/bash
#=================================================================================================
#
# Load docker image with war file
#
#=================================================================================================
# exit script on any error
trap 'docker network disconnect supercharge-net supercharge-db;docker network rm supercharge-net;' ERR

IMAGE_VERSION="1.0"
IMAGE_NAME="supercharge-api"
IMAGE_TAG="${IMAGE_NAME}:${IMAGE_VERSION}"
CONTAINER_NAME="supercharge-api"

SCRIPT_DIR=`dirname $0`;
DB_NAME="supercharge-db"
DB_HOST="$DB_NAME:5432"

#
# Network setup
#
docker network create supercharge-net
RESP=`docker network connect supercharge-net $DB_NAME`
if [[ $RESP == *"No such container"* ]]; then
    echo $RESP
    echo "Please create container from database folder first"
    exit
fi

RESP=`docker ps`
if [[ $RESP != *$DB_NAME* ]]; then
    echo "Starting $DB_NAME..."
    docker start $DB_NAME
fi

#
# Build image
#
docker build --tag $IMAGE_TAG "$SCRIPT_DIR/"

#
# Create and start the container
#
docker run --name $CONTAINER_NAME \
           --detach \
           --env "JAVA_OPTS=-Ddb.url=jdbc:postgresql://$DB_HOST/postgres" \
           --rm \
           --network supercharge-net \
           --publish 8080:8080 \
           "$IMAGE_TAG"
