#!/bin/bash

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

rm ~/*.iso
sudo apt-get remove -y --purge libreoffice*
sudo apt-get remove -y --purge thunderbird*
sudo apt-get clean
sudo apt-get autoremove
sudo apt-get update
if [ ! -z "$devsetup_final_steps_file" ]; then
    cd $devsetup_dir
    cat ../customizations/prune/laststeps.txt >> "$devsetup_final_steps_file"
fi
# apt list --installed | sed -e 's/^\(.*\)\/.*$/\1/' | grep -v grub | sudo xargs apt install -y
