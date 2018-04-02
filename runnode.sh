#!/bin/bash

# Run an ethereum geth node - the node is also a miner

ENODE_NAME=$1
CHAINDATA_ROOT="$(pwd)/$ENODE_NAME-data"
CODE_ROOT="$(pwd)/ethereum-tools"
CONTAINER_NAME="geth-$ENODE_NAME"

echo "Enode name is $ENODE_NAME"
echo "Code root in $CODE_ROOT"
echo "Chain Data in $CHAINDATA_ROOT"
echo "Container Name in $CONTAINER_NAME"

echo "Stop and remove old container $CONTAINER_NAME..."
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME


# QUESTIIONS
# docker flag   --network ethereum
#   --etherbase 0xf628e41f3ca68341e9857102d4b3040aa418d763 \


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
  --verbosity 3
