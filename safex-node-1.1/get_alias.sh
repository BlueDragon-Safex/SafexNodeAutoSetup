#!/bin/bash
# community version: 2023.01.28..1
#this will download the alias file again and set it as the current alias

#echo "remove existing copy"
#\rm /root/.bash_aliases

#echo "Get the community alias file"
#wget -c -P /root http://45.32.161.73/.bash_aliases

#echo "Convert to UNIX format"
#dos2unix /root/.bash_aliases

#echo "Set as live version"
#source /root/.bash_aliases

#Run as one statement
\rm /root/.bash_aliases &
wget -c -P /root http://45.32.161.73/.bash_aliases &&
dos2unix /root/.bash_aliases &&
source /root/.bash_aliases 