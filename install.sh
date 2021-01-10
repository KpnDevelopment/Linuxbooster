#! /bin/bash

banner(){
    	 
   echo "                                                                                                                          "
   echo "                                                                                                                          "
   echo "                                                                                                                          "
   echo "                                                                                                                          "
   echo "                                                                                                                          "
   echo "                                                                                                                          "
   echo "                   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+                                                        "
   echo  "                           |i|n|s|t|a|l|l|i|n|g|.|.|.|.|                                                                "
   echo  "                   +-+-+-+-+-+-+-+-+-+-+-+-+-+-+                                                      "               
   echo  "                                                                                                                           "
    echo  "                                                                                                                           "
    echo  "                                                                                                                           "
}
suc(){
   echo "               +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
   echo "                       |i|n|s|t|a|l|l|e|d| |s|u|c|c|e|s|s|f|u|l|l|y....                        "
   echo "               +-+-+-+-+-+-+-+-+-+ +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"

}
welcome(){
   echo "             ┌───────────────────────────────────────────────────────────────┐"
   echo "            │▌ ▌   ▜               ▐      ▜ ▗          ▌           ▐        │"
   echo "            │▌▖▌▞▀▖▐ ▞▀▖▞▀▖▛▚▀▖▞▀▖ ▜▀ ▞▀▖ ▐ ▄ ▛▀▖▌ ▌▚▗▘▛▀▖▞▀▖▞▀▖▞▀▘▜▀ ▞▀▖▙▀▖│"
   echo "            │▙▚▌▛▀ ▐ ▌ ▖▌ ▌▌▐ ▌▛▀  ▐ ▖▌ ▌ ▐ ▐ ▌ ▌▌ ▌▗▚ ▌ ▌▌ ▌▌ ▌▝▀▖▐ ▖▛▀ ▌  │"
   echo "            │▘ ▘▝▀▘ ▘▝▀ ▝▀ ▘▝ ▘▝▀▘  ▀ ▝▀   ▘▀▘▘ ▘▝▀▘▘ ▘▀▀ ▝▀ ▝▀ ▀▀  ▀ ▝▀▘▘  │"
   echo "            └───────────────────────────────────────────────────────────────┘"
}
su(){
   sudo -s
}
chmod(){
   sudo  chmod +x linuxbooster.sh ;
   echo " permission confirm"
}
install(){
sudo apt-get update  && sudo apt-get upgrade  -y && sudo apt-get install preload  && sudo apt-get install tlp tlp-rdw -y &&  sudo apt update  && sudo apt-get autoremove  && rm -r ~/.cache/thumbnails
}
banner
install
chmod
suc
welcome
su
