# k8s-runbook

This project has the aim to aggregate all best practice and standard patterns in describing Kubernetes cluster 
in the form of well written and concise manifests.

This collection of recipes, examples and useful articles should help to define a balanced, reliable Kubernetes environment.

For hands-on exercises the real application is needed. In our case this is a simple Flask microservice which can generate 
random number on each request (Randomizer). The source code is [here](https://github.com/akaliutau/randomizer)
It's already published at docker.io, so not other work is needed

One can test manifests either on local env (minikube), in the cloud (EKS or GKE) or using free sandboxes (see below)

# Content

* K8s fundamentals
  * [Installing and Starting a Local Kubernetes Cluster](./notes/00-installation.md)
  * [Simple resources](./notes/01-basics.md)
  * [Debugging issues in Kubernetes](./notes/02-debugging.md)
  * [Monitoring and observability in Kubernetes](./notes/03-monitoring.md)

* K8s patterns
  * [Predictable Demands](./src/10-predictable-demands/run.md)
  * [Declarative Deployment](./src/11-declarative-deployment/run.md)
  * [Health Probe](./src/12-health-probe/run.md)
  * [Managed Lifecycle](./src/13-managed-lifecycle/run.md)
  * [Automated Placement](./src/14-automated-placement/run.md)
  * [Batch Job](./src/15-batch-job/run.md)
  * [Periodic Job](./src/16-periodic-job/run.md)
  * [Daemon Service](./src/17-daemon-service/run.md)
  * [Singleton Service](./src/18-singleton-service/run.md)
  * [Stateless Service](./src/19-stateless-service/run.md)
  * [Stateful Service](./src/20-stateful-service/run.md)
  * [Service Discovery](./src/21-service-discovery/run.md)
  * [Self Awareness](./src/22-self-awareness/run.md)
  * [Init Container](./src/23-init-container/run.md)
  * [Sidecar](./src/24-sidecar/run.md)
  * [Adapter](./src/25-adapter/run.md)
  * [Ambassador](./src/26-ambassador/run.md)
  * [Env variables configuration](./src/27-env-var-configuration/run.md)
  * [External configuration](./src/28-configuration-resource/run.md)
  * [Immutable configuration](./src/29-immutable-configuration/run.md)
  * [Configuration template](./src/30-configuration-template/run.md)
  * [Process containment](./src/31-process-containment/run.md)
  * [Network segmentation](./src/32-network-segmentation/run.md)
  * [Secure configuration](./src/33-secure-configuration/run.md)
  * [Controller](./src/35-controller/run.md)
  * [Operator](./src/36-operator/run.md)
  * [Elastic scaling/Auto-scaling](./src/37-elastic-scale/run.md)
  * [Image builder](./src/38-image-builder/run.md)

* Playground/Free cloud sandbox
  * [Play with k8s](https://labs.play-with-k8s.com/)
  * [Killercoda](https://killercoda.com/playgrounds/scenario/kubernetes)


[Thesaurus](./notes/thesaurus.md)


# Further work

Current status of the project: WIP (not all manifests were checked and validated, especially when it comes to 
advanced topics like CRDs and Operators)

The format most likely will change significantly in the future.



