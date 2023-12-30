# Declarative Deployment

# Description

A Deployment can be fully managed by updating the Kubernetes resources files.

`kubectl rollout status`- Shows the current status of a Deployment’s rollout.

`kubectl rollout pause` - Pauses a rolling update so that multiple changes can be applied to a Deployment without retriggering another rollout.

`kubectl rollout resume` - Resumes a previously paused rollout.

`kubectl rollout undo` - Performs a rollback to a prevision revision of a Deployment. A rollback is helpful in case of an error during the update.

`kubectl rollout history` - Shows the available revisions of a Deployment.

`kubectl rollout restart` - Does not perform an update but restarts the current set of Pods belonging to a Deployment using the configured rollout strategy.

# References

[1] [Performing a Rolling Update](https://kubernetes.io/docs/tutorials/kubernetes-basics/update/update-intro/)

[2] [Flagger - Deployment Strategies](https://fluxcd.io/flagger/usage/deployment-strategies/)

[3] [Argo Rollouts (Kubernetes controller and set of CRDs)](https://argoproj.github.io/argo-rollouts/)