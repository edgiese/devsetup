#!/bin/bash

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

# perform action (default)
sudo apt install $devsetup_simple_apt_list
