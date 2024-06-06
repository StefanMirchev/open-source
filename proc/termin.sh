#! /bin/bash


 # if ! test $(wmctrl -l | grep "TerminalInstall" 2>&1 | wc -l) -eq 1 ; then
 if ! [ $(wmctrl -l | grep "TerminalInstall" 2>&1 | wc -l) -eq 1 ] ; then 
 # zenity --info --no-wrap --text="yes" 

sl0="sleep 0.2" ;   clip0="xclip -sel clip" ; scv0="xdotool key Shift+Ctrl+v" 
backs0="xdotool key BackSpace"  ;  return0="xdotool key Return" ; q0="xdotool key q" 
 gnome-terminal --geometry=120x10+200+10 
# echo "echo '\033]0;TerminalInstall\007'" | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0  ; $sl0 ; $return0
# sleep 1 ; echo "xdotool key Shift+Ctrl+M" | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0  ; $sl0 ; $return0
# echo "clear" | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0

fi 