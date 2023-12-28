# Installing and Starting a Local Kubernetes Cluster

## minikube 

1. Download the minikube executable
```shell
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
```

2. Make the downloaded minikube executable and move to the following path:
```shell
chmod +x minikube
sudo mv minikube /usr/local/bin
```

3. Start the minikube cluster:
```shell
minikube -h
sudo usermod -a -G docker $USER (optional)
minikube start
```

Initialization will take some time, the approx. output:

```shell
😄  minikube v1.32.0 on Ubuntu 20.04
✨  Automatically selected the docker driver. Other choices: none, ssh
📌  Using Docker driver with root privileges
👍  Starting control plane node minikube in cluster minikube
🚜  Pulling base image ...
💾  Downloading Kubernetes v1.28.3 preload ...
```

Checking the status and login into control plane instance:

```shell
minikube status
minikube ssh
docker ps --format 'table {{.Image}}\t{{.Command}}'
```

The last command will give the list of running instances:

```shell
IMAGE                       COMMAND
6e38f40d628d                "/storage-provisioner"
ead0a4a53df8                "/coredns -conf /etc…"
bfc896cf80fb                "/usr/local/bin/kube…"
registry.k8s.io/pause:3.9   "/pause"
registry.k8s.io/pause:3.9   "/pause"
registry.k8s.io/pause:3.9   "/pause"
73deb9a3f702                "etcd --advertise-cl…"
10baa1ca1706                "kube-controller-man…"
6d1b4fd1b182                "kube-scheduler --au…"
537434729123                "kube-apiserver --ad…"
registry.k8s.io/pause:3.9   "/pause"
registry.k8s.io/pause:3.9   "/pause"
registry.k8s.io/pause:3.9   "/pause"
registry.k8s.io/pause:3.9   "/pause"
```

Checking Application Status in Kubernetes Dashboard (minikube should be running)

```shell
minikube addons list (dashboard must be enabled)
minikube dashboard
```

## Cluster Management Using kubectl

1. get binary
```shell
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.28.3/bin/linux/amd64/kubectl
```

3. Make the downloaded kubectl an executable and move to the following path:
```shell
chmod +x kubectl
sudo mv kubectl /usr/local/bin
```

3. Check kubectl config with the following command:
```shell
kubectl version
kubectl config current-context
kubectl cluster-info
```

4. list all resources:
```shell
kubectl api-resources -o name
kubectl api-resources (all, with APIVERSION column)
```

