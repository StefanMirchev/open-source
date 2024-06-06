 sl0="sleep 1.0" ; clip0="xclip -sel clip" ; scv0="xdotool key Shift+Ctrl+v"  ; 
 backs0="xdotool key BackSpace" ; return0="xdotool key Return" ; q0="xdotool key q" 
 gnome-terminal
 # echo "bash -x ~/work/proc/main.sh"  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 
 #echo "bash -x ~/work/proc/volume.sh"  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 
 echo "bash -x $1"  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 
  