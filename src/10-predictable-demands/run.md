# Predictable Demands

# Description

Design forward.

Declare and check existence of runtime dependencies:

* Dependency on a PersistentVolume
* Dependency on a ConfigMap

To provide a balanced set of resources use Resource Profiles:

* Set Resource limits for each declared resource
* Set Pod priority (to prioritise important workload)
* Set Project Resources (for specific pr any type or resource)

# References

[1] [CPU Limits on Kubernetes Best Practice](https://home.robusta.dev/blog/stop-using-cpu-limits)

[2] [Configure Default Memory Requests and Limits for a Namespace](https://kubernetes.io/docs/tasks/administer-cluster/manage-resources/memory-default-namespace/)
