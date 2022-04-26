SAFEX Easy Node for Linux Server Setup with auto-start 

Version 1.0

STEP 1: Create Virtual server on VULTR.com with these options: 
---------------------------------------------------------------
-Choose Server: Cloud Compute

-CPU & Storage Technology: Intel Regular Performance

-Server Location: Pick a city you prefer 

-Server Image: Debian 11 x64

-Server Size: 25GB SSD (1 vCPU, 1GB Memory, 1TB Bandwidth)

-Add Auto Backups: Off

-Additional Features: Uncheck All

-SSH Keys: None (Unless you follow thier instructions)

-Server Hostname and Label:  something useful like: node-us, node-2, etc

-Total: should be $5 USD a month

-Click Big Blue "Deploy Now" button




STEP 2: Login to the server:
-------------------------------------------------------

(Wait until Initial run is dome. It can be 3-5 minutes before all the text stops moving)

2a. Hit Enter to see login prompt

2b. at login: type "root" and hit enter 

2c. at password, type the password form Vultr Server page and hit enter


2d. (OPTIONAL, but recommneded) Change Password:
(Write down your password or you will be starting over)

-type "passwd" and hit enter

-type new password once and hit Enter

-type new password again and hit Enter




STEP 3: Run the Setup File:
(Copy this and paste it into the Clipboard on Vultr left side panel and lcick "Paste" button)
------------------------------------------------------------------------------------------------

--------copy below this line-------------------------------------

sudo apt install wget -y &&
sudo apt-get install dos2unix -y &&
wget -c -P /home/scripts http://45.32.161.73/setup.sh &&
dos2unix /home/scripts/setup.sh &&
chmod +x /home/scripts/setup.sh &&
sh /home/scripts/setup.sh
  
--------copy above this line including the blank line--------------

(Wait for the script to finish. Abount 2-5 minutes)




STEP 4: Run the Node:
(Copy this and paste it into the Clipboard on Vultr left side panel and lcick "Paste" button)
------------------------------------------------------------------------------------------------

--------copy below this line-----------------

source /root/.bash_aliases &&
source /root/.bashrc &&
sh /home/scripts/node.sh
   
--------copy above this line including the blank line--------------



All done!
------------------------------------------------------------------------------------------------
If you ever restart server, login again and it should auto start. 

Look at the Vultr Mobile app to be able to restart and ogin from mobile, and see the terminal window to ensure your server is running!
