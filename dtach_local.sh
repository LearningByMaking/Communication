#!/bin/bash
MAC_ADDRESS=$(sed -e '$!d' /sys/class/net/*/address)
MAC_ADDRESS=`echo $MAC_ADDRESS | tr -d -c ".[:alnum:]"`
ssh -A -t lbym@130.157.70.115 -R 2200:localhost:22 "dtach -c meet$MAC_ADDRESS ssh -t -p 2200 user@localhost \"/bin/bash\""
