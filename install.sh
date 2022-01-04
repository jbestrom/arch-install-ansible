#!/usr/bin/env bash

mount -o remount,size=2G /run/archiso/cowspace;

pacman -Sy git ansible --noconfirm;

git clone https://github.com/jbestrom/arch-install-ansible;

pushd /root/arch-install-ansible
echo $PWD
echo $CWD
ansible-playbook -i localhost install.yml
popd
