#!/bin/sh
# 
# Author: Christian Arvai 
# Credits to: Ubuntu Denmark LoCo Team
# For all Ubuntu releases from 12.04 to current stabil  
# To 32 and 64 bits systems
# This code is available under the creative commons attribution-sharealike license https://creativecommons.org/licenses/by-sa/4.0/

echo ""
echo "Updating Main menu"
echo ""
scriptname=ubdk-main.sh
sudo rm -f /usr/local/bin/$scriptname;
wget https://ubuntudanmark.dk/filer/ubdk-scripts/$scriptname -O ~/$scriptname && 
chmod +x ~/$scriptname &&  
sudo mv ~/$scriptname /usr/local/bin && 
sudo $scriptname
