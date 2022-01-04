!/bin/bash

mount -o remount,size=2G /run/archiso/cowspace;

pacman -Sy git ansible;git clone https://github.com/jbestrom/arch-install-ansible;
