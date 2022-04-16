#!/bin/bash

#these are aliases or shortcuts, we use to run code easier. 
#just type the alias and it types the longer text next to it. 

# myip        To get our pupic IP
  alias myip='dig resolver4.opendns.com myip.opendns.com +short'

# setalias    This opens the text editor to update our aliases
  alias setalias='nano ~/.bashaliases'

# loadalias   This refreshes the session to use any recent changes to the aliases
  alias loadalias='source ~/.bash_aliases'

# editnode    This will open the text editor to edit the node script if ever needed
  alias editnode='nano /home/scripts/node.sh'

# newnode     This will open a new 'screen'(or window) to run the node in so you can still use terminal. 
#             using screen -ls, the Screen name will be be named ####.SafexNode
  alias newnode='screen -S node -T Safexnode'

# runnode     This will manually execute the script to start the docker image
  alias runnode='./home/scripts/node.sh'
  
  
Some more alias to avoid making mistakes:
#Remove File confirm
  alias rm='rm -i'
#copy file confirm
  alias cp='cp -i'
#Move file confirm
  alias mv='mv -i'

 alias ls='ls $LS_OPTIONS'
 alias ll='ls $LS_OPTIONS -l'
 alias l='ls $LS_OPTIONS -lA'
 
#extra general ones
  alias rebootme='reboot'

#open Crontab (Timers)
  alias timers='cronteab -e'
  
#go to home directory
  alias gohome='cd ~./home'
#go to scripts directory folder
  alias goscripts='cd /home/scripts'  
#go to database directory
  alias godb='cd /home/safex/lmdb'  
 