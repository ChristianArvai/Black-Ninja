#!/bin/sh
# 
# Project: Black-Ninja
# Author: Christian Arvai 
# Credits: Ubuntu Denmark LoCo Team
# For: All Ubuntu releases from 12.04 to current stabil  
# To: 32 and 64 bits systems
# This code is available under the creative commons attribution-sharealike license https://creativecommons.org/licenses/by-sa/4.0/

# declare variable $bin (points to folder /usr/local/bin) and assign value
bin=usr/local/bin

# update
scriptname=update.sh
sudo rm -v -f /$bin/$scriptname;

# autoupdate
scriptname=autoupdate.sh
sudo rm -v -f /$bin/$scriptname;

# clean and update
scriptname=clean.sh
sudo rm -v -f /$bin/$scriptname;

# autoclean
scriptname=autoclean.sh
sudo rm -v -f /$bin/$scriptname;

# adobe-flashplugin
scriptname=restore-flash.sh
sudo rm -v -f /$bin/$scriptname;

# icedtea-7-plugin
scriptname=restore-icedtea7.sh
sudo rm -v -f /$bin/$scriptname;

# oracle-java7-installers
scriptname=restore-oracle7.sh
sudo rm -v -f /$bin/$scriptname;

# oracle-java8-installer
scriptname=restore-oracle8.sh
sudo rm -v -f /$bin/$scriptname;

# internet connection
scriptname=netinfo.sh
sudo rm -v -f /$bin/$scriptname;

# graphics card
scriptname=gpuinfo.sh
sudo rm -v -f /$bin/$scriptname;

# main menu
scriptname=ninja-main.sh
sudo rm -v -f /$bin/$scriptname;

# delete "local client" ninja.sh
scriptname=ninja.sh
sudo rm -v -f /$bin/$scriptname;

# delete log folder (~/.black-ninja)
sudo rm -v -rf ~/.black-ninja
