#!/bin/bash

clear 
 sleep 0.5 ;  xdotool key Ctrl+c  ;  export varexp00=`xsel -ob` 
 sleep 0.1 ; fold0=${varexp00%/*} ; sleep 0.1 ; file0=${varexp00##*/} ;foldrem0=${fold0:10:30}
 cd $fold0 ; typ0=$(ls -al "$varexp00"  | awk '{print $1}') ; sleep 0.1

  pqiv -c -c -i  $varexp00