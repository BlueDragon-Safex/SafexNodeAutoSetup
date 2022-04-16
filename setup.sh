#!/bin/bash
# wget -c -P /home/scripts http://70.34.242.65/setup.sh
#chmod +x /home/scripts/setup.sh
# /home/scripts/setup.sh

mkdir -p /home/safex/lmdb/
mkdir -p /home/scripts/
ufw allow 17402
ufw allow 17401


# Get the community aliases
wget -c -P /root http://70.34.242.65/.bash_aliases

#activate
source ~/.bash_aliases

#Get the manin script to run
wget -c -P /home/scripts http://70.34.242.65/node.sh

#activate it as a script
chmod +x /home/scripts/node.sh

#get the database
wget -c -P /home/safex/lmdb http://70.34.242.65/data.mdb


sudo apt-get update
apt-get install htop --assume-yes
apt-get install screen --assume-yes
sudo apt install libnorm1 libpcsclite1 --assume-yes
sudo apt update  

sudo apt install snapd 
sudo snap install docker 

ln -s /snap/bin/docker /usr/bin/docker  


./home/scripts/node.sh
