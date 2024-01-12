# Configuration resources

# Description

There are two default resources to keep all configuration in a centralized, highly organized place:
ConfigMap and Secrets

Once a ConfigMap is created and holding data, one can use the keys of a ConfigMap in two ways:
* As _a reference_ for environment variables (the key is the name of the environment variable)
* As _a file_ that is mapped to a volume mounted in a Pod (the key is the filename)

# References

[1] [Configure a Pod to Use a ConfigMap](https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/)

[2] [Secrets](https://kubernetes.io/docs/concepts/configuration/secret/)

[3] [Encrypting Confidential Data at Rest](https://kubernetes.io/docs/tasks/administer-cluster/encrypt-data/)

[4] [Immutable Secrets](https://kubernetes.io/docs/concepts/configuration/secret/#secret-immutable)

[5] [How to Create Immutable Configmaps](https://www.cloudytuts.com/tutorials/kubernetes/how-to-create-immutable-configmaps-and-secrets/)

[6] [ConfigMap values size limit (tracking issue)](https://github.com/kubernetes/kubernetes/issues/19781)