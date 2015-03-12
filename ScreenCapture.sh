#/bin/bash
host="$(hostname)"
import -window root ~/Pictures/$host.png
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -p22021 -o LogLevel=quiet"  ~/Pictures/$host.png lbym@lbym.sonoma.edu:/var/www/Desktops/ 



