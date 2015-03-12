#!/bin/bash
host="$(hostname)"
ssh -A -t lbym@lbym.sonoma.edu -R 2200:localhost:22 -p22021 "dtach -c meet$host ssh -t -p 2200 user@localhost \"/bin/bash\""

$SHELL

