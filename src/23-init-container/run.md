# Init container

# Description

Define a separate lifecycle for initialization-related tasks which are started _before_ the main application containers
(defined in `initContainers` section)

1) All containers in a Pod are divided into two groups: _init containers_ and _application containers_
2) All init containers are executed one by one
3) If any task fails the main app will not start

Typical use-case:

* clone/sync the git repo before starting the main repo
* download & install 3rd party app which cannot be included into image

# References

[1] [Configure Pod Initialization](https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-initialization/#creating-a-pod-that-has-an-init-container)

[2] [Dynamic Admission Control](https://kubernetes.io/docs/reference/access-authn-authz/extensible-admission-controllers/)

[3] [Kyverno](https://github.com/kyverno/kyverno/?tab=readme-ov-file)
