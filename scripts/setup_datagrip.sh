#!/bin/bash

# Install
wget "https://download-cf.jetbrains.com/datagrip/datagrip-2020.3.1.tar.gz" -O /tmp/datagrip.tar.gz
sudo tar xzf /tmp/datagrip.tar.gz -C /opt/
(cd /opt/DataGrip*; cd bin; ./datagrip.sh &)