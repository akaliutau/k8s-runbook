# Managed Lifecycle

# Description

In addition to monitoring the state of a container, the platform sometimes may issue commands and expect 
the application to behave somehow to that signal/command, in predictable way

In k8s the standard signals/commands are:

* SIGTERM Signal
* SIGKILL Signal
* PostStart Hook
* PreStop Hook

# References

[1] [Container Lifecycle Hooks](https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/)

[2] [Terminating with grace](https://cloud.google.com/blog/products/containers-kubernetes/kubernetes-best-practices-terminating-with-grace)
