#!/bin/bash

mkdir /home/$USER/bin
echo 'EDITOR=vim' >> /home/$USER/.bashrc
find . -name "*setup*.sh" | xargs sudo chmod +rx

# Upgrade system
sudo apt-get update
sudo apt-get upgrade -y

# General apps
sudo apt-get install -y vim dconf-editor wget curl git git chromium vlc onionshare audacity libreoffice libreoffice-gnome texlive-full htop default-jre transmission filezilla gimp gparted p7zip-full nmap alacarte afl
sh setup_discord.sh
sh setup_gpg.sh
sh setup_ssh.sh
sh setup_electrum_xmr.sh
sh setup_minecraft.sh
sh setup_slack.sh
sh setup_tor.sh
sh setup_electrum_btc.sh
sh setup_etcher.sh
sh setup_torsocks.sh
sh setup_bisq.sh
sh setup_electrum_ltc.sh
sh setup_firefox.sh
sh setup_mega.sh
sh setup_popcorntime.sh
sh setup_tor_browser.sh
sh setup_unrar.sh

# Developer apps
sh setup_nodejs.sh
sh setup_datagrip.sh
sh setup_docker.sh
sh setup_git.sh
sh setup_virtualbox.sh
sh setup_dev.sh
sh setup_vscode.sh

# Cleanup
sudo apt-get autoremove -y
sudo apt-get autoclean -y
