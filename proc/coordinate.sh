#!/bin/bash

  sl0="sleep 0.5" ;   clip0="xclip -sel clip" ;   scv0="xdotool key Shift+Ctrl+v"  ; 
  backs0="xdotool key BackSpace" ;  return0="xdotool key Return" ; user0='n'
  chnterm0="sleep 0.5 ; xdotool keydown alt key Tab ; sleep 0.5 ; xdotool keyup alt"
  all0='$clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0'  
  $sl0 ; ~/work/proc/termin.sh ; sleep 1 ; wmctrl -r "Terminal" -e 1,2,0,50,50

  $sl0 ; echo " watch -t -n 0.0001 xdotool getmouselocation " | eval $all0 
 # $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0 
  