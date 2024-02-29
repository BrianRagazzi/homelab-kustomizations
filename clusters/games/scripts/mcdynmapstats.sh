
#!/usr/bin/env bash
# set -v


#kubectl exec -n minecraft $1-0 -c server -- rcon-cli dynmap stats

function rconCmd {
  kubectl exec -n mc-$1 $1-0 -c server -- rcon-cli "$2"
}

rconCmd $1 "dynmap stats"
