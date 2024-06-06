#!/bin/bash
  
export web00=" ~/work/library/bookmarks/browser/"
myvar0="$1" ; sleep 0.1 ; fold0=${myvar0%/*} ; sleep 0.1 ; file0=${myvar0##*/} 
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


# rm -r /var/www/html/$file0
cp $myvar0 /var/www/html ; export web00="localhost/$file0" 

$brows0 &
sleep 3 ; xdotool search --name "Chromium" set_window --name "Browser-PHP" 
sleep 1 ; wmctrl -r "Browser-PHP" -e 1,1000,10,600,400 
sleep 4 ; rm -r /var/www/html/$file0

   #  zenity --info  --no-wrap --text=FINISH 


#!!!!! cd /home/inter/Desktop     ;    scp bbb.txt kosy@192.168.0.206:/home/kosy/Deskto
# !!!!! scp /home/inter/Desktop/bbb.txt kosy@192.168.0.206:/home/kosy/Desktop

