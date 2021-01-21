#!/bin/bash

# PIDGIN AND OTR
# Install
sudo apt-get install -y pidgin pidgin-otr

# PIDGIN INDICATOR
# Install
sudo apt-get install -y libappindicator1
wget "http://ppa.launchpad.net/nilarimogard/webupd8/ubuntu/pool/main/p/pidgin-indicator/pidgin-indicator_1.0-1~webupd8~zesty0_amd64.deb" -O /tmp/pidgin-indicator.deb
sudo apt-get install -y /tmp/pidgin-indicator.deb