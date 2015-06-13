#!/bin/sh
# 
# Project: Black-Ninja
# Author: Christian Arvai 
# Credits: Ubuntu Denmark LoCo Team
# For: All Ubuntu releases from 12.04 to current stabil  
# To: 32 and 64 bits systems
# This code is available under the creative commons attribution-sharealike license https://creativecommons.org/licenses/by-sa/4.0/

# declare variable $https (path to server) and assign value
https=https://ubuntudanmark.dk/filer/ninja
# declare variable $bin (path to folder /usr/local/bin) and assign value
bin=usr/local/bin

echo ""
echo "Updating Black-Ninja main menu"
echo ""
scriptname=ninja-main.sh
sudo rm -f /$bin/$scriptname;
wget $https/$scriptname -O ~/$scriptname && 
chmod +x ~/$scriptname &&  
sudo mv ~/$scriptname /$bin && 
$scriptname
