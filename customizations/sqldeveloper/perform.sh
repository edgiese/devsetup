#!/bin/bash

if [ -z "$devsetup_sqldeveloper_full_version" -o -z "$devsetup_sqldeveloper_short_version" -o -z "$devsetup_sqldeveloper_sdk" ]; then
    echo "Must set devsetup_sqldeveloper_full_version and devsetup_sqldeveloper_short_version"
    exit 1
fi
zip_file_name="sqldeveloper-${devsetup_sqldeveloper_full_version}-no-jre.zip"
zip_file_path="/vagrant_data/$zip_file_name"
if [ ! -f "$zip_file_path" ]; then
    echo "Required file does not exist: $zip_file_path"
    exit 1
fi

# required 'check' code
if [ $1 == "check" ]; then
    exit 0
fi

# perform action (default)
# unzip and install files
cd ~/Downloads
cp "$zip_file_path" .
unzip "$zip_file_name"
sudo rm -rf /opt/sqldeveloper
sudo mv sqldeveloper /opt
rm "$zip_file_name"

# make settings
echo "SetJavaHome ${devsetup_sqldeveloper_sdk}" > ~/.sqldeveloper/${devsetup_sqldeveloper_short_version}/product.conf

sudo rm /etc/profile.d/sqldeveloper.sh
sudo bash -c 'echo "export PATH=\$PATH:/opt/sqldeveloper/sqldeveloper/bin" >> /etc/profile.d/sqldeveloper.sh'
sudo chmod +x /etc/profile.d/sqldeveloper.sh

cd $devsetup_dir
cp ../customizations/sqldeveloper/sqldeveloper.desktop ~/.local/share/applications
sudo gtk-update-icon-cache
sudo apt install -y --allow-downgrades --allow-change-held-packages libopenjfx-java=8u161-b12-1ubuntu2
sudo apt-mark hold libopenjfx-java
sudo apt install -y --allow-downgrades --allow-change-held-packages libopenjfx-jni=8u161-b12-1ubuntu2
sudo apt-mark hold libopenjfx-jni
sudo apt install -y --allow-downgrades --allow-change-held-packages openjfx=8u161-b12-1ubuntu2
sudo apt-mark hold openjfx

sudo apt install -y libopenjfx-java=8u161-b12-1ubuntu2
sudo apt-mark hold libopenjfx-java
sudo apt install -y libopenjfx-jni=8u161-b12-1ubuntu2
sudo apt-mark hold libopenjfx-jni
sudo apt install -y openjfx=8u161-b12-1ubuntu2
sudo apt-mark hold openjfx
