# Secure Configuration

# Description

The most straightforward solution for secure configuration is decoding encrypted information within the application itself. 

There are better, more transparent ways to do this on Kubernetes.
The support for secure configuration on Kubernetes falls roughly into two categories:

_Out-of-cluster encryption_
This stores encrypted configuration information outside of Kubernetes, which non-authorized persons can also read. 
The transformation into Kubernetes Secrets happens just before entering the cluster (e.g., when applying a resource
via the API server) or inside the cluster by a permanently running operator process.

Practical approaches are: Sealed Secrets (via Bitnami) and  External Secrets (via External Secrets Operator)

_Centralized secret management_
This uses specialized services that are either already offered by cloud providers (e.g., AWS Secrets Manager) 
or are part of an in-house vault service (e.g., HashiCorp Vault) for storing confidential configuration data.

# References

[1] [External Secrets Operator](https://external-secrets.io/latest/)

[2] [Bitnami](https://github.com/bitnami-labs/sealed-secrets)
