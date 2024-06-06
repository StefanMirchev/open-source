

proc0=smplayer ; export varexp01=$proc0 ;  ~/work/proc/checkproc.sh  ; sleep 0.2 


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
 --back="white" --fontname='Monospace 13' --fore='black' --timeout=0 \
 --undecorated --filename ~/work/proc/aaa.txt  &

sleep 1 ; pactl set-sink-mute 0 0b; pactl set-sink-volume 0 60% 
 x0="$1"  ; smplayer "$x0" &

