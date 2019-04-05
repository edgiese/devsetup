#!/bin/bash

if [[ -z "${INTELLIJ_IDEA_VERSION}" ]]; then
    INTELLIJ_IDEA_VERSION=ideaIU-2018.3.5
fi

if [[ ! -f /vagrant_data/$INTELLIJ_IDEA_VERSION.tar.gz ]]; then
    echo need /vagrant_data/$INTELLIJ_IDEA_VERSION.tar.gz
    exit 1
fi

# intellij load script
if [ ! -f /opt/intellij ]; then
    sudo mkdir /opt/intellij
fi

if [ ! -f /opt/intellij/idea ]; then
    sudo mkdir /opt/intellij/idea
fi

sudo rm -rf /opt/intellij/idea/new
sudo mkdir /opt/intellij/idea/new
sudo tar -xvf /vagrant_data/$INTELLIJ_IDEA_VERSION.tar.gz -C /opt/intellij/idea/new

# get name of subdirectory in this version
dirname=`ls /opt/intellij/idea/new`

# move this subdirectory to the idea folder, then delete empty container
sudo mv /opt/intellij/idea/new/$dirname /opt/intellij/idea/$dirname
sudo rm -rf /opt/intellij/idea/new

sudo rm -f /opt/intellij/idea/latest
sudo ln -s /opt/intellij/idea/$dirname /opt/intellij/idea/latest

cp idea.desktop ~/.local/share/applications
