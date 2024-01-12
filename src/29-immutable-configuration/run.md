# Immutable configuration

# Description

Immutability in terms of configuration means that we cannot change the configuration after the application has started, in order to ensure 
that we always have a well-defined state for our configuration data. 
In addition, immutable configuration can be put under version control and follow a change control process.

Image-based approach (aka Data Containers): use different configuration data images for different environments. 
These images then combine all configuration information for specific environments and 
can be versioned like any other container image.

Pros:

* Environment-specific configuration is container-sealed => it can be versioned like any other code/image
* Configuration created this way can be distributed over a container registry or be examined without accessing the cluster
* The configuration is immutable, a change in the configuration requires a version update and a new image
* Configuration data images are useful when the configuration data is too complex to put into environment variables  
  or ConfigMaps, there is no limitations of ConfigMaps

Cons:

* It has higher complexity, because extra container images need to be built and distributed via registries
* It does not address any of the security concerns around sensitive configuration data
* DevOps overhead

# References

[1] [docker-flexvol (driver for kubernetes which allows you to mount Docker volumes)](https://github.com/dims/docker-flexvol)

[2] [CSI driver for mounting images as PVs](https://github.com/warm-metal/csi-driver-image)