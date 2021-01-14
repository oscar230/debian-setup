#!/bin/bash

# Dependencies
sudo apt-get install -y apt-transport-https

# Add packages
sudo sh -c 'echo "deb https://deb.torproject.org/torproject.org stretch main\ndeb-src https://deb.torproject.org/torproject.org stretch main" > /etc/apt/sources.list.d/tor.list'
sudo sh -c 'curl "https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc" | gpg --import'
sudo sh -c 'gpg --export "A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89" | apt-key add -'
sudo apt-get update

# Install
sudo apt-get install -y tor deb.torproject.org-keyring

# Config
sudo systemctl enable tor
sudo systemctl start tor