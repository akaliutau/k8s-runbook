# Simple resources

## Pods, services

Creating a pod with single container and checking the status of containers:
```shell
kubectl apply -f src/basics/01-simple-pod.yaml
kubectl get pods -o wide
```

Sharing data between containers (sidecar pattern)
```shell
kubectl apply -f src/basics/01-sidecar-pod.yaml
kubectl get pods -o wide
kubectl exec -n default test-pod -it -- /bin/sh
wget <ip address of another pod>
```

Deploying ReplicaSet and a Service:
```shell
kubectl apply -f src/basics/01-nginx-deployment.yaml
kubectl apply -f src/basics/01-nginx-service.yaml

kubectl get pods -o wide
kubectl get service

kubectl exec -n default test-pod -it -- /bin/sh

wget nginx-service.default.svc.cluster.local.:8080 -O res
cat res
```

Kubernetes will create a service=nginx-service in default namespace which will hide the cluster of pods with nginx

```shell
NAME                     READY   STATUS    RESTARTS   AGE   IP            NODE       NOMINATED NODE   READINESS GATES
nginx-7854ff8877-qj4tg   1/1     Running   0          9s    10.244.0.16   minikube   <none>           <none>
nginx-7854ff8877-vwghx   1/1     Running   0          9s    10.244.0.17   minikube   <none>           <none>
test-pod                 1/1     Running   0          28m   10.244.0.15   minikube   <none>           <none>
```

Delete all resources:
```shell
kubectl delete pods --all
kubectl delete service nginx-service
```

## Configuration Management
```shell
kubectl apply -f src/basics/01-configuration.yaml
kubectl get configmap app-config -o yaml
```

Configuration from files:
```shell
kubectl create configmap config-file --from-file=src/basics/config.properties
kubectl get configmap config-file -o yaml
```
