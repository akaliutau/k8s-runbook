# Health Probe

# Description

Kubernetes needs a reliable way to check the health of applications

_liveness probes_ - regular checks performed by the Kubelet agent that asks your container to confirm it is still healthy

_readiness probes_ - to signal when a container is ready so that it has some time to warm up before getting hit with requests from the service


# References

[1] [Configure liveness, readiness and startup probes](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/)

[2] [Customizing the termination message](https://kubernetes.io/docs/tasks/debug/debug-application/determine-reason-pod-failure/#customizing-the-termination-message)

[3] [Implementing probes in Quarkus](https://quarkus.io/guides/smallrye-health)

[4] [Advanced Health Check Patterns in k8s](https://ahmet.im/blog/advanced-kubernetes-health-checks/)