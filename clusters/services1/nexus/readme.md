
helm repo add sonatype https://sonatype.github.io/helm3-charts/

helm show values sonatype/nexus-repository-manager > values.yaml

helm install -n nexus nexus sonatype/nexus-repository-manager -f values.yaml
