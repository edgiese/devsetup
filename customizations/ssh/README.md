## `template` Customization
Copies key files for ssh into the correct places

### Method
Straightforward copy of files.

### Customizations
Default file names `id_rsa` and `id_rsa.pub` can be overwritten.
````
#
# settings for ssh
export devsetup_ssh_key="id_rsa"
export devsetup_ssh_pub="id_rsa.pub"
````

### Notes
There is a super quick utility shell in the ssh custom directory that will set up a new
private and public key file for you and put them where they need to be.  Only use this if
you don't already have a key.
````
customizations/ssh/newkey.sh [email-or-comment]
````
Any new key you use will need to be published to any
git repositories or other hosts that the development environment must reach.

