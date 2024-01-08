Thesaurus and definitions
==========================

## Pod Conditions

Pod conditions list all the different conditions a Pod goes through. It consists of six fields:

* _lastProbeTime_: This is a timestamp that shows the last time the condition was enquired.
* _lastTransitionTime_: This is a timestamp that shows the last time the Pod status changed.
* _Message_: This has the details of the condition changes.
* _Reason_: This provides the reason for the last condition change in a single word.
* _Status_: This shows the status of the related condition, which can be True, False, or Unknown.
* _Type_: This shows the type of condition.

## Pod Phase

Phase provides high-level information about the current status of the Pod. 

* _Pending_: This phase specifies that the Pod is waiting for something to finish. 
  This could be the phase where the container images are being downloaded or where the nodes are being evaluated to schedule the Pod.
* _Failed_: This phase specifies that at least one of the containers finished with failure.
* _CrashLoopBackOff_: This phase shows that at least one of the containers finished with failure. 
  This phase appears after a few restart trials, which can be set by restartPolicy.
* _Running_: This phase indicates that the Pod is successfully scheduled to a node, and all the related containers started. 
  However, it does not give any guarantees that the containers are healthy.
* _Succeeded_: This phase shows that the containers in the Pod have successfully concluded.
* _Completed_: This phase states that the Pod has reached completion and is no longer running. This can be observed in the Pods created by a Job.
* _Unknown_: This phase informs that Kubernetes does not know the current state of the Pod. 
  This usually happens when Kubernetes API Server can no longer access the node where the Pod is running.