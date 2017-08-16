#!/bin/bash

docker run --name litecoin-regtest -tid \
  -p 20001:20001 \
  -p 20011:20011 \
  cryptochain/litecoind-docker:latest \
  --printtoconsole \
  -server=1 \
  -listen=1 \
  -regtest=1 \
  -port=20001 \
  -rpcallowip=0.0.0.0/0 \
  -rpcuser=admin1 \
  -rpcpassword=123 \
  -rpcport=20011
