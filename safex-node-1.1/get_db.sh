#!/bin/bash
# community version: 2023.01.28..1
#this will download the database file again and set it as the current alias

#echo "remove existing copy"
\rm /home/safex/lmdb/data.mdb &

#echo "Get the community db file"
wget -c -P /home/safex/lmdb http://45.32.161.73/data.mdb
