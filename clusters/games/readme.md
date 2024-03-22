# Contains resources for Games cluster

## Expects the following installed from TMC:
* Cert-manager
* Contour
* prometheus
* Helm-Service


## kustomizations

| Name        | What                | Path                                 | NS          | prune |
|-------------|---------------------|--------------------------------------|-------------|-------|
| mc-flat     | Minecraft Server    | ./clusters/games/minecraft/flat      | mc-flat     | false |
| mclinks     | Web Site for dynmap | ./clusters/games/mclinks             | mclinks     | true  |
| mc-survive1 | Minecraft Server    | ./clusters/games/minecraft/survive1  | mc-survive1 | false |
| mc-survive2 | Minecraft Server    | ./clusters/games/minecraft/survive2  | mc-survive2 | false |
| waterfall   | Minecraft proxy     | ./clusters/games/minecraft/waterfall | waterfall   | false |
| xmage       | XMage Server        | ./clusters/games/xmage/              | xmage       | true  |


## Helm

# MC Server HELP:
https://paper-chan.moe/paper-optimization/


Prometheus Scrap Config Add:
- job_name: 'minecraft'
  static_configs:
    - targets: ['survive1.mc-survive1.svc.cluster.local:9940']
      labels:
        server_name: 'survive1'
    - targets: ['survive2.mc-survive2.svc.cluster.local:9940']
      labels:
        server_name: 'survive2'
    - targets: ['flat.mc-flat.svc.cluster.local:9940']
      labels:
        server_name: 'flat'
- job_name: 'bungeecord'
  scrape_interval: 10s
  static_configs:
    - targets: [ 'waterfall-lb.waterfall.svc.cluster.local:9985' ]
      labels:
        proxy_name: 'proxy'



Edit Players dashboard:
Metrics: sum(mc_player_statistic{player_name=~"$player", statistic="$statistic", server_name=~"$server_name"}) without (player_uid)
Legend:  {{player_name}}: {{statistic}}
Panel title: $statistic by player
Resolution: 1/1
