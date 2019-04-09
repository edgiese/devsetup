#!/bin/bash
set -e

rm -rf ~/Downloads/h2.zip
wget -O ~/Downloads/h2.zip ${devsetup_h2_downloadfile}
sudo rm -rf /opt/h2

sudo mkdir /opt/h2
sudo unzip ~/Downloads/h2.zip -d /opt/h2
sudo chmod +x /opt/h2/bin/h2.sh
rm -rf ~/Downloads/h2.zip
