#!/bin/bash

# Install
wget "https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb" -O /tmp/packages-microsoft-prod.deb
sudo dpkg -i /tmp/packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y powershell