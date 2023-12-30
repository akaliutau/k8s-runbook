# Singleton Service

# Description

Only one instance of application is active at a time and yet is HA.

Ways to achieve:

* Out-of-Application Locking - to start a single Pod
* In-Application Locking - using lock


# References

[1] [Specifying a Disruption Budget for your Application](https://kubernetes.io/docs/tasks/run-application/configure-pdb/)

[2] [Dapr: Distributed Lock Overview](https://docs.dapr.io/developing-applications/building-blocks/distributed-lock/distributed-lock-api-overview/)

[3] [Camel: Clustered Singleton Services on Kubernetes](https://www.nicolaferraro.me/2017/10/17/creating-clustered-singleton-services-on-kubernetes/)
