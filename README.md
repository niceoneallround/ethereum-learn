# Overview
Contains a set of tools that can be used to setup an Ethereum Network

#FIXMEs
 - Generate genesis.com

```
  # Initialize a node
  bash ethereum-tools/initnode.sh enode1

  # create an account
  bash ethereum-tools/createaccount.sh enode1

  # run node node_name etherbase_account
  bash ethereum-tools/runnode.sh enode1 "0xa8341698f294a25c92503156767d746775594ca6"

  # stop node
  bash ethereum-tools/stopnode.sh enode1

  # show accounts
  bash ethereum-tools/showaccounts.sh enode1
```


Running   bash ethereum-tools/createaccount.sh enode1
```
bash ethereum-tools/createaccount.sh enode1
Enode name is enode1
Code root in /home/ec2-user/ethereum-tools
Chain Data in /home/ec2-user/enode1-data
INFO [04-02|18:54:13] Maximum peer count                       ETH=25 LES=0 total=25
Your new account is locked with a password. Please give a password. Do not forget this password.
!! Unsupported terminal, password will be echoed.
Passphrase:
Repeat passphrase:

Address: {a8341698f294a25c92503156767d746775594ca6}
```


NODE1
docker logs geth-enode1
INFO [04-02|19:17:01] Maximum peer count                       ETH=25 LES=0 total=25
INFO [04-02|19:17:01] Starting peer-to-peer node               instance=Geth/v1.8.4-unstable-a095b84e/linux-amd64/go1.10
INFO [04-02|19:17:01] Allocated cache and file handles         database=/root/.ethereum/geth/chaindata cache=768 handles=512
WARN [04-02|19:17:01] Upgrading database to use lookup entries
INFO [04-02|19:17:01] Initialised chain configuration          config="{ChainID: 1234 Homestead: 0 DAO: <nil> DAOSupport: false EIP150: <nil> EIP155: 0 EIP158: 0 Byzantium: <nil> Constantinople: <nil> Engine: unknown}"
INFO [04-02|19:17:01] Disk storage enabled for ethash caches   dir=/root/.ethereum/geth/ethash count=3
INFO [04-02|19:17:01] Disk storage enabled for ethash DAGs     dir=/root/.ethash               count=2
INFO [04-02|19:17:01] Initialising Ethereum protocol           versions="[63 62]" network=2061
INFO [04-02|19:17:01] Loaded most recent local header          number=0 hash=987508…43214d td=131072
INFO [04-02|19:17:01] Loaded most recent local full block      number=0 hash=987508…43214d td=131072
INFO [04-02|19:17:01] Loaded most recent local fast block      number=0 hash=987508…43214d td=131072
INFO [04-02|19:17:01] Regenerated local transaction journal    transactions=0 accounts=0
INFO [04-02|19:17:01] Database deduplication successful        deduped=0
INFO [04-02|19:17:01] Starting P2P networking
INFO [04-02|19:17:01] HTTP endpoint opened                     url=http://0.0.0.0:8545 cors= vhosts=localhost
INFO [04-02|19:17:01] Transaction pool price threshold updated price=10000
INFO [04-02|19:17:01] Starting mining operation
INFO [04-02|19:17:01] Commit new mining work                   number=1 txs=0 uncles=0 elapsed=136.253µs
INFO [04-02|19:17:01] RLPx listener up                         self="enode://ae7e5b03dad9085bdea4ac7630b3c4fcec70251ed288f2a3d237f4642e9401909cc0a531c57969333fd691cd7969ca9198d237144f29445b2dc5f5664d648681@[::]:30303?discport=0"
INFO [04-02|19:17:01] IPC endpoint opened                      url=/root/.ethereum/geth.ipc
INFO [04-02|19:17:05] Generating DAG in progress               epoch=0 percentage=0 elapsed=3.319s
