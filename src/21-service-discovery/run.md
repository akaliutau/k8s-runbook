# Service Discovery

# Description

Provides a stable endpoint through which consumers of a service can access the instances behind the service.

* Discovery through environment variables (Service-related environment variables are injected automatically in Pod)
* Discovery through DNS lookup

`Ingress` is not a service type but a separate Kubernetes resource that sits in front of Services and 
acts as a smart router and entry point to the cluster. 
Ingress typically provides HTTP-based access to Services through externally reachable URLs, load balancing, 
TLS termination, and name-based virtual hosting

The real power of Ingress comes from reusing a single external load balancer and IP to service multiple Services and 
reduce the number of resources in cluster (i.e. acts as a programmable paths' router)

```shell
kubectl apply -f src/21-service-discovery/service-with-loadbalancer.yml
kubectl get svc
```

Output:
```shell
NAME         TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
kubernetes   ClusterIP      10.96.0.1       <none>        443/TCP          51m
randomizer   LoadBalancer   10.108.40.118   <pending>     8080:32766/TCP   34m
```
Note: in minikube load balancers are not supported, so External IP will always be in `pending` status
The service can be tested via local mapped url (`minikube service randomizer`), for example:

```shell
curl http://192.168.49.2:32766
curl http://192.168.49.2:32766/info
```

# References

[1] [DNS for Services and Pods](https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/)

[2] [Ingress and LB](https://medium.com/google-cloud/kubernetes-nodeport-vs-loadbalancer-vs-ingress-when-should-i-use-what-922f010849e0)

[3] [Create an External Load Balancer](https://kubernetes.io/docs/tasks/access-application-cluster/create-external-load-balancer/)
