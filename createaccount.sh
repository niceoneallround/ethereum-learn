#!/bin/bash

# Initialize the nodes chain data using the genesis file

if [ "$#" -ne 1 ]
then
  echo "Usage: createaccount enode_name"
  exit 1
fi

ENODE_NAME=$1
CHAINDATA_ROOT="$(pwd)/$ENODE_NAME-data"
CODE_ROOT="$(pwd)/ethereum-tools"

echo "Enode name is $ENODE_NAME"
echo "Code root in $CODE_ROOT"
echo "Chain Data in $CHAINDATA_ROOT"

docker run --rm -i \
  -v $CHAINDATA_ROOT:/root/.ethereum \
  ethereum/client-go --datadir /root/.ethereum account new
