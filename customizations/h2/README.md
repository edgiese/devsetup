## `h2` customization
Installs h2 as command into /opt/h2.

### Method
Uses wget to get the zip file from the h2 website, then unzips it into the /opt directory.  Finally, makes the h2.sh command executable.

### Customizations
`devsetup_h2_downloadfileurl` The url that is used for wget.  Customized to allow easy updating.

### Notes
Only the latest available file on the h2 website will properly work, so it is essential to update the url in the customization.
