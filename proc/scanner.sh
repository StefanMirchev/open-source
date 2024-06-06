#!/bin/bash

   pqiv -c -c -i  ~/work/library/image/hlp/scanner.jpg &  
simple-scan -d  &
  while [ "$(wmctrl -l | grep 'Document Scanner')" = "" ]; do
    echo "Waiting..." > /dev/null
  done
# xdotool windowminimize $(wmctrl -l | grep 'Document Scanner' | awk '{print $1}')
 sleep 1 ; wmctrl -r "pqiv: /home/$USER/work/library/image/hlp/scanner.jpg" -e 1,800,10,550,750 &  
 sleep 15 ; killall pqiv
