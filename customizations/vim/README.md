## `vim` Customization
Installs the vim editor, and optionally, loads a git-based vimrc file.

### Method
Vim is installed by calling apt-get. The .vimrc directory gets symbolically linked to a vimrc
directory downloaded from git.

### Customizations
````
#
# settings for vim
export devsetup_vim_giturl="[vim url here]"
export devsetup_vim_force="any_value_here"
````
If you want to install a .vimrc directory with vim customizations from a git repository, simply
put the url for that repository in the `giturl` variable. By default, this customization will
fail if there is already a .vimrc directory in place, which will happen, for instance, if you
start vim before running this.  The `force` variable, if defined, will cause the customization
to delete this directory -- which makes the customization idempotent at the risk of losing
vim customizations made before or after installation.

### Notes
* Don't set force unless you want to be able to restore vim to "out-of-the-box" status.
* If you are installing a .vim directory from a git repo, the `git` is a dependency.

