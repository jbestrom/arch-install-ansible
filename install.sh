#!/usr/bin/bash

mount -o remount,size=2G /run/archiso/cowspace;

pacman -Sy git ansible --noconfirm;

git clone https://github.com/jbestrom/arch-install-ansible;

pushd arch-install-ansible
ansible-playbook -i localhost install.yml
popd
