#!/bin/bash

# Install
wget "https://mirror04.popcorntime.app/build/Popcorn-Time-0.4.4-linux64.zip" -O /tmp/pop.zip
sudo mkdir /opt/popcorntime
sudo unzip /tmp/pop.zip -d /opt/popcorntime/ -o
sudo ln -sf /opt/popcorntime/Popcorn-Time /usr/bin/Popcorn-Time

# Register app
echo "
[Desktop Entry]
Version = 1.0
Type = Application
Terminal = false
Name = Popcorn Time
Exec = /usr/bin/Popcorn-Time
Icon = /opt/popcorntime/popcorn.png
Categories = Application;
" > /tmp/popcorntime.desktop
sudo mv /tmp/popcorntime.desktop /usr/share/applications/

# Add icon to desktop entry
sudo wget "https://upload.wikimedia.org/wikipedia/commons/d/df/Pctlogo.png" -O /opt/popcorntime/popcorn.png