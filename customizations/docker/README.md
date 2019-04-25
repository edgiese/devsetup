## `template` Customization
Install Docker from latest repositories.

### Method
Use `apt`. But the default repositories are too old, so use the latest ones.

### Customizations
````
#
# settings for docker
export devsetup_docker_user="none"
export devsetup_docker_password="none"
````

### Notes
This script uses `curl`, so be sure to install that first. Curl is included by default in `simple_apt`.
