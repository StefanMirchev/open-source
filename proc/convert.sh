#!/bin/bash

  clear
  xy=$(xrandr |awk '$0 ~ "*" {print $1}') ; 
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2)
  export X1=$(printf %.0f\\n $(echo "scale=4; (($X0-(8*56))*0.599)" | bc -l ))
  export Y1=$(printf %.0f\\n $(echo "scale=4; (($Y0-(2.8*55))*0.50)" | bc -l ))
  
fold0=~/work/proc 
myvar1="$1" ; sleep 0.5 ; fold1=${myvar1%/*} ; sleep 0.5 ; file1=${myvar1##*/} 
foldrem1=${fold1:10:30} ; file2=${file1%.*}

      yad --fixed --form --title="convert" \
       --geometry=10x-10+$X1+$Y1 --borders=10 --undecorated --skip-taskbar --timeout=3 \
     --gtkrc=/home/$USER/work/library/themes/brown01.css --no-buttons  \
     --window-icon=/home/$USER/work/library/image/icon/search.ico \
     --text  "<span color='red' font='15'><b>Convert $file1 to $file2.ico</b></span>" &


  sleep 1 ; $(ffmpeg -i $myvar1 -vf scale=50:-1 $fold1/$file2.ico) ; sleep 1
  wmctrl -c Convert 


