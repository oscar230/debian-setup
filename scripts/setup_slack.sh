#!/bin/bash

wget "https://downloads.slack-edge.com/linux_releases/slack-desktop-4.12.0-amd64.deb" -O /tmp/slack-desktop.deb
sudo apt-get install -y /tmp/slack-desktop.deb