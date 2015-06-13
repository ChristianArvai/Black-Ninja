#!/bin/sh
# 
# Project: Black-Ninja
# Author: Christian Arvai 
# Credits: Ubuntu Denmark LoCo Team
# For: All Ubuntu releases from 12.04 to current stabil  
# To: 32 and 64 bits systems
# This code is available under the creative commons attribution-sharealike license https://creativecommons.org/licenses/by-sa/4.0/

# declare variable $select and assign value
select="Please select [1,2,3,4,5,6,7,9,10,11,12,13,14 or 15]? "
# declare variable $choicemesseage and assign value
choicemesseage="You have chosen to:"
# declare variable $linkmesseage and assign value
linkmesseage="Link to UbuntuDanmark about this subject:"
# declare variable $https (path to server) and assign value
https=https://ubuntudanmark.dk/filer/ninja
# declare variable $bin (path to folder /usr/local/bin) and assign value
bin=usr/local/bin
# declare variable $choice and assign value
choice=16
# declare all variables in main menu and assign there values
menuline10="Welcome to Black-Ninja main menu. You can choose to:"
menuline20="1.....Update and upgrade Ubuntu"
menuline30="2.....Update and upgrade Ubuntu - Full automatic with logfile"
menuline40="3.....Update upgrade and clean Ubuntu"
menuline50="4.....Update upgrade and clean Ubuntu - Full automatic with logfile"
menuline60="5.....Restore adobe-flashplugin"
menuline70="6.....Restore icedtea-7-plugin"
menuline80="7.....Restore oracle-java7-installer"
menuline90="8.....Restore oracle-java8-installer"
menuline100="9.....Test internet connection"
menuline110="10....Test graphics card"
menuline120="11....Download and install all scripts local"
menuline130="12....Delete all scripts local"
menuline140="13....Donate to UbuntuDanmark"
menuline150="14....README"
menuline160="15....Exit"

# construct main menu
echo ""
echo $menuline10
echo ""
echo $menuline20
echo $menuline30
echo $menuline40
echo $menuline50
echo $menuline60
echo $menuline70
echo $menuline80
echo $menuline90
echo $menuline100
echo $menuline110
echo $menuline120
echo $menuline130
echo $menuline140
echo $menuline150
echo $menuline160
echo ""
echo -n $select

# bash while loop starts
while [ $choice -eq 16 ]; do

# read user input
read choice

# update
if [ $choice -eq 1 ] ; then
echo ""
echo "$choicemesseage Update Ubuntu"
echo ""
scriptname=update.sh
sudo rm -f /$bin/$scriptname;
wget $https/$scriptname -O ~/$scriptname && 
chmod +x ~/$scriptname &&  
sudo mv ~/$scriptname /$bin && 
sudo $scriptname;
echo ""
echo $linkmesseage
echo "https://ubuntudanmark.dk/blog/artikler/2012/01/10/oprydning-og-opdatering-af-ubuntu/"
echo ""

