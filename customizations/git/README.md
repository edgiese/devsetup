## `git` Customization
Installs git if it's not installed and sets required parameters.

### Method
`apt-get` is perfectly fine to install git.  This customization adds user settings for
name and email that must be set for git to work properly in most cases.

### Customizations
````
# settings for git
# set your NAME which will appear on commits:
export devsetup_git_name="MUST CHANGE"
# set your EMAIL which will appear on commits:
export devsetup_git_email="MUST CHANGE"
````
The use MUST set this variable and it MUST be different than the default, or the script will not run.

### Notes
Sites that use ssh to push and pull git repositories will still not work unless SSH public/private keys
have been properly set up on the system checking out and whatever remote site is being used.  Use ths
ssh customization to set that up if desired.
