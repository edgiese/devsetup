#!/bin/bash

if [ -z "$devsetup_ssh_key" ]; then
    echo "Must set devsetup_ssh_key"
    exit 1
fi
if [ -z "$devsetup_ssh_pub" ]; then
    echo "Must set devsetup_ssh_pub"
    exit 1
fi
if [ ! -f /vagrant_data/"$devsetup_ssh_key" ]; then
    echo "A key file named $devsetup_ssh_key must exist in /vagrant_data"
    exit 1
fi
if [ ! -f /vagrant_data/"$devsetup_ssh_pub" ]; then
    echo "A key file named $devsetup_ssh_pub must exist in /vagrant_data"
    exit 1
fi

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

# perform action (default)
cp "/vagrant_data/$devsetup_ssh_key" ~/.ssh
sudo chmod 400 ~/.ssh/$devsetup_ssh_key
cp "/vagrant_data/$devsetup_ssh_pub" ~/.ssh
