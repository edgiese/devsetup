## `simple_apt` Customization
Some customizations are nothing more than a list of apt installs.  This customization handles
all of them.

### Method
An setting is the space delimited list of apt packages. No more is needed than simply to use
this list as arguments for `apt install`.

### Customizations
The only setting is the space delimited list of packages to install. The default is:
````
#
# settings for simple_apt
export devsetup_simple_apt_list="vim curl ctags wget"
````
The use MUST set this variable.  No other checking than existence is applied before using it
as arguments for `apt install`.

### Notes
This step should probably done after `prune` to avoid upgrading more packages than necessary.
