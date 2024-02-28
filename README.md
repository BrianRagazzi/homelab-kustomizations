# homelab-kustomizations
FluxCD kustomizations for clusters in homelab


on v1.26.x TKGS clusters, the default pod security is set to enforce, use this to override per-namespace:
```
kubectl label --overwrite ns NAMESPACE pod-security.kubernetes.io/enforce=privileged
```
