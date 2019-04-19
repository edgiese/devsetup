#!/bin/bash

#if [ -z "$devsetup_h2_downloadfileurl" ]; then
    #echo "Must set devsetup_h2_downloadfileurl"
    #exit 1
#fi

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

sudo apt install -y openjdk-11-jdk
if [[ -z "${JAVA_HOME}" ]]; then
    sudo su
    echo "JAVA_HOME=\"/usr/lib/jvm/java-11-openjdk-amd64\"" >> /etc/environment
    exit
    source /etc/environment
fi
