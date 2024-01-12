# Environment Variables configuration

# Description

In short: the configuration should be _externalized_, since hard-coding is an anti-pattern. 

In Kubernetes each container can be provided with env variables, this shifts the config burden from app side to container
(more advanced pattern and further development of this idea can be found in the next section)

# References

[1] [12 Factor app (configuration)](https://12factor.net/config)

[2] [Env vars pattern in k8s](https://kubernetes.io/docs/tasks/inject-data-application/environment-variable-expose-pod-information/)

[3] [Dependent Environment Variables](https://kubernetes.io/docs/tasks/inject-data-application/define-interdependent-environment-variables/)
