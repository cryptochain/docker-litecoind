#!/bin/bash

docker run --name litecoin-regtest -tid \
  -p 19332:19332 \
  -p 19333:19333 \
  cryptochain/litecoind-docker:latest \
  --printtoconsole \
  -server \
  -port=19333 \
  -regtest=1 \
  -rpcallowip=0.0.0.0/0 \
  -rpcpassword=admin1 \
  -rpcuser=123 \
  -rpcport=19332
