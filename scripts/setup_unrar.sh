#!/bin/bash

# Install
wget "http://ftp.us.debian.org/debian/pool/non-free/u/unrar-nonfree/unrar_5.6.6-1_amd64.deb" -O /tmp/unrar.deb
sudo apt-get install -y /tmp/unrar.deb