# your server name goes here
server=https://192.168.103.8:6443
# the name of the secret containing the service account token goes here
name=pipeline-secret
ns=hugo

ca=$(kubectl get -n $ns secret/$name -o jsonpath='{.data.ca\.crt}')
token=$(kubectl get -n $ns  secret/$name -o jsonpath='{.data.token}' | base64 --decode)
namespace=$(kubectl get -n $ns secret/$name -o jsonpath='{.data.namespace}' | base64 --decode)

echo "
apiVersion: v1
kind: Config
clusters:
- name: default-cluster
  cluster:
    certificate-authority-data: ${ca}
    server: ${server}
contexts:
- name: default-context
  context:
    cluster: default-cluster
    namespace: ${namespace}
    user: default-user
current-context: default-context
users:
- name: default-user
  user:
    token: ${token}
" > hugo.kubeconfig

kubectl create configmap hugo-kubeconfig  --from-file=kubeconfig="./hugo.kubeconfig" -n pipelines
rm ./hugo.kubeconfig
