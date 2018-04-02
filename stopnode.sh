#!/bin/bash

if [ "$#" -ne 1 ]
then
  echo "Usage: stopnode enode_name"
  exit 1
fi

ENODE_NAME=$1
CONTAINER_NAME="geth-$ENODE_NAME"

echo "Enode name is $ENODE_NAME"
echo "Container Name in $CONTAINER_NAME"

echo "Stopping and removing old container $CONTAINER_NAME..."
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
