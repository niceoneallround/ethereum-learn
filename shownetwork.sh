if [ "$#" -ne 1 ]
then
  echo "Usage: shownetwork enode_name"
  exit 1
fi

ENODE_NAME=$1
CONTAINER_NAME="geth-$ENODE_NAME"

echo "Enode name is $ENODE_NAME"
echo "Container Name in $CONTAINER_NAME"

echo "net.peerCount"
docker exec -ti "$CONTAINER_NAME" geth --exec 'net.peerCount' attach

echo "admin.peers"
docker exec -ti "$CONTAINER_NAME" geth --exec 'admin.peers' attach

echo "admin.nodeInfo"
docker exec -ti "$CONTAINER_NAME" geth --exec 'admin.nodeInfo' attach
