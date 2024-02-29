#!/usr/bin/env bash

kubectl logs -n mc-$1 $1-0 -c server -f
