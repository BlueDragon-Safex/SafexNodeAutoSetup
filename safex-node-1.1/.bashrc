# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "$(dircolors)"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

# community version: 2023.01.28..1

#Connect to our custom shortcuts
source /root/.bash_aliases

#Clear the Safex Log so it's not growing infinitely
truncate -s 0 /home/**/*.log*
truncate -s 0 /var/**/*.log*


#this is stuff VULR needs to do (for VULTR only)
. /opt/vultr/vultr_app.sh

#This auto starts the Safex Node when logging in
sh /home/scripts/node.sh