#!/bin/bash
# community version: 2023.01.28..1
#this will download the alias file again and set it as the current alias

#echo "remove existing copy"
#\rm /home/scripts/node.sh

#echo "Get the community node run file"
#wget -c -P /home/scripts http://45.32.161.73/node.sh

#echo "Convert to UNIX format"
#dos2unix /home/scripts/node.sh

#echo "Make the script executable"
#chmod +x /home/scripts/node.sh


\rm /home/scripts/node.sh & 
wget -c -P /home/scripts http://45.32.161.73/node.sh &&
dos2unix /home/scripts/node.sh &&
chmod +x /home/scripts/node.sh