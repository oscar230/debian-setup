#!/bin/bash

# DOCKER
# Install
curl -fsSL "https://get.docker.com" -o /tmp/get-docker.sh
sudo sh /tmp/get-docker.sh

# Setup user group
sudo groupadd -f docker
sudo usermod -aG docker $USER

# Config
sudo systemctl enable docker
sudo systemctl start docker

# DOCKER COMPOSE
# Install
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# DOCKER COMPOSE COMMAND LINE COMPLETION
# Install
sudo curl -L "https://raw.githubusercontent.com/docker/compose/1.28.0/contrib/completion/bash/docker-compose" -o /etc/bash_completion.d/docker-compose
