# Controller

# Description

The Kubernetes event-driven architecture allows to natively add other custom controllers. 
Custom controllers can add extra functionality to the behavior by reacting to state events, 
the same way that internal controllers do. A common characteristic of controllers is that they are _reactive_ 
and react to events in the system to perform their some actions. 

Generic architecture of Controller:

1. Observe: discover the actual state by watching for events issued by Kubernetes when an observed resource changes.
2. Analyze: determine the differences from the desired state.
3. Act: perform operations to drive the actual state to the desired state.

Some definitions:

**Controllers**

A simple reconciliation process that monitors and acts on standard Kubernetes resources. 
More often, these controllers enhance platform behavior and add new platform features.

**Operators**

A sophisticated reconciliation process that interacts with CustomResourceDefinitions (CRDs), 
which are at the heart of the Operator pattern. Typically, these operators encapsulate complex application domain logic 
and manage the full application lifecycle.


# References

[1] [Writing Controllers](https://github.com/kubernetes/community/blob/a0fdd9ccfa6d5a6b17d8d2d3eec1d2e1ee12f3c4/contributors/devel/controllers.md)

[2] [Writing a Kubernetes Controller](https://fedepaol.github.io/blog/2020/12/07/writing-a-kubernetes-controller-part-1/)

[3] [Sample Controller](https://github.com/kubernetes/sample-controller)