#!/bin/bash
# community version: 2022.04.25 (YYYY.MM.DD)
#These are the 7 lines you will paste or type to perform the auto setup (without the hashtag) 
#sudo apt install wget -y
#sudo apt-get install dos2unix -y
#wget -c -P /home/scripts http://45.32.161.73/setup.sh
#echo "Continue with the download so we can convert and activate it"
#dos2unix /home/scripts/setup.sh
#chmod +x /home/scripts/setup.sh
#sh /home/scripts/setup.sh

echo "********************************************"
echo "STEP 1: Creating needed directories"
mkdir -p /home/safex/lmdb/
mkdir -p /home/scripts/
ufw allow 17402
ufw allow 17401
sudo apt-get install dos2unix -y
echo 
echo "********************************************"
echo "STEP 2: Importing the community aliases"
\rm /home/scripts/get_alias.sh
wget -c -P /home/scripts http://45.32.161.73/get_alias.sh
echo "Continue with the download so we can convert and activate it"
dos2unix /home/scripts/get_alias.sh
chmod +x /home/scripts/get_alias.sh
sh /home/scripts/get_alias.sh
#wget -c -P /root http://45.32.161.73/.bash_aliases
echo 
echo "********************************************"
echo "STEP 3: Activate the aliases"
dos2unix /root/.bash_aliases
source /root/.bash_aliases
echo 
echo "********************************************"
echo "STEP 4: Get the script to auto start node on login"
\rm /home/scripts/get_node.sh
wget -c -P /home/scripts http://45.32.161.73/get_node.sh
echo "Continue with the download so we can convert and activate it"
dos2unix /home/scripts/get_node.sh
chmod +x /home/scripts/get_node.sh
sh /home/scripts/get_node.sh &
#wget -c -P /home/scripts http://45.32.161.73/node.sh
echo 
echo "********************************************"
echo "STEP 5: activate it as a script"
dos2unix /home/scripts/node.sh
chmod +x /home/scripts/node.sh
echo "Get script to truncate log"
wget -c -P /etc/cron.daily http://45.32.161.73/clear_log.sh
dos2unix /etc/cron.daily/clear_log.sh
chmod +x /etc/cron.daily/clear_log.sh
echo 
echo "********************************************"
echo "STEP 6: get the database"
\rm /home/scripts/get_db.sh
wget -c -P /home/scripts http://45.32.161.73/get_db.sh
echo "Continue with the download so we can convert and activate it"
dos2unix /home/scripts/get_db.sh
chmod +x /home/scripts/get_db.sh
sh /home/scripts/get_db.sh &
#wget -c -P /home/safex/lmdb http://45.32.161.73/data.mdb
echo 
echo "********************************************"
echo "STEP 7: Installing tools"
echo 
sudo apt-get update
echo 
apt-get install htop -y
echo 
apt-get install screen -y
echo 
sudo apt install libnorm1 libpcsclite1 -y
echo 
sudo apt update  
echo 
echo "********************************************"
echo "STEP 8: Installing SNAP"
sudo apt install snapd -y

echo "********************************************"
echo "STEP 9: installing Docker"
sudo snap install docker 

echo "********************************************"
echo "STEP 10: Link the docker launch to the user directory"
ln -s /snap/bin/docker /usr/bin/docker  

echo "********************************************"
echo "STEP 11: Launching the node first time to get the initial image"
source /root/.bash_aliases
#sh /home/scripts/node.sh
#runnode
echo
