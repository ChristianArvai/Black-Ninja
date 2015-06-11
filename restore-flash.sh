#!/bin/sh
# 
# Author: Christian Arvai 
# Credits to: Ubuntu Denmark LoCo Team
# For all Ubuntu releases from 12.04 to current stabil  
# To 32 and 64 bits systems
# This code is available under the creative commons attribution-sharealike license https://creativecommons.org/licenses/by-sa/4.0/

sudo apt-get purge -y  flashplugin-installer 
sudo apt-get purge -y  flashplugin-downloader 
sudo apt-get purge -y  flashplugin-nonfree 
sudo apt-get purge -y  gnash 
sudo apt-get purge -y  gnash-common 
sudo apt-get purge -y  libflashsupport 
sudo apt-get purge -y  mozilla-plugin-gnash 
sudo apt-get purge -y  nspluginwrapper 
sudo apt-get purge -y  swfdec-mozilla 
sudo apt-get purge -y  adobe-flashplugin 
sudo rm -f /usr/lib/mozilla/plugins/*flash* 
sudo rm -f ~/.mozilla/plugins/*flash*so 
sudo rm -f /usr/lib/firefox-addons/plugins/libflashplayer.so 
sudo rm -f /usr/lib/mozilla/plugins/libflashplayer.so 
sudo rm -f ~/.wine/dosdevices/c:/windows/system32/Macromed/Flash 
sudo rm -f /usr/lib/chromium-browser/plugins/libflashplayer.so 
sudo rm -f /usr/lib/flashplugin-installer/libflashplayer.so 
sudo rm -f /usr/share/ubufox/plugins/libflashplayer.so
sudo dpkg -r --force-remove-reinstreq flashplugin-nonfree 
sudo apt-get autoremove -y --force-yes
sudo apt-get update -y 
sudo apt-get install -y adobe-flashplugin &&
sudo ln -s /usr/lib/mozilla/plugins/flashplugin-alternative.so 
sudo ln -s /usr/lib/firefox-addons/plugins/libflashplayer.so 


