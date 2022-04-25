#!/bin/bash

# Hashtags(#) will be the  start of a comnent line, not code. 

# 1. The Path to save data to. Default is:  /home/safex
dir='/home/safex'


# 2. The version of the Docker Image/Safex Image. Default is:  7.0.2
ver='7.0.2'


# 3A or 3B (Use only one), put a hashtag before the ip mthod 
#          you do not want to use
# 3A. Hardcoded IP (enter your static IP here if desired)
#ip='1.1.1.1'

# 3b. Automatic IP (Recommended Method). This will lookup your IP Address automatically no matter which server.
ip=$(dig @resolver4.opendns.com myip.opendns.com +short)


#  4. This will be the command we use to lauch the Docker image and start Node
#     The substitutions are in place. $dir and $ip and $ver are inside this line
cmd="docker run -it --network=host --rm -v $dir:/data -e RPC_IP=$ip safexninja/safex-rpc-node:$ver"


# 5. Before running, display what data we are using, such as our IP address
#    and the command we are launching with
echo "****************************************************************"
echo
echo "This server public IP is:  $ip"
echo
echo "Safex Node via Docker version: $ver using: "
echo "$cmd"
echo
echo "Let's get this Safex party started!!"
echo
echo "  SSS S      AAA     FFFFFFF   EEEEEEE  XXX   XXX "
echo "  S   SS      AA      F    F    E    E   X     X  "
echo "  S    S     A  A     F    F    E    E    X   X   "
echo "  S          A  A     F  F      E  E       X X    "
echo "   SSSS      A  A     FFFF      EEEE        X     "
echo "       S    AAAAAA    F  F      E  E       X X    "
echo "  S    S    A    A    F         E    E    X   X   "
echo "  SS   S   A      A   F         E    E   X     X  "
echo "  S SSS   AAA    AAA FFFFF     EEEEEEE  XXX   XXX "
echo
echo "****************************************************************"

# 6. This will actually run the command and start the node. 
$cmd