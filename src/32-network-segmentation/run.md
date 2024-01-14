# Network segmentation

# Description

Network segmentation refers to diving network into secure spaces, which can talk to each other only on 
specific conditions. This is implemented via NetworkPolicy

Level 4 in OSI model of networking:

NetworkPolicy is a Kubernetes resource type that allows users to define rules for inbound and outbound network 
connections for Pods. These rules act like a custom firewall and determine which Pods can be accessed 
and which destinations they can connect to.

Level 7 in OSI model of networking:

AuthorizationPolicy is very similar to NetworkPolicy but is more flexible and includes HTTP-specific filters. 
NetworkPolicy and AuthorizationPolicy should be used together.


# References

[1] [The Kubernetes Network Model](https://kubernetes.io/docs/concepts/services-networking/)

[2] [Using Network Policies](https://cloudogu.com/en/blog/k8s-app-ops-part-1)

[3] [Network Policies recipes](https://github.com/ahmetb/kubernetes-network-policy-recipes)
