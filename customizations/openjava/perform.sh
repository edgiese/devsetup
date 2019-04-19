#!/bin/bash

if [ -z "$devsetup_openjava_versions" ]; then
    echo "Must set devsetup_openjava_versions"
    exit 1
fi
if [ -z "$devsetup_openjava_javahome" ]; then
    echo "Must set devsetup_openjava_javahome"
    exit 1
fi

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

sudo apt install -y $devsetup_openjava_versions
if [[ -z "${JAVA_HOME}" ]]; then
    cp /etc/environment /tmp/devsetup_env
    echo "JAVA_HOME=\"$devsetup_openjava_javahome\"" >> /tmp/devsetup_env
    sudo cp /tmp/devsetup_env /etc/environment
    rm /tmp/devsetup_env
    source /etc/environment
fi
