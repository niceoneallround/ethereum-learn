# Overview
Contains a set of tools that can be used to setup an Ethereum Network

#FIXMEs
 - Generate genesis.com

```
  # Initialize a node
  bash ethereum-tools/initnode.sh enode1

  # create an account
  bash ethereum-tools/createaccount.sh

  # run node
  bash ethereum-tools/runnode.sh enode1 "0x0188e5f8142202bd3b422dfca7fe02ebe7a93d81"
```



NODE1
INFO [04-02|18:20:03] Maximum peer count                       ETH=25 LES=0 total=25
INFO [04-02|18:20:03] Starting peer-to-peer node               instance=Geth/v1.8.4-unstable-a095b84e/linux-amd64/go1.10
INFO [04-02|18:20:03] Allocated cache and file handles         database=/root/.ethereum/geth/chaindata cache=768 handles=512
INFO [04-02|18:20:03] Initialised chain configuration          config="{ChainID: 1234 Homestead: 0 DAO: <nil> DAOSupport: false EIP150: <nil> EIP155: 0 EIP158: 0 Byzantium: <nil> Constantinople: <nil> Engine: unknown}"
INFO [04-02|18:20:03] Disk storage enabled for ethash caches   dir=/root/.ethereum/geth/ethash count=3
INFO [04-02|18:20:03] Disk storage enabled for ethash DAGs     dir=/root/.ethash               count=2
INFO [04-02|18:20:03] Initialising Ethereum protocol           versions="[63 62]" network=2061
INFO [04-02|18:20:03] Loaded most recent local header          number=0 hash=987508…43214d td=131072
INFO [04-02|18:20:03] Loaded most recent local full block      number=0 hash=987508…43214d td=131072
INFO [04-02|18:20:03] Loaded most recent local fast block      number=0 hash=987508…43214d td=131072
INFO [04-02|18:20:03] Loaded local transaction journal         transactions=0 dropped=0
INFO [04-02|18:20:03] Regenerated local transaction journal    transactions=0 accounts=0
INFO [04-02|18:20:03] Starting P2P networking
INFO [04-02|18:20:03] RLPx listener up                         self="enode://d94b38990eaa9f092610ea0c7c59b9995c07a28ae13cc96c908d6c10edbb349e383ce36234c6a04448ea9457bf4eea20f97b5b614d3c53604b2c40cc09dfebc0@[::]:30303?discport=0"
INFO [04-02|18:20:03] HTTP endpoint opened                     url=http://0.0.0.0:8545 cors= vhosts=localhost
INFO [04-02|18:20:03] Transaction pool price threshold updated price=10000
INFO [04-02|18:20:03] Starting mining operation
INFO [04-02|18:20:03] Commit new mining work                   number=1 txs=0 uncles=0 elapsed=73.638µs
