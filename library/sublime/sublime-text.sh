#!/bin/bash


 case $USER in  kosy) pass0=1 ;; inter) pass0=3 ;; chef) pass0=2 ;; esac 
# recode CP1251..UTF8 $1 ; sleep 0.5
# NOT THIS !!!!! echo $1 |  xclip -sel clip
# dos2unix -n $1 $1
#  rm -r  ~/.config/sublime-text/Local
/opt/sublime_text/sublime_text -n "$1" &
sleep 0.5 ; sshpass -p $pass0 sudo chmod ugo+rwx $1
#  sleep 0.5 ; xdotool getactivewindow windowmove 120 300 windowsize 1100 400
  
# sleep 1 ; xdotool key Ctrl+s ; xdotool key Ctrl+s ; xdotool key Ctrl+s  
# xdotool key Ctrl+s ; xdotool key Ctrl+s ; xdotool key Ctrl+s ; xdotool key Ctrl+s
# xdotool key Ctrl+s ; xdotool key Ctrl+s ; sleep 0.5 ; # xdotool key Alt+F4

# if test $(wmctrl -l | grep "sublime" 2>&1 | wc -l) -eq 1; then 
 #   sleep 1
 #  xdotool key Alt+F4
 #  wmctrl -vxa "KMagnifier"
 #  xdotool key Left space 
# fi

