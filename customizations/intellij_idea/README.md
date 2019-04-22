## `template` Customization
Installs Intellij idea -- either community or ultimate

### Method
Uses the "snap" method documented at the Intellij website

### Customizations
Choose the type of installation -- community or ultimate:
````
#
# settings for intellij idea
export devsetup_intellij_idea_type="community"
````
The only two allowed values are "community" and "ultimate" -- all lower case

### Notes
Before starting Intellij for the first time on a new machine, it may be quicker to copy the
settings file to the transfer directory, so that the settings will be available on the startup.
