#!/bin/bash

   sl0="sleep 0.5" ; clip0="xclip -sel clip"  ; scv0="xdotool key Shift+Ctrl+v"   
   backs0="xdotool key BackSpace" ; return0="xdotool key Return"  ; q0="xdotool key q" 
 gnome-terminal --geometry=125x41+50+130 ; sleep 1
 echo 'curl wttr.in/Burgas'  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; $sl0
 # wmctrl -r "Terminal" -e 1,30,20,1270,820
    