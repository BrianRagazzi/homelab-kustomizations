#!/bin/bash

# set -x

function checkUsers {
  echo -n "$(kubectl exec -n mc-$1 -c server $1-0 -- rcon-cli list  | tr -s '\n\r' | cut -d ' ' -f 3 | sed -e 's/\x1b\[[0-9;]*m//g')"
}

s1=$(checkUsers survive1)
echo "survive1 has $s1 active users"

s2=$(checkUsers survive2)
echo "survive2 has $s2 active users"

f1=$(checkUsers flat)
echo "flat has $f1 active users"
