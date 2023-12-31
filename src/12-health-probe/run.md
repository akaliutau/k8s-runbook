# Health Probe

# Description

Kubernetes needs a reliable way to check the health of applications

_liveness probes_ - regular checks performed by the Kubelet agent that asks your container to confirm it is still healthy

_readiness probes_ - to signal when a container is ready so that it has some time to warm up before getting hit with requests from the service

```shell
kubectl apply -f src/12-health-probe/deployment.yml
kubectl get pods -o wide
kubectl get deployment
```

Output:

```shell
NAME                          READY   STATUS    RESTARTS   AGE   IP            NODE       NOMINATED NODE   READINESS GATES
randomizer-7c6846d7cd-zswlw   1/1     Running   0          39m   10.244.0.34   minikube   <none>           <none>
```

# References

[1] [Configure liveness, readiness and startup probes](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/)

[2] [Customizing the termination message](https://kubernetes.io/docs/tasks/debug/debug-application/determine-reason-pod-failure/#customizing-the-termination-message)

[3] [Implementing probes in Quarkus](https://quarkus.io/guides/smallrye-health)

[4] [Advanced Health Check Patterns in k8s](https://ahmet.im/blog/advanced-kubernetes-health-checks/)