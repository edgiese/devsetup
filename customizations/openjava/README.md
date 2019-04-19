## `java11` customization
Installs java openjdk using apt-get

### Method
Uses apt-get. Note that these are the open-source jdks, which are simpler to install but
are not the officially supported Oracle versions.

### Customizations
````
#
# settings for openjava
export devsetup_openjava_versions="openjdk-11-jdk openjdk-8-jdk"
export devsetup_openjava_javahome="/usr/lib/jvm/openjdk-11-jdk"
````
The use MUST set this variable and it MUST be different than the default, or the script will not run.

### Notes
Update-alternatives will be set independently of the JAVA_HOME variable.
