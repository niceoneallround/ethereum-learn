#!/bin/bash

# Initialize the nodes chain data using the genesis file

if [ "$#" -ne 1 ]
then
  echo "Usage: initnode enode_name"
  exit 1
fi

ENODE_NAME=$1
CHAINDATA_ROOT="$(pwd)/$ENODE_NAME-data"
CODE_ROOT="$(pwd)/ethereum-tools"

echo "Enode name is $ENODE_NAME"
echo "Code root in $CODE_ROOT"
echo "Chain Data in $CHAINDATA_ROOT"

if [ ! -f $CODE_ROOT/files/genesis.json ]; then
    echo "No files/genesis.json file in ${CODE_ROOT} found Aborting."
    exit
fi

if [ -f $CHAINDATA_ROOT/geth ]; then
    echo "Found $CHAINDATA_ROOT/geth so looks like init has already been run found so Aborting."
    exit
fi

docker run --rm \
  -v $CHAINDATA_ROOT:/root/.ethereum \
  -v $CODE_ROOT/files/genesis.json:/opt/genesis.json \
  ethereum/client-go init /opt/genesis.json --datadir /root/.ethereum
