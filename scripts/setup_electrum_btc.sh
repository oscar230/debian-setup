#!/bin/bash

# Install
sudo mkdir /opt/electrum
sudo wget "https://download.electrum.org/4.0.9/electrum-4.0.9-x86_64.AppImage" -O /opt/electrum/electrum-4.0.9-x86_64.AppImage
sudo wget "https://raw.githubusercontent.com/spesmilo/electrum/master/electrum/gui/icons/electrum.png" -O /opt/electrum/electrum.png
sudo chmod +rx /opt/electrum/*.AppImage

# Register app
sudo sh -c 'echo "
[Desktop Entry]
Version = 1.0
Type = Application
Terminal = false
Name = Electrum Bitcoin Wallet
Exec = /opt/electrum/electrum-4.0.9-x86_64.AppImage %u
Icon = /opt/electrum/electrum.png
Categories = Application;
" > /usr/share/applications/electrum.desktop'