else
  # update auto with logfile      
  if [ $choice -eq 2 ] ; then
  echo ""
  echo "$choicemesseage Update Ubuntu - Full automatic with logfile"
  echo ""
  scriptname=autoupdate.sh
  sudo rm -f /$bin/$scriptname;
  wget $https/$scriptname -O ~/$scriptname && 
  chmod +x ~/$scriptname &&  
  sudo mv ~/$scriptname /$bin && 
  sudo $scriptname;
  echo ""
  echo $linkmesseage
  echo "https://ubuntudanmark.dk/blog/artikler/2012/01/10/oprydning-og-opdatering-af-ubuntu/"
  echo ""

  else
    # clean and update
    if [ $choice -eq 3 ] ; then
    echo ""
    echo "$choicemesseage Clean and Update Ubuntu"
    echo ""
    scriptname=clean.sh
    sudo rm -f /$bin/$scriptname;
    wget $https/$scriptname -O ~/$scriptname && 
    chmod +x ~/$scriptname &&  
    sudo mv ~/$scriptname /$bin && 
    sudo $scriptname;
    echo ""
    echo $linkmesseage
    echo "https://ubuntudanmark.dk/blog/artikler/2012/01/10/oprydning-og-opdatering-af-ubuntu/"
    echo ""

    else
      # clean and update auto with logfile     
      if [ $choice -eq 4 ] ; then
      echo ""
      echo "$choicemesseage Clean and Update Ubuntu- Full automatic with logfile"
      echo ""
      scriptname=autoclean.sh
      sudo rm -f /$bin/$scriptname;
      wget $https/$scriptname -O ~/$scriptname && 
      chmod +x ~/$scriptname &&  
      sudo mv ~/$scriptname /$bin && 
      sudo $scriptname;
      echo ""
      echo $linkmesseage
      echo "https://ubuntudanmark.dk/blog/artikler/2012/01/10/oprydning-og-opdatering-af-ubuntu/"
      echo ""

      else
        # adobe-flashplugin
        if [ $choice -eq 5 ] ; then
        echo ""
        echo "$choicemesseage Restore adobe-flashplugin"
        echo ""
        scriptname=restore-flash.sh
        sudo rm -f /$bin/$scriptname;
        wget $https/$scriptname -O ~/$scriptname && 
        chmod +x ~/$scriptname &&  
        sudo mv ~/$scriptname /$bin && 
        sudo $scriptname;
        echo ""
        echo $linkmesseage
        echo "https://ubuntudanmark.dk/blog/artikler/2013/09/29/java-og-flash-understottelse-mangler/#flash_understottelse_mangler"
        echo ""

        else                
          # icedtea-7-plugin 
          if [ $choice -eq 6 ] ; then
          echo ""
          echo "$choicemesseage Restore icedtea-7-plugin"
          echo ""
          scriptname=restore-icedtea7.sh
          sudo rm -f /$bin/$scriptname;
          wget $https/$scriptname -O ~/$scriptname && 
          chmod +x ~/$scriptname &&  
          sudo mv ~/$scriptname /$bin && 
          sudo $scriptname;
          echo ""
          echo $linkmesseage
          echo "https://ubuntudanmark.dk/blog/artikler/2013/09/29/java-og-flash-understottelse-mangler/#java_understottelse_mangler"
          echo ""

          else        
            # oracle-java7-installer
            if [ $choice -eq 7 ] ; then
            echo ""
            echo "$choicemesseage Restore oracle-java7-installer"
            echo ""
            scriptname=restore-oracle7.sh
            sudo rm -f /$bin/$scriptname;
            wget $https/$scriptname -O ~/$scriptname && 
            chmod +x ~/$scriptname &&  
            sudo mv ~/$scriptname /$bin && 
            sudo $scriptname;
            echo ""
            echo $linkmesseage
            echo "https://ubuntudanmark.dk/blog/artikler/2013/09/29/java-og-flash-understottelse-mangler/#java_understottelse_mangler"
            echo ""

            else 
              # oracle-java8-installer
              if [ $choice -eq 8 ] ; then
              echo ""
              echo "$choicemesseage Restore oracle-java8-installer"
              echo ""
              scriptname=restore-oracle8.sh
              sudo rm -f /$bin/$scriptname;
              wget $https/$scriptname -O ~/$scriptname && 
              chmod +x ~/$scriptname &&  
              sudo mv ~/$scriptname /$bin && 
              sudo $scriptname;
              echo ""
              echo $linkmesseage
              echo "https://ubuntudanmark.dk/blog/artikler/2013/09/29/java-og-flash-understottelse-mangler/#java_understottelse_mangler"
              echo ""

              else
                # test the internet connection
                if [ $choice -eq 9 ] ; then
                echo ""
                echo "$choicemesseage Test the internet connection"
                echo ""
                scriptname=netinfo.sh
                sudo rm -f /$bin/$scriptname;
                wget $https/$scriptname -O ~/$scriptname && 
                chmod +x ~/$scriptname &&  
                sudo mv ~/$scriptname /$bin && 
                sudo $scriptname;
                echo ""
                echo $linkmesseage
                echo "https://ubuntudanmark.dk/blog/artikler/2013/09/29/netvaerksdriver-mangler/"
                echo ""

                else
                  # test the graphics card
                  if [ $choice -eq 10 ] ; then
                  echo ""
                  echo "$choicemesseage Test the graphics card"
                  echo ""
                  scriptname=gpuinfo.sh
                  sudo rm -f /$bin/$scriptname;
                  wget $https/$scriptname -O ~/$scriptname && 
                  chmod +x ~/$scriptname &&  
                  sudo mv ~/$scriptname /$bin && 
                  sudo $scriptname;
                  echo ""
                  echo $linkmesseage
                  echo "https://ubuntudanmark.dk/blog/artikler/2013/09/28/grafikdriver-mangler/"
                  echo ""

                  else 
                    # download start messeage
                    if [ $choice -eq 11 ] ; then
                    echo ""
                    echo "$choicemesseage Download all scripts local"
                    echo ""

                    # update
                    scriptname=update.sh
                    sudo rm -f /$bin/$scriptname;
                    wget $https/$scriptname -O ~/$scriptname && 
                    chmod +x ~/$scriptname &&  
                    sudo mv ~/$scriptname /$bin 

                    # autoupdate
                    scriptname=autoupdate.sh
                    sudo rm -f /$bin/$scriptname;
                    wget $https/$scriptname -O ~/$scriptname && 
                    chmod +x ~/$scriptname &&  
                    sudo mv ~/$scriptname /$bin  

                    # clean and update
                    scriptname=clean.sh
                    sudo rm -f /$bin/$scriptname;
                    wget $https/$scriptname -O ~/$scriptname && 
                    chmod +x ~/$scriptname &&  
                    sudo mv ~/$scriptname /$bin 

                    # autoclean
                    scriptname=autoclean.sh
                    sudo rm -f /$bin/$scriptname;
                    wget $https/$scriptname -O ~/$scriptname && 
                    chmod +x ~/$scriptname &&  
                    sudo mv ~/$scriptname /$bin 

                    # adobe-flashplugin
                    scriptname=restore-flash.sh
                    sudo rm -f /$bin/$scriptname;
                    wget $https/$scriptname -O ~/$scriptname && 
                    chmod +x ~/$scriptname &&  
                    sudo mv ~/$scriptname /$bin 

                    # icedtea-7-plugin
                    scriptname=restore-icedtea7.sh
                    sudo rm -f /$bin/$scriptname;
                    wget $https/$scriptname -O ~/$scriptname && 
                    chmod +x ~/$scriptname &&  
                    sudo mv ~/$scriptname /$bin 

                    # oracle-java7-installers
                    scriptname=restore-oracle7.sh
                    sudo rm -f /$bin/$scriptname;
                    wget $https/$scriptname -O ~/$scriptname && 
                    chmod +x ~/$scriptname &&  
                    sudo mv ~/$scriptname /$bin 

                    # oracle-java8-installer
                    scriptname=restore-oracle8.sh
                    sudo rm -f /$bin/$scriptname;
                    wget $https/$scriptname -O ~/$scriptname && 
                    chmod +x ~/$scriptname &&  
                    sudo mv ~/$scriptname /$bin 

                    # internet connection
                    scriptname=netinfo.sh
                    sudo rm -f /$bin/$scriptname;
                    wget $https/$scriptname -O ~/$scriptname && 
                    chmod +x ~/$scriptname &&  
                    sudo mv ~/$scriptname /$bin 

                    # graphics card
                    scriptname=gpuinfo.sh
                    sudo rm -f /$bin/$scriptname;
                    wget $https/$scriptname -O ~/$scriptname && 
                    chmod +x ~/$scriptname &&  
                    sudo mv ~/$scriptname /$bin 

                    # download end messeage
                    echo ""
                    echo "Download completed. The scripts are now stored local in /$bin"
                    echo "and can be used in case of no connection to the server"  
                    echo "by executing one of the following commands from a Terminal"
                    echo ""
                    echo "sudo update.sh" 
                    echo "sudo autoupdate.sh"
                    echo "sudo clean.sh" 
                    echo "sudo autoclean.sh"
                    echo "sudo restore-flash.sh"
                    echo "sudo restore-icedtea7.sh"
                    echo "sudo restore-oracle7.sh"
                    echo "sudo restore-oracle8.sh"
                    echo "sudo netinfo.sh" 
                    echo "sudo gpuinfo.sh" 
                    echo ""   
                    echo "New scripts can still be downloaded by executing 'sudo ninja.sh' again" 
                    echo "Older versions will just be deleted"
                    echo ""

                    else
                      # delete scripts
                      if [ $choice -eq 12 ] ; then
                      echo ""
                      echo "$choicemesseage Delete all scripts local"
                      scriptname=purge.sh
                      wget $https/$scriptname -O ~/$scriptname && 
                      chmod +x ~/$scriptname &&  
                      sudo mv ~/$scriptname /$bin
                      sudo $scriptname; 
                      sudo rm -f ~/$bin/$scriptname

                      else
                        # donate to ubdk
                        if [ $choice -eq 13 ] ; then
                        echo ""
                        echo "$choicemesseage Donate to UbuntuDanmark"
                        echo ""
                        echo "Im just a poor developer and I dont get paid for this project." 
                        echo "If you like it please donate to UbuntuDanmark.dk"
                        echo ""
                        echo "Reg nr: 0400"
                        echo "Acount: 4014554950"
                        echo "Messeage: 'Frivillig donation'"
                        echo ""
                        echo $linkmesseage
                        echo "https://ubuntudanmark.dk/doner/"
                        echo ""
                        echo "Please control the accuracy of acount number online first!"
                        echo ""

                        else
                          # readme
                          if [ $choice -eq 14 ] ; then
                          echo ""
                          echo "$choicemesseage Get access to README:"
                          echo "https://github.com/ChristianArvai/ubdk/blob/master/README.md"

                          else
                            # exit
                            if [ $choice -eq 15 ] ; then
                            pkill ubdk.sh;
                            pkill ubdk-main.sh 

                            else 
                              # construct error menu
                              echo "" 
                              echo "ERROR - Please make a choice between 1-15!"
                              echo ""
                              echo $menuline20
                              echo $menuline30
                              echo $menuline40
                              echo $menuline50
                              echo $menuline60
                              echo $menuline70
                              echo $menuline80
                              echo $menuline90
                              echo $menuline100
                              echo $menuline110
                              echo $menuline120
                              echo $menuline130
                              echo $menuline140
                              echo $menuline150
                              echo $menuline160
                              echo ""
                              echo -n $select
                              # declare variable $choice and assign value
                              choice=16                       
                            fi
                          fi
                        fi
                      fi
                    fi
                  fi
                fi
              fi
            fi
          fi
        fi   
      fi
    fi
  fi
fi 
# bash while loop ends
done 
echo "" 
echo "Use 'Up Arrow' + 'Enter' to access the Main menu again"
echo "" 
