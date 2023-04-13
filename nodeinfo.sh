#!/bin/bash

#########################################
#
# Author : Isaac D
# Date : 13/4/2023
# Version : v3
# This script outputs the node health
# 
##########################################

# set -x #debug mode
 set -e #exit the script if there is any error
 set -o pipefail
echo "--------------------------------------------------------------------------------- "
 echo 'free space of the node :'
 free -g
echo "--------------------------------------------------------------------------------- "
 echo 'no. of cpu : '
 nproc 
echo "--------------------------------------------------------------------------------- "
echo 'disk space :'
df -h
echo "--------------------------------------------------------------------------------- "
echo 'find ipd of /usr/lib/snapd/snapd :'
ps -ef | grep /usr/lib/snapd/snapd | awk -F" " '{print $2}' 
echo "---------------------------------------------------------------------------------- "
echo " "
