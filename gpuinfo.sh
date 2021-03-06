#!/bin/sh
# 
# Project: Black-Ninja
# Author: Christian Arvai 
# Credits: Ubuntu Denmark LoCo Team
# For: All Ubuntu releases from 12.04 to current stabil  
# To: 32 and 64 bits systems
# This code is available under the creative commons attribution-sharealike license https://creativecommons.org/licenses/by-sa/4.0/

# declare variable $log and assign value
log=~/.black-ninja
# make directory to logfiles (in case it don't already exist)
mkdir -p $log
# declare variable $date and assign value
date=$(date)
# declare variable $name and assign value
name=gpuinfo

echo "Test starts"
echo ""
echo "" > $log/$name 
echo "Executing gpuinfo.sh" >> $log/$name
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
sudo lspci -knn | grep -A 3 VGA >> $log/$name  
echo "" >> $log/$name 
cat /proc/driver/nvidia/version >> $log/$name  
echo "" >> $log/$name  
lspci -v >> $log/$name 
echo "" >> $log/$name  
lspci -vv >> $log/$name  
echo "" >> $log/$name 
lshw -C display >> $log/$name  
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
