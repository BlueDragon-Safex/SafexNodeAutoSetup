#!/bin/bash
# community version: 2023.01.28..1 (YYYY.MM.DD)
#
#These are the 7 lines you will paste
# or type to perform the auto setup (without the hashtag) 
#--------------------------------------------------------
#sudo apt install wget -y &&
#sudo apt-get install dos2unix -y &&
#wget -c -P /home/scripts http://45.32.161.73/setup.sh &&
#dos2unix /home/scripts/setup.sh &&
#chmod +x /home/scripts/setup.sh &&
#sh /home/scripts/setup.sh
#
#source /root/.bash_aliases &&
#source /root/.bashrc &&
#sh /home/scripts/node.sh

#Create needed directires and open ports
mkdir -p /home/safex/lmdb/
mkdir -p /home/scripts/

sudo apt install ufw -y &&
sudo ufw enable &&
ufw allow 17402 &&
ufw allow 17401
#sudo apt-get install dos2unix -y
#sudo apt install wget -y


\rm /home/scripts/get_scripts.sh &
wget -c -P /home/scripts http://45.32.161.73/get_scripts.sh &&
dos2unix /home/scripts/get_scripts.sh &&
chmod +x /home/scripts/get_scripts.sh 


\rm /home/scripts/get_db.sh &
wget -c -P /home/scripts http://45.32.161.73/get_db.sh &&
dos2unix /home/scripts/get_db.sh &&
chmod +x /home/scripts/get_db.sh &&
sh /home/scripts/get_db.sh &


\rm /home/scripts/get_alias.sh &
wget -c -P /home/scripts http://45.32.161.73/get_alias.sh &&
dos2unix /home/scripts/get_alias.sh &&
chmod +x /home/scripts/get_alias.sh &&
sh /home/scripts/get_alias.sh


\rm /home/scripts/get_node.sh &
wget -c -P /home/scripts http://45.32.161.73/get_node.sh &&
dos2unix /home/scripts/get_node.sh &&
chmod +x /home/scripts/get_node.sh &&
sh /home/scripts/get_node.sh &&


wget -c -P /etc/cron.daily http://45.32.161.73/clear_log.sh &&
dos2unix /etc/cron.daily/clear_log.sh &&
chmod +x /etc/cron.daily/clear_log.sh 


sudo apt-get update &&
apt-get install htop -y &&
apt-get install screen -y &&
sudo apt install libnorm1 libpcsclite1 -y &&
sudo apt update && 
sudo apt install snapd -y &&
sudo snap install docker  &&

ln -s /snap/bin/docker /usr/bin/docker  


\rm /root/.bashrc &
wget -c -P /root http://45.32.161.73/.bashrc &&
dos2unix /root/.bashrc


source /root/.bash_aliases &&
source /root/.bashrc &&
sh /home/scripts/node.sh


