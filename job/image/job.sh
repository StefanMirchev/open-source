#!/bin/bash

pause(){
  read   -p " Press [Enter] key to continue..." fackEnterKey
       }

 for ((i=20;i<99;i++))
  do 

    if test -f  $i.png; then
                 echo "$i.png yes"
                 sleep 0.01
            else
                 echo "$i.png NO"
                 sleep 0.01
xdotool key Shift+Ctrl+Print 
yad --info --no-wrap --title "Mark an area"  --geometry=50x50+50+900 --text=\
"Click OK
Create $i.png" 
 xclip -selection clipboard -t image/png -o > $i.png ; sleep 3 
sleep 0.5 ;   xdotool key Shift+Ctrl+M


                 break
         fi


done


