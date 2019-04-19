## `template` Customization
This template doesn't do anything, but is intended to be copied to start a new customization.

### Method
Document the method you use to do the customization here.  Try not to skimp, and be transparent.
Especially document where you are being quick and dirty.

### Customizations
Document the environment variables here and what they are required to be.  The options are all
handled through environment variables.  The namespacing of them ought to be obvious.

For this template, as an example, there is
````
#
# settings for template
export devsetup_template_var1="MUST CHANGE"
````
The use MUST set this variable and it MUST be different than the default, or the script will not run.

### Notes
Whatever you want to note here is good.

Note that the `perform.sh` does two different functions, `check` and `run`.  If you don't look for the
`check` and end early, you will perform your task twice.

