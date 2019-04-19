#!/bin/bash

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

sudo apt-get remove -y --purge libreoffice*
sudo apt-get clean
sudo apt-get autoremove
sudo apt-get remove -y --purge thunderbird*
sudo apt-get clean
sudo apt-get autoremove
sudo apt-get update
apt list --installed | sed -e 's/^\(.*\)\/.*$/\1/' | grep -v grub | sudo xargs apt install -y
