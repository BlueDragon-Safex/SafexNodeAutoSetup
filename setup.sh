#!/bin/bash
# wget -c -P /home/scripts https://raw.githubusercontent.com/BlueDragon-Safex/SafexNodeAutoSetup/4d962b2af49a4fb85ca093b8f1611f896c0a548c/setup.sh
#chmod +x /home/scripts/setup.sh
# /home/scripts/setup.sh

mkdir -p /home/safex/lmdb/
mkdir -p /home/scripts/
sudo ufw allow 17402
sudo ufw allow 17401


# Get the community aliases
wget -c -P /root https://raw.githubusercontent.com/BlueDragon-Safex/SafexNodeAutoSetup/main/.bash_aliases

#activate
source ~/.bash_alaiases


#Get the manin script to run
wget -c -P /home/scripts https://raw.githubusercontent.com/BlueDragon-Safex/SafexNodeAutoSetup/main/node.sh

#activate it as a script
chmod +x /home/scripts/node.sh

#get the database
wget -c -P /home/safex/lmdb http://70.34.242.65/data.mdb


sudo apt-get update
apt-get install htop --assume-yes
apt-get install screen --assume-yes
apt-get install libnorm1 libpcsclite1 --assume-yes
sudo apt update

apt-get install snapd --assume-yes
sudo snap install docker

ln -s /snap/bin/docker /usr/bin/docker


./home/scripts/node.sh
