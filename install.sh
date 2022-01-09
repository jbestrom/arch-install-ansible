#!/usr/bin/env bash
set -e

mount -o remount,size=2G /run/archiso/cowspace;

pacman -Sy git ansible python-passlib --noconfirm;

git clone https://github.com/jbestrom/arch-install-ansible;

ansible-playbook -i localhost /root/arch-install-ansible/install.yml
