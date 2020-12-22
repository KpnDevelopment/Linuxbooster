#! /bin/bash

sudo apt-get update  && sudo apt-get upgrade  -y   && sysctl -w vm.swappiness=10  && sudo apt-get install tlp tlp-rdw -y && sudo tlp start  && sudo apt update && sudo apt-get install preload && sudo apt-get autoremove  && rm -r ~/.cache/thumbnails
&& sudo apt update