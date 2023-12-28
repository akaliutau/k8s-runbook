# Debugging issues in Kubernetes

# Using Liveness and Readiness Probes in Kubernetes

## Simulation of readiness and liveness loss:

```shell
kubectl create ns debug-space
kubectl create -f src/02-pod-probs.yaml -n debug-space
kubectl get pods -n debug-space -w
```

## Creating a Termination Log

The application can write down the reason of termination to a pre-defined path, /dev/termination-log is the default, 
so that one can see the termination reason quickly by checking the Pod definition.

```shell
kubectl create -f src/02-termination-pod.yaml -n debug-space
kubectl get pod termination-pod -o yaml
```

The output:
```shell
  containerStatuses:
  - containerID: docker://dc335ae8909454f2856bbe9abb8c6463316ff0455917dfe81fd6aba9d0e12d00
    image: busybox:latest
    imageID: docker-pullable://busybox@sha256:ba76950ac9eaa407512c9d859cea48114eeff8a6f12ebaa5d32ce79d4a017dd8
    lastState:
      terminated:
        containerID: docker://c8702390c534f64acbaf29d768e454cc31b98f01a014df2f664dd3001ee988cc
        exitCode: 0
        finishedAt: "2023-12-28T15:55:54Z"
        message: |
          Done sleeping
        reason: Completed
        startedAt: "2023-12-28T15:55:34Z"
```

## Checking logs

TO check the logs of the Pod using kubectl log:
```shell
kubectl logs <pod-name>
```

To reach the logs of the previously crashed container by specifying the `--previous` flag:
```shell
kubectl logs --previous <pod-name>
```
To attach shell to the running process inside the container:
```shell
kubectl attach <pod-name> -i -- sh (any command)
```

Clean up

```shell
kubectl delete pods --all -n debug-space
```