#!/bin/bash
# brows0="/usr/bin/google-chrome-stable"


 WID=`xdotool search "Google"`
 xdotool windowactivate --sync $WID
 sleep 1
 xdotool search --onlyvisible --class Chrome windowfocus key ctrl+r
 sleep 2
 xdotool mousemove 298 293
 sleep 3
 xdotool click 1  
 sleep 3
 xdotool windowminimize --sync $WID
 sxdotool key --clearmodifiers ctrl+r
