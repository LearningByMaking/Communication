echo -n "Enter Computer Number and then press [ENTER]: "
read compID
host="lbym$compID"
nohup sensible-browser http://lbym.sonoma.edu/view.php?filename=Desktops/$host.png &
sh dtach_remote.sh $host
