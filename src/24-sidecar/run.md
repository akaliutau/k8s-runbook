# Sidecar

# Description

A sidecar container extends and enhances the functionality of a preexisting container without changing it.

That 2nd container can do a lot of tasks, f.e. add the additional level of authorization or 
perform pre-processing of the request before forwarding it to the main container (decorator pattern) 

Examples:
* Envoy service mesh (runs alongside every application and abstracts the network by 
  providing common features in a platform-agnostic manner.)
* Dapr (another service mesh) - increases productivity by 20-40% with out-of-the-box features such 
  as workflow, pub/sub, state management, secret stores, external configuration, bindings, distributed lock, and cryptography.

# References

[1] [Tin-Can Phone: Patterns To Add Authorization to legacy Apps](https://www.feval.ca/posts/tincan-phone/)

[2] [Envoy](https://www.envoyproxy.io/)

[3] [Dapr](https://dapr.io/)

[4] [Dealing with zombie processes in K8s](https://www.ianlewis.org/en/almighty-pause-container)