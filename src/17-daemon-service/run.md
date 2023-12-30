# Daemon Service

# Description

DaemonSet is represented by Pods that run on the cluster nodes and provide some background ops for the rest of the cluster
(usually infrastructure-related processes, such as cluster storage providers, log collectors, met‐ric exporters, etc)

* By default, a DaemonSet places one Pod instance on every node (can be limited to a subset of nodes by using the nodeSelector or
affinity fields)
* A Pod created by a DaemonSet already has nodeName specified. As a result, the DaemonSet doesn't require the existence of the Kubernetes scheduler

_Static Pods_ are managed directly by the kubelet daemon on a specific node, without the API server observing them. 
Unlike Pods that are managed by the control plane (for example, a Deployment); 
instead, the kubelet watches each static Pod (and restarts it if it fails).


# References

[1] [Perform a Rolling Update on a DaemonSet](https://kubernetes.io/docs/tasks/manage-daemon/update-daemon-set/)

[2] [Static Pods](https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/)
