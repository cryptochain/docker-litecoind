#!/bin/bash

docker run --name litecoin-regtest -tid \
  -p 20001:20001 \
  -p 20011:20011 \
  cryptochain/litecoind-docker:latest \
  --printtoconsole \
  -server \
  -listen \
  -port=20001 \
  -regtest=1 \
  -rpcallowip=0.0.0.0/0 \
  -rpcpassword=admin1 \
  -rpcuser=123 \
  -rpcport=20011
