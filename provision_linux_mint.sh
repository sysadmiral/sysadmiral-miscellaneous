#!/bin/bash

# a record of the steps i nearly always run to get a Linux Mint install the way I like.

# TODO - find a way to "boxen" this process.

# remove unwanted software
sudo apt-get purge -y speech-dispatcher speech-dispatcher-audio-plugins gnome-screenshot tomboy gimp simple-scan firefox firefox-locale-en hexchat pidgin thunderbird transmission-gtk libreoffice-core totem banshee brasero vlc gimp-help-common
sudo apt-get autoremove -y

#add additonal repos to sourcelists
echo "deb https://download.01.org/gfx/ubuntu/14.04/main trusty main" | sudo tee /etc/apt/sources.list.d/intellinuxgraphics.list
echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb.list
wget https://repo.percona.com/apt/percona-release_0.1-3.trusty_all.deb -O /tmp/percona.deb && sudo dpkg -i /tmp/percona.deb
wget http://dev.mysql.com/get/mysql-apt-config_0.6.0-1_all.deb -O /tmp/mysql.deb && sudo dpkg -i /tmp/mysql.deb
sudo add-apt-repository ppa:git-core/ppa
sudo add-apt-repository ppa:kilian/f.lux
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next

#add required apt-keys
wget --no-check-certificate https://download.01.org/gfx/RPM-GPG-KEY-ilg -O- | sudo apt-key add -
wget --no-check-certificate https://download.01.org/gfx/RPM-GPG-KEY-ilg-2 -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

#update apt cache and install additional software
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git virtualbox-5.0 mongodb-org-shell mysql-community-client fluxgui clusterssh curl dkms gnome-do golang meld nmap pwgen remmina remmina-plugin-rdp subversion tree vim wget whois xtrlock apt-file at dos2unix xxxterm shutter

#manual installs
install atom <- from site
install dropbox <- from site
install google-chrome-stable <- from site
install vagrant <- from site
