#!/usr/bin/env bash

kubectl exec -n mc-$1 $1-0 -c server -- rcon-cli say "$2"
kubectl logs -n mc-$1 $1-0 -c server -f
