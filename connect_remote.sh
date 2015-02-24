echo -n "Enter Computer Number and then press [ENTER]: "
read compID
remoteMacAddress=$(ssh lbym@lbym.sonoma.edu Documents/Scripts/getMacAddressByMachineNumber.sh $compID)
echo $remoteMacAddress
nohup sensible-browser http://lbym.sonoma.edu/view.php?filename=Desktops/$remoteMacAddress.png &
sh dtach_remote.sh $compID
