

Create kustomization to load:

https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.26.0/controller.yaml



https://fluxcd.io/flux/guides/sealed-secrets/


## Sealed Secrets Steps

### get Public Cert:
```
kubeseal --fetch-cert \
--controller-namespace=flux-helm \
--controller-name=flux-helm-sealed-secrets
> pub-sealed-secrets.pem
```

### Create (Locally) a secret
```
kubectl -n default create secret generic basic-auth \
--from-literal=user=admin \
--from-literal=password=change-me \
--dry-run=client \
-o yaml > basic-auth.yaml
```

### Create SealedSecret
```
kubeseal --format=yaml --cert=pub-sealed-secrets.pem \
< basic-auth.yaml > basic-auth-sealed.yaml
```

### Apply SealedSecret
```
rm basic-auth.yaml
kubectl apply -f basic-auth-sealed.yaml
```
