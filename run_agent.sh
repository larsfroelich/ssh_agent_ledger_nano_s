#!/usr/bin/env bash

python2 ./getPublicKey.py | tail -n 1 | awk '{print $2;}' > pubkey.txt
python2 ./agent.py --key `cat pubkey.txt`
