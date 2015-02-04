#!/bin/bash
#establish MAC address
MAC_ADDRESS=$(cat /sys/class/net/eth0/address)

#in the future, this should be something more like tunnels@192.168.1.2
ssh -R 2001:localhost:22 lbym@130.157.70.115 "cd Documents/Scripts; sh managemeeting.sh $MAC_ADDRESS"
$SHELL




