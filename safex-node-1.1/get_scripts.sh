#!/bin/bash
# community version: 2023.01.28..1 (YYYY.MM.DD)
#
#This will get the latest scripts to automate your 1-click Safex Node
#--------------------------------------------------------

\rm /home/scripts/get_scripts.sh &
wget -c -P /home/scripts http://45.32.161.73/get_scripts.sh &&
dos2unix /home/scripts/get_scripts.sh &&
chmod +x /home/scripts/get_scripts.sh 


#remove old GET DB script & get newest script
\rm /home/scripts/get_db.sh &
wget -c -P /home/scripts http://45.32.161.73/get_db.sh &&
dos2unix /home/scripts/get_db.sh &&
chmod +x /home/scripts/get_db.sh &&
#sh /home/scripts/get_db.sh &

#remove old ALIAS script & get newest script
\rm /home/scripts/get_alias.sh &
wget -c -P /home/scripts http://45.32.161.73/get_alias.sh &&
dos2unix /home/scripts/get_alias.sh &&
chmod +x /home/scripts/get_alias.sh &&
sh /home/scripts/get_alias.sh

#remove old GET NODE script & get newest script
\rm /home/scripts/get_node.sh &
wget -c -P /home/scripts http://45.32.161.73/get_node.sh &&
dos2unix /home/scripts/get_node.sh &&
chmod +x /home/scripts/get_node.sh &&
sh /home/scripts/get_node.sh &&

#remove old CLEAR LOG script & get newest script
wget -c -P /etc/cron.daily http://45.32.161.73/clear_log.sh &&
dos2unix /etc/cron.daily/clear_log.sh &&
chmod +x /etc/cron.daily/clear_log.sh 

#remove old BASHRC script & get newest script
\rm /root/.bashrc &
wget -c -P /root http://45.32.161.73/.bashrc &&
dos2unix /root/.bashrc

#Initialize the new aliases & bashrc
source /root/.bash_aliases &&
source /root/.bashrc &&

