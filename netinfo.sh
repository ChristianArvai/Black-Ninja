#!/bin/sh
# 
# Author: Christian Arvai 
# Credits to: Ubuntu Denmark LoCo Team
# For all Ubuntu releases from 12.04 to current stabil  
# To 32 and 64 bits systems
# This code is available under the creative commons attribution-sharealike license https://creativecommons.org/licenses/by-sa/4.0/

# make directory ~/.UbuntuDanmark-Log (in case it don't already exist)
mkdir -p ~/.UbuntuDanmark-Log
# declare variable log and assign value (path to folder)
log=~/.UbuntuDanmark-Log
# declare variable name and assign value
name=netinfo
# declare variable date and assign value
date=$(date)

echo "Test starts"
echo ""
echo "" > $log/$name 
echo "Executing netinfo.sh" >> $log/$name
echo $date >> $log/$name
echo "" >> $log/$name
sudo apt-get install -y pastebinit; 
echo "" >> $log/$name
echo "" >> $log/$name
echo "" >> $log/$name
lsb_release -a >> $log/$name
echo "" >> $log/$name
uname -a >> $log/$name
echo "" >> $log/$name
lspci >> $log/$name
echo "" >> $log/$name
lsusb >> $log/$name
echo "" >> $log/$name
rfkill list >> $log/$name
echo "" >> $log/$name
sudo lshw -C Network >> $log/$name
echo "" >> $log/$name
ifconfig >> $log/$name
echo "" >> $log/$name
sudo iwconfig >> $log/$name
echo "" >> $log/$name
nm-tool >> $log/$name
echo "" >> $log/$name
apt-cache policy usb-modeswitch-data >> $log/$name
echo "" >> $log/$name
apt-cache show usb-modeswitch-data >> $log/$name
echo "" >> $log/$name
apt-cache policy usb-modeswitch >> $log/$name
echo "" >> $log/$name
apt-cache show usb-modeswitch >> $log/$name
echo "" >> $log/$name
apt-cache policy network-manager >> $log/$name
echo "" >> $log/$name
apt-cache show network-manager >> $log/$name
echo "" >> $log/$name
sudo lsmod >> $log/$name
echo "" >> $log/$name
sudo iwlist scan >> $log/$name
echo ""
echo "Test ends"
echo "" >> $log/$name
echo "Test ends" >> $log/$name
echo "" >> $log/$name
echo ""
echo "Full logfile are now stored in:"
echo $log/$name
echo ""
echo "Use this link to paste in forums:"
sudo pastebinit -b http://paste.ubuntu.com $log/$name
