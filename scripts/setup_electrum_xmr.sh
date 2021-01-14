#!/bin/bash

# Install
sudo mkdir /opt/feather
sudo wget "https://featherwallet.org/files/releases/linux-appimage/feather-beta-3.AppImage" -O /opt/feather/feather-beta-3.AppImage
sudo wget "https://git.wownero.com/feather/feather/raw/branch/master/src/assets/images/feather.png" -O /opt/feather/feather.png
sudo chmod +rx /opt/feather/*.AppImage

# Register app
sudo sh -c 'echo "
[Desktop Entry]
Version = 1.0
Type = Application
Terminal = false
Name = Feather Monero Wallet
Exec = /opt/feather/feather-beta-3.AppImage %u
Icon = /opt/feather/feather.png
Categories = Application;
" > /usr/share/applications/feather.desktop'