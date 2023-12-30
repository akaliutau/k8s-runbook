# Batch Job

# Description

A Job resource is similar to a ReplicaSet as it creates one or more Pods and ensures they run successfully. 
The most close Cloud analogue - Cloud Run Jobs at GCP

`.spec.template.spec.restartPolicy` - `Always` is not allowed for a Job, and the only possible options are `OnFailure` or `Never`

`.spec.completions` -  Specifies how many Pods should run to complete a Job.

`.spec.parallelism` - Specifies how many Pod replicas could run in parallel.

# References

[1] [Parallel Processing using Expansions](https://kubernetes.io/docs/tasks/job/parallel-processing-expansion/)

[2] [Coarse Parallel Processing Using a Work Queue](https://kubernetes.io/docs/tasks/job/coarse-parallel-processing-work-queue/)

[3] [Fine Parallel Processing Using a Work Queue](https://kubernetes.io/docs/tasks/job/fine-parallel-processing-work-queue/)

[4] [Indexed Job for Parallel Processing with Static Work Assignment](https://kubernetes.io/docs/tasks/job/indexed-parallel-processing-static/)

[5] [Spring Batch on Kubernetes](https://spring.io/blog/2021/01/27/spring-batch-on-kubernetes-efficient-batch-processing-at-scale/)

