## `java11` customization
Installs java openjdk using apt-get

### Method
Uses apt-get. Note that these are the open-source jdks, which are simpler to install but
are not the officially supported Oracle versions.

### Customizations
````
#
# settings for openjava
export devsetup_openjava_versions="openjdk-8-jdk"
export devsetup_openjava_javahome="/usr/lib/jvm/openjdk-8-jdk"
````

### Notes
Update-alternatives will be set independently of the JAVA_HOME variable.
Note that at the time of this writing, opejdk-11 is not working correctly.
