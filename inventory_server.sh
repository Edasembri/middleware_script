#!/bin/bash



echo "Checking the kernel version"
uname -r
echo "Checking the os version"
cat /etc/os-release
echo "Checking the hard drive"
lsblk
echo "Checking the number of processor"
nproc
