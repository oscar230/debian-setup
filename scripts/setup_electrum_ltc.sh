#!/bin/bash

# Install
sudo mkdir /opt/electrum-ltc
sudo wget "https://electrum-ltc.org/download/electrum-ltc-3.3.8.1-x86_64.AppImage" -O /opt/electrum-ltc/electrum-ltc-3.3.8.1-x86_64.AppImage
sudo wget "https://raw.githubusercontent.com/pooler/electrum-ltc/master/electrum_ltc/gui/icons/electrum-ltc.png" -O /opt/electrum-ltc/electrum-ltc.png
sudo chmod +rx /opt/electrum-ltc/*.AppImage

# Register app
sudo sh -c 'echo "
[Desktop Entry]
Version = 1.0
Type = Application
Terminal = false
Name = Electrum Litecoin Wallet
Exec = /opt/electrum-ltc/electrum-ltc-3.3.8.1-x86_64.AppImage %u
Icon = /opt/electrum-ltc/electrum-ltc.png
Categories = Application;
" > /usr/share/applications/electrum-ltc.desktop'