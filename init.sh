#!/bin/bash
cd /usr/src/cpp-ethereum/build/eth
while [ 1 ]; do
      HOME=/usr/src ./eth -o peer -x 256 -l 30303 -m off -v 1
    done
