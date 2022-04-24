#!/bin/bash
# community version: 2022.04.24..11:56 (YYYY.MM.DD..HH:mm)
#These are the 4 lines you will paste or type to perform the auto setup (without the hashtag) 
#sudo apt-get install dos2unix --assume-yes
#wget -c -P /home/scripts http://70.34.242.65/setup.sh
#dos2unix /home/scripts/setup.sh
#chmod +x /home/scripts/setup.sh
#sh /home/scripts/setup.sh

echo ********************************************
echo STEP 1: Creating needed directories
mkdir -p /home/safex/lmdb/
mkdir -p /home/scripts/
ufw allow 17402
ufw allow 17401
sudo apt-get install dos2unix --assume-yes
echo 
echo ********************************************
echo STEP 2: Importing the community aliases
wget -c -P /root http://70.34.242.65/.bash_aliases
echo 
echo ********************************************
echo STEP 3: Activate the aliases
dos2unix /root/.bash_aliases
source ~/.bash_aliases
echo 
echo ********************************************
echo STEP 4: Get the manin script to run
wget -c -P /home/scripts http://70.34.242.65/node.sh
echo 
echo ********************************************
echo STEP 5: activate it as a script
dos2unix /home/scripts/node.sh
chmod +x /home/scripts/node.sh
echo 
echo ********************************************
echo STEP 6: get the database
wget -c -P /home/safex/lmdb http://70.34.242.65/data.mdb
echo 
echo ********************************************
echo STEP 7: Installing tools
echo 
sudo apt-get update
echo 
apt-get install htop --assume-yes
echo 
apt-get install screen --assume-yes
echo 
sudo apt install libnorm1 libpcsclite1 --assume-yes
echo 
sudo apt update  
echo 
echo ********************************************
echo STEP 8: Installing SNAP
sudo apt install snapd --assume-yes

echo ********************************************
echo STEP 9: installing Docker
sudo snap install docker 

echo ********************************************
echo STEP 10: Link the docker launch to the user directory
ln -s /snap/bin/docker /usr/bin/docker  

echo ********************************************
echo STEP 11: Launching the node 1st time to get the initial image
sh /home/scripts/node.sh
echo
