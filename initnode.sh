#!/bin/bash

# Initialize the nodes chain data using the genesis file

ENODE_NAME=$1
CHAINDATA_ROOT=${CHAINDATA_ROOT:-"$(pwd)/ethereum-$ENODE_NAME"}
CODE_ROOT=${CODE_ROOT:-"$(pwd)/ethereum-tools"}

echo "Enode Name is $ENODE_NAME"
echo "Code root in $CODE_ROOT"
echo "Chain Data in $CHAINDATA_ROOT"

if [ ! -f $CODE_ROOT/files/genesis.json ]; then
    echo "No files/genesis.json file in ${CODE_ROOT} found Aborting."
    exit
fi

docker run --rm \
  -v $CHAINDATA_ROOT:/root/.ethereum \
  -v $CODE_ROOT/files/genesis.json:/opt/genesis.json \
  ethereum/client-go init /opt/genesis.json --datadir /root/.ethereumpwd
