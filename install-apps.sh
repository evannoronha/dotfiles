#!/bin/bash

# exe() { echo "> $@" ; "$@" ; }
 exe() { echo "> $@" ; }

sudo -v

while read line; do
   if [ "$line" = "" ]; then
      continue
   fi

   if [[ $line == "#"* ]]; then
      continue
   fi
  
   if [[ $line == "group"* ]]; then
      groupname=`echo $line | cut -d " " -f 2`
      exe dnf groupinstall -y $line
   else
      exe dnf install -y $line
   fi
done < packages.txt

