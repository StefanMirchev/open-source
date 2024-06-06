#!/bin/sh



myvar0="$1" ; sleep 0.5 ; fold0=${myvar0%/*} ; sleep 0.5 ; file0=${myvar0##*/} ; cd $fold0 

 # foldrem0=${fold0:10:30}
 # zenity --info  --no-wrap --text=$myvar0
 # zenity --info  --no-wrap --text=$fold0  ; zenity --info --no-wrap --text=$file0 ; 
 # zenity --info --no-wrap --text=$(pwd)   ; zenity --info  --no-wrap --text=$foldrem0 

  proc01(){
    sleep 1 ; xdotool type $file0 ; sleep 0.5
       }
  proc01 &


 sear0=$fold0/$(echo $file0 | cut -d'.' -f1)
 # fold0=$(echo $file0 | cut -d'.' -f2)
 #  zenity --width=800 --height=10 --info --text="$sear0  " # !!!


str0=$(zenity --forms --width=400 --height=10 \
  --title="UNZIP ARHIV ONLY MAGASYNC FOLDER" \
  --text " Unzip to $1" \
--add-entry="File Name" \ 
#--add-entry="Patch "
     )
              case $? in
                    0)    unzip -P 485754433689E4A4 -d  $sear0  $1 ;;    
                    1) wmctrl -c "UNZIP ARHIV ONLY MAGASYNC FOLDER" ; sleep 1 ;  wmctrl -c "Information" ; sleep 0.5 ; killall myweb.sh ; clear ; exit ;;              
              esac 




 # sleep 15