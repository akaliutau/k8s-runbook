# Automated Placement

This is the core function of the Kubernetes scheduler for creating new Pods in nodes that match container resource 
requests and grant scheduling policies

# Description

Questions to ask:

* Available Node Resources
* Container Resource Demands
* Node affinity (if needed)

_taint_ - a feature of the node, it prevents Pods from scheduling onto the node unless the Pod has toleration for the taint.

# References

[1] [Assigning Pods to Nodes](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/)

[2] [Guaranteed Scheduling For Critical Add-On Pods](https://kubernetes.io/docs/tasks/administer-cluster/guaranteed-scheduling-critical-addon-pods/)

[3] [HA k8s cluster](https://itnext.io/keep-you-kubernetes-cluster-balanced-the-secret-to-high-availability-17edf60d9cb7)