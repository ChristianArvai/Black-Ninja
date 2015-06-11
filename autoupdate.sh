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
# declare variable date and assign value
date=$(date)

echo "Update starts"
echo "" > $log/$date
echo "Executing autoupdate.sh" >> $log/$date
echo $date >> $log/$date
echo "" >> $log/$date
echo "Update starts" >> $log/$date
sudo dpkg --configure -a >> $log/$date 
sudo apt-get update -y >> $log/$date 
sudo apt-get upgrade -y >> $log/$date 
echo "Update ends"
echo "Update ends" >> $log/$date
echo "" >> $log/$date
echo "" >> $log/$date
echo "Cleaning starts"
echo "Cleaning starts" >> $log/$date
sudo apt-get autoremove -y --force-yes >> $log/$date 
echo "Cleaning ends"
echo "Cleaning ends" >> $log/$date
echo "" >> $log/$date
echo ""
echo "Full logfile are now stored in:"
echo $log/$date
echo ""