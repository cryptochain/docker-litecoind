#!/bin/bash

docker run --name litecoin-testbox -tid \
  -p 9332:9332 \
  -p 9333:9333 \
  -p 19332:19332 \
  -p 19333:19333 \
  -p 19444:19444 \
  cryptochain/litecoind-docker:latest \
  --printtoconsole \
  -regtest=1 \
  -rpcallowip=0.0.0.0/0 \
  -rpcpassword=admin1 \
  -rpcuser=123
