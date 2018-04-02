#!/bin/bash

# Initialize the nodes chain data using the genesis file

ENODE_NAME=$1
DATA_ROOT=${CHAINDATA_ROOT:-"$(pwd)/data-$ENODE_NAME"}

echo "Chain Data in $CHAINDATA_ROOT"

docker run -rm \
  -v $CHAINDATA_ROOT:/root/.ethereum \
  -v $(pwd)/files/genesis.json:/opt/genesis.json \
  ethereum/client-go init /opt/genesis.json --datadir /root/.ethereum -verbosity 5
