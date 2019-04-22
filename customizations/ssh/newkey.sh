#!/bin/bash

if [ $# != 1 ]; then
    echo "usage: customizations/ssh/newkey.sh [email-or-comment]"
    exit 1
fi

if [ -f ~/.ssh/id_rsa ]; then
    echo "id_rsa already exists.  Delete it or don't do this."
    exit 1
fi

cd ~/.ssh
ssh-keygen -C "$1" -t rsa -b 4096 -f id_rsa -P ""
cp id_rsa /vagrant_data
cp id_rsa.pub /vagrant_data
