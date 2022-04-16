#!/bin/bash


mkdir -p /home/safex/lmdb/
mkdir -p /home/scripts/
ufw allow 17402
ufw allow 17401


# Get the community aliases
wget -c -P /root
https://github.com/BlueDragon-Safex/SafexNodeAutoSetup/blob/main/.bash_aliases

#activate
source ~/.bash_alaiases


#Get the manin script to run
wget -c -P /home/scripts https://github.com/BlueDragon-Safex/SafexNodeAutoSetup/blob/main/node.sh

#activate it as a script
chmod +x /home/scripts/node.sh

#get the database
wget -c -P /home/safex/lmdb http://70.34.242.65/data.mdb


apt-get update
apt-get install htop --assume-yes
apt-get install screen --assume-yes
apt-get install libnorm1 libpcsclite1 --assume-yes
apt update  

apt-get install snapd --assume-yes
snap install docker 

ln -s /snap/bin/docker /usr/bin/docker  


./home/scripts/node.sh
