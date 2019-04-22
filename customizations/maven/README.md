## `template` Customization
Installs the user-specified version of Maven.

### Method
Download from the Apache website, unpack into an /opt/ directory, then update environment
variables to point to it properly.

### Customizations
````
#
# settings for template
export devsetup_maven_version="3.3.9"
````

### Notes
There is no attempt to check if the version of maven is correct by file existence on the website.
This script will just fail in an indeteminate way of the version is incorrect or missing.
