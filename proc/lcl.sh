#!/bin/bash
# Paste in browser = Win+Alt+L


 var0=$(xclip -selection clipboard -o) ; sleep 1
 # echo "'linux command line $var0'+stackoverflow.com" | xclip -sel clip ;  sleep 0.5 ;  xdotool key Shift+Ctrl+v
 echo "'linux command line $var0'+stackoverflow.com" | xclip -sel clip ;  sleep 0.5 ;  xdotool key Ctrl+v
