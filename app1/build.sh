#!/bin/bash

CONTAINER_NAME=app1-build-container
WORKING_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Creating build image..."
$WORKING_DIR/misc/createImage.sh
if (( $? != 0 ))
then
  echo "Failed to create build image!"
  exit $?
fi

cd ..

IMAGE_ID=$(docker images -q | head -n 1)
echo "Image ID: $IMAGE_ID"

echo "Running build container..."
docker run -it --name $CONTAINER_NAME $IMAGE_ID

CONTAINER_ID=$(docker container ls -aq --filter name=$CONTAINER_NAME)
echo "Container ID: $CONTAINER_ID"

docker cp $CONTAINER_ID:/app1/bin/debug $WORKING_DIR/bin

docker rm $CONTAINER_ID

