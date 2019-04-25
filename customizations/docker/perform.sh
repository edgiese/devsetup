#!/bin/bash

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

# perform action (default)
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install -y docker-ce
sudo usermod -aG docker vagrant

if [[ ! -z "$devsetup_docker_user" && ! -z "$devsetup_docker_password" && "$devsetup_docker_user" != "none" && "$devsetup_docker_password" != "none" ]]; then
    sudo docker login --username=$devsetup_docker_user --password="$devsetup_docker_password"
fi
