#!/bin/bash

# Get the number of nodes
num_nodes=$(kubectl get nodes --no-headers | wc -l)
echo "Number of nodes: $num_nodes"

# Get the number of pods
num_pods=$(kubectl get pods --all-namespaces --no-headers | wc -l)
echo "Number of pods: $num_pods"

# Get the sum of all containers in all pods
sum_containers=$(kubectl get pods --all-namespaces -o jsonpath='{.items[*].spec.containers[*]}' | wc -w)
echo "Sum of all containers in all pods: $sum_containers"

# Get the number of namespaces
num_namespaces=$(kubectl get namespaces --no-headers | wc -l)
echo "Number of namespaces: $num_namespaces"
