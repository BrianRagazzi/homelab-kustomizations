Contains resources for services1 cluster

## Expects the following installed from TMC:
* Cert-manager
* Contour
* prometheus

## Tekton:
install tasks:
```
tkn hub install -n pipelines task git-clone
tkn hub install -n pipelines task kaniko
tkn hub install -n pipelines task kubernetes-actions
```


### Service accounts & tokens
#### hugo
```
kubectl create sa -n hugo pipeline
```
Create token in a secret
```
kubectl apply -n hugo -f - <<EOF
apiVersion: v1
kind: Secret
metadata:
  name: pipeline-secret
  annotations:
    kubernetes.io/service-account.name: pipeline
type: kubernetes.io/service-account-token
EOF
```

Create kubeconfig from SA token, store in configmap
```
./generate-hugo-kubeconfig.sh
```
