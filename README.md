# devsetup for Ubuntu Desktop

## The Goal of isolated development environments

Development environments often involve setting up development versions of
servers, databases, and other services that are used to simulate microservice
architectures while attempting work on one piece or microservice.  The ad hoc
nature of these efforts often leaves machines in odd states.  The theory that
servers should be "cattle, not pets" -- in other words, have a low barrier to
discard and re-create -- has been difficult.

There are no perfect solutions to this.  One tolerably good solution is to use
a virtualized desktop machine, such as supported by VirtualBox.  The host
environment can stay stable and clean, and the guest machine can be more easily
disposed of.

One feature of virtualbox that makes this more attractive are guest additions
that allow cutting and pasting between a guest desktop and the host system.
Using these, it is feasible for a develper to use the host system for testing
(through exposed ports) and admin (email, documentation production, team
communications, etc.) while doing the actual development work on the guest
desktop, where an IDE or equivalent tool is the center of effort.

This repository is designed to be used when a developer has a host system that
can run `vagrant` and wants to have an easily reproducible development
environment.

## The purpose of `devsetup`

`devsetup` is designed to eliminate the tedious setup steps necessary
for setting up environments.

It is a collection of reusable pieces that can be put together and customized
so that a developer can think through the process once, then after that quickly
reproduce the environment.

## A Simple way to `devsetup`

**Set up the vagrant.** The Vagrantfile included in this repository is for a
workable Ubuntu desktop. Others can be used, although obviously any change might
make the customizations work differently.  _Review the Vagrantfile_ before using it
to make certain that exported ports, memory allocation, and number of cpus is set
appropriately for the development guest machine.

It doesn't really matter what the host system is running, as long as `vagrant` and
`virtualbox` are supported.  However, the Vagrantfile as provided requires a directory
in the vagrant directory called `xfer` which will appear as `/vagrant_data` on the 
guest machine.  The name of the guest machine directory is hardcoded into many of 
the customization scripts, so do not change this.

When the Vagrantfile is ready, you can bring up the vagrant with the command

````
vagrant up
````

**Bootstrap devsetup.** Once the vagrant is running, you should set up a subdirectory
of the home directory (which is `/home/vagrant`) with devsetup in it.  There are two
roughly equivalent ways of doing this:

````
sudo apt install git
git clone https://github.com/edgiese/devsetup
````

The second way is to transfer a zip file with devsetup into it and create the directory and
unzip the file.  There is little difference between these approaches.

Once `devsetup` has been installed, you can build a new script using customizations, or you can
import a saved configuration 
