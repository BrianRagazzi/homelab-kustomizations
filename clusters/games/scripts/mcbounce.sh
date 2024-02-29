#!/usr/bin/env bash
# set -v

function usage() {
  echo ""
  echo " Usage: $0 <name : stops minecraft server with the given name"

}


function checkUsers {
  echo -n "$(kubectl exec -n mc-$1 -c server $1-0 -- rcon-cli list  | tr -s '\n\r' | cut -d ' ' -f 3 | sed -e 's/\x1b\[[0-9;]*m//g')"
}

function stopServer {
  kubectl exec -n mc-$1 -c server $1-0 -- rcon-cli stop
}

function ord {
  printf %x "'$1"
}


usercnt=$(checkUsers $1)


if [ "$usercnt" == "0" ] || [ "$usercnt" == "0" ]
  then
    echo "Stopping $1"
    stopServer $1
    exit 10
  else
    echo "Server has $usercnt active Users.  Not stopping it"
    exit 10
fi
