#!/bin/bash

# Install
curl -fsSL "https://get.docker.com" -o /tmp/get-docker.sh
sudo sh /tmp/get-docker.sh

# Setup user group
sudo groupadd -f docker
sudo usermod -aG docker $USER

# Config
sudo systemctl enable docker
sudo systemctl start docker

# Done
docker --version