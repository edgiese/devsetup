## `template` Customization
Installs Oracle SQL Developer Environment

### Method
* Copies and unzips user-provided file to /opt/sqldeveloper
* Sets a fixed java sdk
* Optionally installs jdk javafx libraries
* Adds sqldeveloper directory to the path
* Adds a .desktop for the application

### Customizations
````
#
# settings for template
export devsetup_sqldeveloper_full_version="19.1.0.094.2042"
export devsetup_sqldeveloper_short_version="19.1.0"
export devsetup_sqldeveloper_sdk="/usr/lib/jvm/java-8-openjdk-amd64"
````
The use MUST set this variable and it MUST be different than the default, or the script will not run.

### Notes
At the time of this customization's creation, open java sdk 8 works OK, although technically only
the Oracle sdk is supported. Additional options to support more than one SDK are on the to do list.

Note that the java fx library is installed by this customization, and it is the older version compatible
with the java 8 sdk.  Once this has been installed, `apt update` will always overwrite it.

If the java fx library is not there, then a few features, including the landing page, will not work
correctly, however, the rest of sql developer appears to work fine.
