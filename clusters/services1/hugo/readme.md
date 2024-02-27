
## Create ns, create secret and apply

```
kubectl create ns hugo
kubectl --namespace hugo create secret docker-registry harbor --docker-server=https://harbor.ragazzilab.com --docker-username=harboradmin@ragazzilab.com --docker-password=<PASSWORD>
kubectl apply -n hugo -f ./deploy.yaml
```




kubectl -n hugo create secret tls wildcard-cert \
  --cert=./full.crt \
  --key=./brianragazzi-wildcard.key


kubectl -n tekton-pipelines create secret tls wildcard-cert \
  --cert=./full.crt \
  --key=./brianragazzi-wildcard.key


kubectl create -n hugo secret tls wildcard-cert --cert=./full.crt --key=./brianragazzi-wildcard.key --dry-run=client -o yaml >cert-sept04-2023.yaml
