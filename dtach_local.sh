#!/bin/bash
host="$(hostname)"
number="$(echo $host | sed  -e 's/[a-z]*//g')"
port=$((number+2200))
ssh -A -t lbym@lbym.sonoma.edu -R $port:localhost:22 -p22021 "dtach -c meet$host ssh -t -p $port user@localhost \"/bin/bash\""

$SHELL

