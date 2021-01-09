#!/bin/sh

# Author: Vishnu V
# Filename : linuxbooster
# Purpose: Increase the perfomace of Debain based  linux computer

 banner() {
	 echo
	 echo "   -------------Linuxbooster------------"
	 echo "  | This is an experimental project      |"
	 echo "  | It only works im Debain based os     |"
	 echo "  | Thanks to use                        |" 
	 echo "  ---------------------------------------"
	 
	 
   echo "                                                                                                                          "
   echo "                                                                                                                          "
   echo "                                                                                                                          "
   echo "                                                                                                                          "
   echo "                                                                                                                          "
   echo "                                                                                                                          "
  echo  "    B   _      _                  _                     _                                                                           "
  echo  "    o  | |    (_)                | |                   | |                                                                         "
  echo  "    o  | |     _ _ __  _   ___  _| |__   ___   ___  ___| |_ ___ _ __                                                               "
  echo  "    s  | |    | | '_ \| | | \ \/ / '_ \ / _ \ / _ \/ __| __/ _ \ '__|                                                              "
  echo  "    t  | |____| | | | | |_| |>  <| |_) | (_) | (_) \__ \ ||  __/ |     By: Kpn_Dev           "
  echo  "    e  |______|_|_| |_|\__,_/_/\_\_.__/ \___/ \___/|___/\__\___|_|     Author: Vishnu V          "
  echo  "    r                                                                                                                             "               
   echo "                                                                                                                          "
   echo "                                                                                                                          "
  echo "                                                                                                                          "
  echo "                                                                                                                         "
}

batteryboost(){
echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor &&
 sysctl -w vm.swappiness=10 &&
  sudo apt update &&
   sudo tlp start &&
   CPU_SCALING_GOVERNOR_ON_BAT=performance &&
   CPU_ENERGY_PERF_POLICY_ON_BAT=performance &&
   CPU_HWP_ON_BAT=performance &&
   CPU_BOOST_ON_BAT=1 &&
    ENERGY_PERF_POLICY_ON_BAT=performance
}


acboost(){
	echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor &&
 	sysctl -w vm.swappiness=10 &&
  	sudo apt update &&
    sudo tlp start &&
    CPU_SCALING_GOVERNOR_ON_AC=performance  &&
 	CPU_HWP_ON_AC=performance  &&
 	CPU_BOOST_ON_AC=1 &&
 	ENERGY_PERF_POLICY_ON_AC=performance
}


Radeonbattery(){
RADEON_DPM_STATE_ON_BAT=performance
}


RadeonAc(){
RADEON_DPM_STATE_ON_AC=performance
}


banner
cstatus=$(cat /sys/class/power_supply/BAT1/status)
cgraphics=$(lspci | grep VGA)
bat=\'$cstatus\'
graphicscard=\'$cgraphics\'
statusb="Discharging"


Radeon(){
if [ $bat == $statusb  ]
then
Radeonbattery
else
RadeonAc
fi
}

linuxbooster(){
if [ $bat == $statusb ]
then
batteryboost
else
acboost
fi
}

Radeonboost(){
if [[ $graphicscard == *" Radeon"* ]]; 
then
  Radeon
fi
}
#linuxbooster
linuxbooster	
#amdgraphics Boost
Radeonboost
