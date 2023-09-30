#!/bin/bash

#creating user directory and check memory
echo "Creating user now"
sleep 3
useradd abraham1
echo "creating directory now"
sleep 3
mkdir /tmp/script1
echo "displaying the memory please wait..."
sleep 4
free -m
