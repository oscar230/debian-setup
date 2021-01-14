#!/bin/bash

# Install mega and nautilus integration
NAME_MEGA=/tmp/megasync.deb
wget "https://mega.nz/linux/MEGAsync/Debian_10.0/amd64/megasync-Debian_10.0_amd64.deb" -O $NAME_MEGA
NAME_MEGA=/tmp/nautilus-megasync.deb
wget "https://mega.nz/linux/MEGAsync/Debian_10.0/amd64/nautilus-megasync-Debian_10.0_amd64.deb" -O $NAME_MEGA
NAME_MEGA=/tmp/megacmd.deb
wget "https://mega.nz/linux/MEGAsync/Debian_10.0/amd64/megacmd-Debian_10.0_amd64.deb" -O $NAME_MEGA
sudo apt-get install -y /tmp/megasync.deb /tmp/nautilus-megasync.deb /tmp/megacmd.deb