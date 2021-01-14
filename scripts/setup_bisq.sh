#!/bin/bash

wget "https://bisq.network/downloads/v1.5.4/Bisq-64bit-1.5.4.deb" -O /tmp/bisq.deb
sudo apt-get install -y /tmp/bisq.deb