#!/bin/bash




proc0=mp4 ; export varexp01=$proc0 ;  ~/work/proc/checkproc.sh  ; sleep 0.2 


  echo "VIDEO
 W    Zoom
 E    Zoom+
 Auto Zoom+W
AUDIO
 9  Volume-
 0  Volume+
MOVE PICTURE
 MoveUp   Alt+Up
 MoveDown Alt+Down
PLAYLIST
   Ctrl+l" > ~/work/proc/aaa.txt


 yad  --text-info --title="DICTIONARY" --geometry=220x290+1+750 --no-buttons \
 --back="white" --fontname='Monospace 13' --fore='black' --timeout=15 \
 --undecorated --filename ~/work/proc/aaa.txt  &


 pactl set-sink-mute 0 1  ;  x0="$1"  ; smplayer "$x0" &


 sleep 0.5 ; wmctrl -r "SMPlayer"  -e 1,400,10,1400,800  ; sleep 0.5  &  
 sleep 1.0 ; for i in {1..1} ; do xdotool key Shift+w   ; sleep 1.0 ; done 
 sleep 0.0 ; for i in {1..6} ; do xdotool key e         ; sleep 0.0 ; done 
 sleep 0.0 ; for i in {1..3} ; do xdotool key Alt+Down  ; sleep 0.0 ; done
 sleep 0.0 ; for i in {1..2} ; do xdotool key Alt+Right ; sleep 0.0 ; done
 sleep 0.5 ; wmctrl -r "SMPlayer"  -e 1,400,10,1400,800  ; sleep 0.5  & 
 sleep 2 ; pactl set-sink-mute 0 0b; pactl set-sink-volume 0 40% 
# sleep 20  ; wmctrl -c  "ZumSMPlayer"  ; sleep 0.5
