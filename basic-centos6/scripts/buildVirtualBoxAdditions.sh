#!/bin/bash
#Script for installing virtual machine guest additions.
#The content of this file is based on the Bento project: https://github.com/chef/bento 

yum -y install kernel-headers 
yum -y install kernel-devel 
yum -y install gcc
yum -y install make

echo "Preparing to install VirtualBox Guest additions"
mkdir /tmp/vbox
VER=$(cat /tmp/.vbox_version)
mount -o loop /tmp/VBoxGuestAdditions_$VER.iso /tmp/vbox

echo "Installing VirtualBox guest additions..."
sh /tmp/vbox/VBoxLinuxAdditions.run

echo "Cleaning up after VirtualBox guest additions installation"
umount /tmp/vbox
rmdir /tmp/vbox
rm /tmp/VBoxGuestAdditions_$VER.iso

