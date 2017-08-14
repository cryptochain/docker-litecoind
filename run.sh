#!/bin/bash

docker run --name litecoin-testbox -tid -p 19001:19001 cryptochain/litecoind-docker:latest \
  --printtoconsole \
  -regtest=1 \
  -rpcallowip=0.0.0.0/0 \
  -rpcpassword=admin1 \
  -rpcuser=123
