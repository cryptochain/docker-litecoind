#!/bin/bash

docker run --name litecoin-testnet -tid \
  -p 20001:20001 \
  -p 20011:20011 \
  cryptochain/litecoind-docker:latest \
  --printtoconsole \
  -server=1 \
  -listen=1 \
  -testnet=1 \
  -port=20001 \
  -rpcallowip=0.0.0.0/0 \
  -rpcuser=admin1 \
  -rpcpassword=123 \
  -rpcport=20011
