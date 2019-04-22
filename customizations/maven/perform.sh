#!/bin/bash

if [ -z "$devsetup_maven_version" ]; then
    echo "Must set devsetup_maven_version"
    exit 1
fi

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

# perform action (default)
cd ~/Downloads
rm maven.tar.gz
wget http://www.apache.org/dist/maven/maven-3/${devsetup_maven_version}/binaries/apache-maven-${devsetup_maven_version}-bin.tar.gz -O maven.tar.gz
tar -xvzf maven.tar.gz
sudo rm -rf /opt/maven
sudo mv apache-maven-${devsetup_maven_version} /opt/maven
rm maven.tar.gz

sudo rm /etc/profile.d/mavenenv.sh
sudo bash -c 'echo "export M2_HOME=/opt/maven" > /etc/profile.d/mavenenv.sh'
sudo bash -c 'echo "export PATH=/opt/maven/bin:${PATH}" >> /etc/profile.d/mavenenv.sh'
sudo chmod +x /etc/profile.d/mavenenv.sh
source /etc/profile.d/mavenenv.sh




