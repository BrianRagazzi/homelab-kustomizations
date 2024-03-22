

sum(rate(container_cpu_usage_seconds_total{name=~"",kubernetes_io_hostname=~"^$Node$",pod!=""}[1m]))by(namespace,pod)


kube_node_status_allocatable{node="tap2-vhsff-dp9s2",resource="memory"}
sum(kube_pod_container_resource_requests{node="tap2-vhsff-dp9s2",resource="memory"})

sum(kube_pod_container_resource_requests{node="tap2-vhsff-dp9s2",resource="cpu"})



sum (container_memory_working_set_bytes{id="/",kubernetes_io_hostname=~"^$Node$"}) / sum (machine_memory_bytes{kubernetes_io_hostname=~"^$Node$"}) * 100


sum(kube_pod_container_resource_requests{node=~"^$Node$",resource="memory"}) /
sum(kube_node_status_allocatable{node=~"^$Node$",resource="memory"}) * 100
