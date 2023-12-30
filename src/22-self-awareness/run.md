# Self Awareness

# Description

Self Awareness in Kubernetes == `downward API` that provides a simple mechanism for introspection and metadata injection to applications.

The downward API allows you to pass metadata about the Pod to the containers and the cluster through 
environment variables and files (the same mechanisms which is used for passing application-related data from ConfigMaps and Secrets)

Example:

| Name                        | Description                             |
|-----------------------------|-----------------------------------------|
| spec.nodeName               | Name of node hosting the Pod            |
| status.hostIP               | IP address of node hosting the Pod      |
| metadata.name               | Pod name                                |
| metadata.namespace          | Namespace in which the Pod is running   |
| status.podIP                | Pod IP address                          |
| spec.serviceAccountName     | ServiceAccount that is used for the Pod |
| metadata.uid                | Unique ID of the Pod                    |
| metadata.labels['key']      | Value of the Pod’s label key            |
| metadata.annotations['key'] | Value of the Pod’s annotation key       |

# References

[1] [Expose Pod Information to Containers Through Environment Variables](https://kubernetes.io/docs/tasks/inject-data-application/environment-variable-expose-pod-information/)

[2] [Expose Pod Information to Containers Through Files](https://kubernetes.io/docs/tasks/inject-data-application/downward-api-volume-expose-pod-information/)

[3] [Available fields](https://kubernetes.io/docs/concepts/workloads/pods/downward-api/#available-fields)
