#!/bin/sh

if [ "$#" -ne 1 ]
then
  echo "Usage: showaccounts enode_name"
  exit 1
fi

ENODE_NAME=$1
CONTAINER_NAME="geth-$ENODE_NAME"

echo "Enode name is $ENODE_NAME"
echo "Container Name in $CONTAINER_NAME"

echo "eth.accounts"
docker exec -ti "$CONTAINER_NAME" geth --exec 'eth.accounts' attach

echo "eth.coinbase"
docker exec -ti "$CONTAINER_NAME" geth --exec 'eth.coinbase' attach

echo "eth.coinbase Ether"
docker exec -ti "$CONTAINER_NAME" geth --exec 'web3.fromWei(eth.getBalance(eth.coinbase),"ether")' attach
