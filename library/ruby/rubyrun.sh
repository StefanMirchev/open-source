#!/bin/bash

 myvar0="$1" ; sleep 1 ; fold0=${myvar0%/*} ; sleep 1 ; file0=${myvar0##*/} 
foldrem0=${fold0:10:30}

cd $fold0
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
 

# NOT DELETE
#  python3 $1

# NOT DELETE
# gnome-terminal 
# echo 'ruby' $1  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 

cd $fold0
# killall gnome-terminal-server ; sleep 0.3 
# gnome-terminal --geometry=50x10+1000+700 --title="Run Sh" ; sleep 0.3
# sleep 0.3 ;   xdotool key Shift+Ctrl+M ; wmctrl -r "Run Sh" -e 1,965,710,554,200  ; sleep 0.1
# echo 'ruby' $1  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 

 wmctrl -c "RunRuby" ; sleep 1 ; cd ~/work/ruby
 gnome-terminal --geometry=50x10+5+700 --title="RunRuby" ; sleep 0.3
 sleep 0.3 ;   xdotool key Shift+Ctrl+M ; wmctrl -r "RunRuby" -e 1,5,710,600,200  ; sleep 0.1
 echo 'ruby' $1  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 



sleep 5