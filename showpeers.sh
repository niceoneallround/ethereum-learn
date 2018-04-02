#!/bin/sh

if [ "$#" -ne 1 ]
then
  echo "Usage: showpeers enode_name"
  exit 1
fi

ENODE_NAME=$1
CONTAINER_NAME="geth-$ENODE_NAME"

echo "Enode name is $ENODE_NAME"
echo "Container Name in $CONTAINER_NAME"

docker exec -ti "$CONTAINER_NAME" geth --exec 'admin.peers' attach
