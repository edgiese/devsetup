#!/bin/bash

# prerequisite:  no .vimrc file
if [ -d ~/.vim ]; then
    if [ ! -z "$devsetup_vim_force" ]; then
        echo "removing..."
        rm -rf ~/.vimrc ~/.vim
    else
        echo "Prerequisite is to remove existing ~/.vim directory"
        exit 1
    fi
fi

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

# perform action (default)j
sudo apt-get install -y vim
if [ ! -z "$devsetup_vim_gitrepo" ]; then
    echo $devsetup_vim_gitrepo
    git clone $devsetup_vim_gitrepo ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
fi

