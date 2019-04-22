#!/bin/bash

if [ -z "$devsetup_git_name" ]; then
    echo "Must set devsetup_git_name"
    exit 1
fi
if [ "$devsetup_git_name" == "MUST CHANGE" ]; then
    echo "Must override devsetup_git_name"
    exit 1
fi
if [ -z "$devsetup_git_email" ]; then
    echo "Must set devsetup_git_email"
    exit 1
fi
if [ "$devsetup_git_email" == "MUST CHANGE" ]; then
    echo "Must override devsetup_git_email"
    exit 1
fi

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

# perform action (default)
sudo apt-get install git
git config --global user.name "$devsetup_git_name"
git config --global user.email "$devsetup_git_email"
