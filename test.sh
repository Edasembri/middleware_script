#!/bin/bash

if [ -f /etc/passwd ]

then
  echo exist
else
  echo missing
fi

if [ -d /tmp/edem1 ]
 then
  echo exist
else
 mkdir /tmp/edem1
echo new > /tmp/edem1/file
cat /tmp/edem1/file

fi
