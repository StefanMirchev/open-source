#!/bin/bash
 
  export GTK_THEME="clock"  
 while :
 do
  # date +"%b %d, %Y  %r"
   date +"%a %d %b %H:%M:%S"
   sleep 0.5
 done 2>&1 | yad --title=clock --width=260 --form --cycle-read --borders=2 \
 --gtkrc=/home/$USER/work/library/themes/aqua.css --center \
 --posx=-20 --posy=-120 --field=": " --no-buttons --undecorated  &
 
#while :
#do
#  date +"%a %d %b %H:%M %S"
#  sleep 0.5
#done 2>&1 | GTK2_RC_FILES=/home/$USER/work/library/themes/yellow01.css yad --title=clock \
#--geometry=330x0+420+16 --form --cycle-read --field=": " --no-buttons \
#--undecorated --gtk-module=/home/kosy/.themes/beyond &



