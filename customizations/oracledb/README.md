## `template` Customization
Installs Oracle Database in a Docker Container

### Method
Simple docker pull followed by docker run.

### Customizations
````
#
# settings for template
export devsetup_oracledb_version="12.2.0.1"
export devsetup_oracledb_slim="-slim"
export devsetup_oracledb_name="oracle"
````
The use MUST set this variable and it MUST be different than the default, or the script will not run.

### Notes
Whatever you want to note here is good.

Note that the `perform.sh` does two different functions, `check` and `run`.  If you don't look for the
`check` and end early, you will perform your task twice.

