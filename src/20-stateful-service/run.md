# Stateful Service

# Description

In a stateful application, every instance is unique and knows its own identity, 
and the main ingredients of that identity are the long-lived storage and the networking coordinates.

StatefulSet is designed for managing non-fungible Pods, as opposed to ReplicaSet, which is for managing identical replaceable Pods.

Networking:

Each Pod will get a DNS entry where clients can directly reach out to it in a predictable way. 
For example, if app has a name `app`, we can reach our `app-0` Pod through its fully qualified domain name: 
`app-0.service-name.default.svc.cluster.local` , where the Pod’s name is prepended to the Service name.

# References

[1] [StatefulSet Basics](https://kubernetes.io/docs/tutorials/stateful-application/basic-stateful-set/)

[2] [Deploying Cassandra with a StatefulSet](https://kubernetes.io/docs/tutorials/stateful-application/cassandra/)

[3] [Graceful scaledown of stateful apps](https://medium.com/@marko.luksa/graceful-scaledown-of-stateful-apps-in-kubernetes-2205fc556ba9)