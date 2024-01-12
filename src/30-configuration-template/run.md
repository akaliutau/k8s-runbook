# Configuration Template

# Description

Configuration Template pattern enables you to create and process large and complex configurations during application startup

To reduce duplication, it makes sense to store only the differing configuration values like database connection parameters
in a ConfigMap or even directly in environment variables. 
During startup of the container, these values are processed with configuration templates to create 
the full configuration file (usually this happens in init container)


# References

[1] [Tiller (configuration files generator)](https://github.com/markround/tiller)

[2] [Gomplate (cli for template rendering)](https://github.com/hairyhenderson/gomplate)