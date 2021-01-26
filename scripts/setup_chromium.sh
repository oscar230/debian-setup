#!/bin/bash

# Install
sudo apt-get install -y chromium

# Register app
echo "
[Desktop Entry]
Version = 1.0
Type = Application
Terminal = false
Name=Tor Chromium Web Browser
Exec =chromium --proxy-server=socks5://localhost:9050 --incognito --temp-profile https://duckduckgo.com/
Icon=chromium
Categories=Network;WebBrowser;
" > /tmp/chromium_tor.desktop
sudo mv /tmp/chromium_tor.desktop /usr/share/applications/