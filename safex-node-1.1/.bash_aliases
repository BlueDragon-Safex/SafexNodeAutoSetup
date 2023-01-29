#!/bin/bash
# community version: 2023.01.29..1

#these are aliases or shortcuts, we use to run code easier.
#just type the alias and it types the longer text next to it.

# myip        To get our pupic IP
  alias myip='dig resolver4.opendns.com myip.opendns.com +short'

# setalias    This opens the text editor to update our aliases
  alias setalias='nano /root/.bash_aliases'

# loadalias   This refreshes the session to use any recent changes to the aliases
  alias loadalias='source /root/.bash_aliases'

# vultralias   This refreshes the session to use any recent changes to the aliases
  alias vultralias='source /root/.bashrc'

# editnode    This will open the text editor to edit the node script if ever needed
  alias editnode='nano /home/scripts/node.sh'

# newnode     This will open a new 'screen'(or window) to run the node in so you can still use terminal.
#             using screen -ls, the Screen name will be be named ####.SafexNode
  alias newnode='screen -S node -T Safexnode && sh /home/scripts/node.sh'
  alias newscreen='screen -S node -T Safexnode'
  
# runnode     This will manually execute the script to start the docker image
  alias runnode='sh /home/scripts/node.sh'

# getalias    This will pull in the new alias file easier
  alias getalias='\rm /root/.bash_aliases & wget -c -P /root http://45.32.161.73/.bash_aliases && dos2unix /root/.bash_aliases && source /root/.bash_aliases'
  alias getalias2='sh /home/scripts/get_alias.sh'

# getnode     This will pull in the new node auto start file easier
  alias getnode='\rm /home/scripts/node.sh & wget -c -P /home/scripts http://45.32.161.73/node.sh && dos2unix /home/scripts/node.sh && chmod +x /home/scripts/node.sh'
  alias getnode2='sh /home/scripts/get_node.sh'

# getdb       This will pull in the database 
  alias getdb='\rm /home/safex/lmdb/data.mdb & wget -c -P /home/safex/lmdb http://45.32.161.73/data.mdb'
  alias getdb2='sh /home/scripts/get_db.sh'

# getscripts  This will pull in the master script to pull all other scripts 
  alias getscripts='\rm /home/scriptsget_scripts.sh & wget -c -P /home/scripts http://45.32.161.73/get_scripts.sh && dos2unix /home/scripts/get_scripts.sh && chmod +x /home/scripts/get_scripts.sh'
  alias getscripts2='sh /home/scripts/get_scripts.sh'

# clearlog    This will truncate the log files in Home and Var
  alias clearlog='truncate -s 0 /home/**/*.log* /var/**/*.log* /var/**/*btmp* /var/**/*messages*'

# copydb      This will copy existing DB to web share automatically
#             (You can use this if you want to make your own 
#              database available for your other nodes)
  alias copydb='\cp -r /home/safex/lmdb/data.mdb /var/www/html/'

# convertscripts This will convert any DOS formatting to UNIX formatting  
  alias convertscripts='dos2unix /home/scripts/* && dos2unix /root/.bash_aliases && dos2unix /root/.bashrc'
  
#Some more alias to avoid making mistakes:
#Remove File confirm
  alias rm='rm -i'
#copy file confirm
  alias cp='cp -i'
#Move file confirm
  alias mv='mv -i'

  alias ls='ls $LS_OPTIONS'
  alias ll='ls $LS_OPTIONS -l'
  alias la='ls $LS_OPTIONS -lA'

#extra general ones
  alias rebootme='reboot'

#open Crontab (Timers)
  alias timers='crontab -e'

#go to home directory
  alias gohome='cd /home'
#go to scripts directory folder
  alias goscripts='cd /home/scripts'
#go to database directory
  alias godb='cd /home/safex/lmdb'
#go to HTML
  alias gohtml='cd /var/www/html'

#these will be for editing the default journal size to save more space
 alias journalsize='journalctl --disk-usage'
 alias journaledit='nano /etc/systemd/journald.conf'
 alias journalrestart='sudo systemctl restart systemd-journald'
