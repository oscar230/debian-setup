#!/bin/bash

# PIDGIN AND OTR
# Install
sudo apt-get install -y pidgin pidgin-otr

# PIDGIN INDICATOR
# Install
sudo apt-get install -y libappindicator1 libappindicator-dev appindicator3-0.1 libappindicator3-dev pidgin-dev autoconf automake libtool intltool libgtk-3-dev
git clone "git@github.com:philipl/pidgin-indicator.git" /tmp/pidgin-indicator
(cd /tmp/pidgin-indicator; autoreconf -i)
(cd /tmp/pidgin-indicator; ./configure)
(cd /tmp/pidgin-indicator; make)
(cd /tmp/pidgin-indicator; make install-am)