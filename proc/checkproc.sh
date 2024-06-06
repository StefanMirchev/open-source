#!/bin/bash

 export varexp00="$1" ; typ0=$(ls -al "$1"  | awk '{print $1}') 
 #  yad --text " checkproc  $varexp00  " 
  if [ "${typ0:8:1}" = "-" ] || [ "${typ0:9:1}" = "-" ] ; then
    #yad --text " $varexp00 YES " 
  ~/work/proc/unlock.sh 
  fi
 $varexp00