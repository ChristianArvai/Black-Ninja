#!/bin/sh
# 
# Project: Black-Ninja
# Author: Christian Arvai 
# Credits: Ubuntu Denmark LoCo Team
# For: All Ubuntu releases from 12.04 to current stabil  
# To: 32 and 64 bits systems
# This code is available under the creative commons attribution-sharealike license https://creativecommons.org/licenses/by-sa/4.0/

sudo dpkg --configure -a 
sudo apt-get purge -y openjdk-6-jre 
sudo apt-get purge -y openjdk-6-jre-lib 
sudo apt-get purge -y openjdk-6-doc 
sudo apt-get purge -y openjdk-7-jre
sudo apt-get purge -y openjdk-7-jre-lib 
sudo apt-get purge -y openjdk-7-doc 
sudo apt-get purge -y sun-java6-jdk 
sudo apt-get purge -y sun-java6-bin 
sudo apt-get purge -y sun-java6-fonts 
sudo apt-get purge -y sun-java6-jre
sudo apt-get purge -y sun-java6-plugin 
sudo apt-get purge -y sun-java7-jdk 
sudo apt-get purge -y sun-java7-bin
sudo apt-get purge -y sun-java7-fonts 
sudo apt-get purge -y sun-java7-jre 
sudo apt-get purge -y sun-java7-plugin 
sudo apt-get purge -y icedtea-plugin 
sudo apt-get purge -y icedtea-7-plugin 
sudo apt-get purge -y oracle-java7-installer 
sudo apt-get purge -y oracle-java8-installer
sudo add-apt-repository --remove ppa:webupd8team/java
sudo apt-get autoremove 
sudo add-apt-repository ppa:webupd8team/java && 
sudo apt-get update && 
sudo mkdir -p /usr/lib/mozilla/plugins && 
sudo apt-get install -y oracle-java8-installer &&
sudo apt-get upgrade -y
