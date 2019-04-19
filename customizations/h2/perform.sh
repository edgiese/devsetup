#!/bin/bash

if [ -z "$devsetup_h2_downloadfileurl" ]; then
    echo "Must set devsetup_h2_downloadfileurl"
    exit 1
fi

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

rm -rf ~/Downloads/h2.zip
wget -O ~/Downloads/h2.zip ${devsetup_h2_downloadfileurl}
if [ -d "/opt/h2" ]; then
    sudo rm -rf /opt/h2
fi

if [ -d "/tmp/h2" ]; then
    sudo rm -rf /tmp/h2
fi

unzip ~/Downloads/h2.zip -d /tmp/h2
sudo mv /tmp/h2/h2 /opt/h2
sudo chmod +x /opt/h2/bin/h2.sh
rm -rf ~/Downloads/h2.zip
rm -rf /tmp/h2
