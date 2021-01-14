#!/bin/bash

# Install
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian buster contrib" > /etc/apt/sources.list.d/virtualbox.list'
NAME_ORACLE_VBOX_KEY=/tmp/oraclevbox.asc
wget "https://www.virtualbox.org/download/oracle_vbox_2016.asc" -O $NAME_ORACLE_VBOX_KEY
sudo apt-key add $NAME_ORACLE_VBOX_KEY
sudo apt-get update
sudo apt-get install -y virtualbox-6.1 linux-headers-$(uname -r) dkms
sudo groupadd -f vboxusers
sudo usermod -aG vboxusers $USER
sudo sh -c "echo 'vboxdrv' >> /etc/modules"

# Download
wget "https://download.virtualbox.org/virtualbox/6.1.16/Oracle_VM_VirtualBox_Extension_Pack-6.1.16.vbox-extpack" -O ~/Downloads/