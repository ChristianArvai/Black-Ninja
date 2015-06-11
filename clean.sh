#!/bin/sh
# 
# Author: Christian Arvai 
# Credits to: Ubuntu Denmark LoCo Team
# For all Ubuntu releases from 12.04 to current stabil  
# To 32 and 64 bits systems
# This code is available under the creative commons attribution-sharealike license https://creativecommons.org/licenses/by-sa/4.0/

sudo dpkg --configure -a &&
sudo apt-get check -y 
sudo apt-get autoremove -y --force-yes 
sudo apt-get clean -y --force-yes 
sudo rm -rf ~/.local/share/Trash/files 
sudo rm -rf ~/.evolution/mail/local/folders.db 
sudo find ~/.thumbnails -type f -exec rm {} \; 
sudo rm -rf /var/log/*.gz 
sudo updatedb &&
sudo apt-get update -y &&
sudo apt-get upgrade -y --force-yes &&
sudo apt-get purge $(dpkg -l linux-{image,headers}-"[0-9]*" | awk '/ii/{print $2}' | grep -ve $(uname -r | sed -r 's/-[a-z]+//') | sed ':a;N;$!ba;s/\n/ /g')
