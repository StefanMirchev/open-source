#!/bin/bash




sleep 0.5 ;  xdotool key Ctrl+c  ;  export varexp00=`xsel -ob` 
sleep 0.1 ; fold0=${varexp00%/*} ; sleep 0.1 ; file0=${varexp00##*/} ;foldrem0=${fold0:10:30}
cd $fold0 ; typ0=$(ls -al "$varexp00"  | awk '{print $1}') ; sleep 0.1
 # yad --text " 02 checkproc  $typ0 "  ; exit 
  if [ "${typ0:8:1}" = "-" ] || [ "${typ0:9:1}" = "-" ] ; then
  # ~/work/proc/unlock.sh 
      sleep 0.2 ; sshpass -p $pass0 sudo chmod ugo+rwx $varexp00 ; sleep 0.2 
      sleep 0.2 ; sshpass -p $pass0 sudo chmod +rwxrwxrwx $varexp00 ; sleep 0.2 
  fi 

# fold0=$(echo $str0 | cut -d'|' -f2)
# fold1=$(echo $a1 | cut -d'x' -f1)

aa0=$(echo $file0 | cut -d'.' -f2)

# yad --text " 01runproc01  $file0 $aa0" 
 #if  [ "$(echo $file0 | cut -d'.' -f2)" = "sh" ] 
 if  [ "$aa0" = "sh" ] ; then
  $varexp00
 fi

