#!/bin/bash

mkdir /home/$USER/bin
echo 'EDITOR=vim' >> /home/$USER/.bashrc
find scripts/ -name "*setup*.sh" | xargs sudo chmod +rx

# Upgrade system
sudo apt-get update
sudo apt-get upgrade -y

# General apps
sudo apt-get install -y vim dconf-editor wget curl git git chromium vlc onionshare audacity libreoffice libreoffice-gnome texlive-full htop default-jre transmission filezilla gimp gparted p7zip-full nmap alacarte afl ffmpeg tesseract-ocr keepassxc
sh scripts/setup_discord.sh
sh scripts/setup_gpg.sh
sh scripts/setup_ssh.sh
sh scripts/setup_electrum_xmr.sh
sh scripts/setup_minecraft.sh
sh scripts/setup_slack.sh
sh scripts/setup_tor.sh
sh scripts/setup_electrum_btc.sh
sh scripts/setup_etcher.sh
sh scripts/setup_torsocks.sh
sh scripts/setup_bisq.sh
sh scripts/setup_electrum_ltc.sh
sh scripts/setup_firefox.sh
sh scripts/setup_mega.sh
sh scripts/setup_popcorntime.sh
sh scripts/setup_tor_browser.sh
sh scripts/setup_unrar.sh
sh scripts/setup_xmpp.sh

# Developer apps
sh scripts/setup_nodejs.sh
sh scripts/setup_datagrip.sh
sh scripts/setup_docker.sh
sh scripts/setup_git.sh
sh scripts/setup_virtualbox.sh
sh scripts/setup_dev.sh
sh scripts/setup_vscode.sh
sh scripts/setup_arduino.sh

# Cleanup
sudo apt-get autoremove -y
sudo apt-get autoclean -y
