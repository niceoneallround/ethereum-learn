#!/bin/bash

# Run an ethereum geth node - the node is also a miner

if [ "$#" -ne 2 ]
then
  echo "Usage: runnode enode_name etherbase"
  exit 1
fi

ENODE_NAME=$1
ETHERBASE=$2
CHAINDATA_ROOT="$(pwd)/$ENODE_NAME-data"
CODE_ROOT="$(pwd)/ethereum-tools"
CONTAINER_NAME="geth-$ENODE_NAME"

echo "Enode name is $ENODE_NAME"
echo "Code root in $CODE_ROOT"
echo "Chain Data in $CHAINDATA_ROOT"
echo "Container Name in $CONTAINER_NAME"
echo "Etherbase is $ETHERBASE"

echo "Stop and remove old container $CONTAINER_NAME..."
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME


# QUESTIIONS
# docker flag   --network ethereum
#   --etherbase 0x0188e5f8142202bd3b422dfca7fe02ebe7a93d81 \


docker run \
  -v $CHAINDATA_ROOT:/root/.ethereum \
  -p 8545:8545 -p 30303:30303 \
  ethereum/client-go --datadir /root/.ethereum \
  --networkid 2061 \
  --port 30303 \
  --nodiscover \
  --rpc \
  --rpcaddr 0.0.0.0 \
  --rpcport 8505 \
  --mine --minerthreads 1 --gasprice "10000" \
  --etherbase $ETHERBASE
  --verbosity 3
