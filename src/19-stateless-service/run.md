# Stateless Service

# Description

A _Stateless Service_ does not maintain any state internally within the instance across service interactions, i.e. a container 
does not hold any information from requests in its internal storage (memory or temporary filesystem)

Stateless services are made of identical, replaceable instances that often offload state to external 
permanent storage systems and use load-balancers for distributing incoming requests

```shell
kubectl apply -f src/19-stateless-service/service.yml
kubectl get svc
```



# References

[1] [ReplicaSet](https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/)

[2] [Persistent Volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/)