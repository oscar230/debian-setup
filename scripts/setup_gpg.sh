#!/bin/bash

# Install
sudo apt-get install -y gnupg gpa

# Add keys
find gpg/* | xargs gpg --import private.key &