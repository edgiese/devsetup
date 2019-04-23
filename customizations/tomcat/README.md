## `template` Customization
Installs the tomcat server in the version specified

### Method
https://www.digitalocean.com/community/tutorials/install-tomcat-9-ubuntu-1804

### Customizations
````
#
# settings for tomcat
export devsetup_tomcat_version="9.0.19"
````

### Notes
There is no checking performed on the version.  If it does not correspond to an actual
downloadable version on the tomcat site, the customization will fail in an unpredicatable way.

The referenced link has a lot of stuff about setting up group and making a service. None
of that is being done currently. This customization simply loads the specified version
of tomcat into /opt and symlinks to `/opt/tomcat/latest`.
