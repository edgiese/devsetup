#!/bin/bash

if [ -z "$devsetup_tomcat_version" ]; then
    echo "Must set devsetup_tomcat_version"
    exit 1
fi

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

# perform action (default)
cd ~/Downloads
curl http://apache.claz.org/tomcat/tomcat-9/v${devsetup_tomcat_version}/bin/apache-tomcat-${devsetup_tomcat_version}.tar.gz -o tomcat.tar.gz
if [ ! -d /opt/tomcat ]; then
   sudo mkdir /opt/tomcat
fi
if [ -d /opt/tomcat/tomcat-${devsetup_tomcat_version} ]; then
    sudo rm -rf /opt/tomcat/tomcat-${devsetup_tomcat_version}
fi
sudo mkdir /opt/tomcat/tomcat-${devsetup_tomcat_version}
sudo tar xvzf tomcat.tar.gz -C /opt/tomcat/tomcat-${devsetup_tomcat_version} --strip-components=1
if [ -f /opt/tomcat/latest ]; then
    sudo rm /opt/tomcat/latest
fi
sudo ln -s /opt/tomcat/tomcat-${devsetup_tomcat_version} /opt/tomcat/latest 
rm tomcat.tar.gz

