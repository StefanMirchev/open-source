#!/bin/bash

 myvar0="$1" ; sleep 0.3 ; fold0=${myvar0%/*} ; sleep 0.3 ; file0=${myvar0##*/} 
foldrem0=${fold0:10:30}


# !!!!!!!!!!!!!!!!!!!  NOT DELETE NOT DELETE NOT DELETE
# zenity --info --no-wrap --ok-label="Recepty" --extra-button=Cancel  --text="\
# <span color=\"\#00EE00\"   font=\"25\"><b>Variables </b></span>
# <span color=\"black\" font=\"15\"><b>myvar0 $myvar0</b></span>
# <span color=\"black\" font=\"15\"><b>fold0  $fold0</b></span>
# <span color=\"black\" font=\"15\"><b>file0  $file0</b></span>
# <span color=\"black\" font=\"15\"><b>(pwd) $(pwd)</b></span>
# <span color=\"black\" font=\"15\"><b>foldrem0 $foldrem0</b></span>"
# !!!!!!!!!!!!!!!!!!!  NOT DELETE NOT DELETE NOT DELETE



  sl0="sleep 0.5" ;   clip0="xclip -sel clip" ;   scv0="xdotool key Shift+Ctrl+v"  ; 
  backs0="xdotool key BackSpace" ;  return0="xdotool key Return" ;   q0="xdotool key q" 
 
# example in sh file
# python3 -c 'import some_module'


# NOT DELETE
#  python3 $1

# NOT DELETE

cd $fold0
wmctrl -c "RunSh" ; sleep 2 
gnome-terminal --geometry=50x10+1000+700 --title="RunSh" ; sleep 0.3
sleep 0.3 ;   xdotool key Shift+Ctrl+M ; wmctrl -r "RunSh" -e 1,965,710,554,200  ; sleep 0.1
echo 'python3' $1  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 


#  cd /work/python
#  gnome-termina
#  sleep 2 ; echo 'python3' /home/inter/work/python/a1.py  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 
