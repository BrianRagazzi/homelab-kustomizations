# Contains resources for Games cluster

## Expects the following installed from TMC:
* Cert-manager
* Contour
* prometheus


## kustomizations

| Name        | What                | Path                                 | NS          | prune |
|-------------|---------------------|--------------------------------------|-------------|-------|
| mc-flat     | Minecraft Server    | ./clusters/games/minecraft/flat      | mc-flat     | false |
| mclinks     | Web Site for dynmap | ./clusters/games/mclinks             | mclinks     | true  |
| mc-survive1 | Minecraft Server    | ./clusters/games/minecraft/survive1  | mc-survive1 | false |
| mc-survive2 | Minecraft Server    | ./clusters/games/minecraft/survive2  | mc-survive2 | false |
| waterfall   | Minecraft proxy     | ./clusters/games/minecraft/waterfall | waterfall   | false |
| xmage       | XMage Server        | ./clusters/games/xmage/              | xmage       | true  |
