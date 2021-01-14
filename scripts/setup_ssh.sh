#!/bin/bash

# Install
sudo apt-get install -y ssh

# Add keys
#find ssh/* | xargs ssh-add
cp ssh/* ~/.ssh/

# Set permissions
sudo chmod 600 /home/$USER/.ssh/*
sudo chmod +r /home/$USER/.ssh/*.pub
sudo chmod 770 /home/$USER/.ssh/known_hosts

# Add public keys to known hosts
sudo sh -c 'ssh-keyscan -t rsa github.com >> /etc/ssh/ssh_known_hosts'