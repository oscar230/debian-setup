#!/bin/bash

# Download and install
wget "https://www.torproject.org/dist/torbrowser/10.0.7/tor-browser-linux64-10.0.7_en-US.tar.xz" -O /tmp/tor-browser.tar.xz
tar -xf /tmp/tor-browser.tar.xz -C ~/

# Register app
(cd ~/tor-browser_en-US/ ; ./start-tor-browser.desktop --register-app)

# Update bookmarks
mv tor_browser_bookmarks.html ~/tor-browser_en-US/Browser/TorBrowser/Data/Browser/profile.default/bookmarks.html