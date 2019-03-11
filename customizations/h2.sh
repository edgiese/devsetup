rm -rf ~/Downloads/h2.zip
wget -O ~/Downloads/h2.zip http://www.h2database.com/h2-2018-03-18.zip
sudo rm -rf /opt/h2
sudo mkdir /opt/h2
sudo unzip ~/Downloads/h2.zip -d /opt/h2
sudo chmod +x /opt/h2/bin/h2.sh
