#!/bin/bash

  clear
  xy=$(xrandr |awk '$0 ~ "*" {print $1}') ; 
  X0=$(echo $xy | cut -d'x' -f1) ;  Y0=$(echo $xy | cut -d'x' -f2)
  export X1=$(printf %.0f\\n $(echo "scale=4; (($X0-260)*0.970)" | bc -l ))
  export Y1=$(printf %.0f\\n $(echo "scale=4; (($Y0-170)*0.600)" | bc -l ))
  export Y2=$(printf %.0f\\n $(echo "scale=4; $Y1*1.350" | bc -l ))
  export fold0=/home/$USER/work/proc  sear0=`xsel -ob`  subl0="/opt/sublime_text/sublime_text"

  if [ -f "$HOME/work/proc/aaa.txt" ] ; then  rm ~/work/proc/aaa.txt ; fi

  start_searc() {
    # yad --info --text ''  --timeout=2
     sleep 1
      xdotool key Ctrl+c ; sleep 0.5 ; fold0=`xsel -ob` ; xdotool key Tab ; sleep 0.5
      xdotool key Ctrl+c ; sleep 0.5 ; sear0=`xsel -ob` 
      yad --fixed --form --text "<b>Now searching.....      </b>" --title="Now search" \
      --geometry=10x-10+$X1+$Y2 --borders=10 --no-buttons --undecorated --skip-taskbar \
     --gtkrc=/home/$USER/work/library/themes/yellow01.css  \
     --window-icon=/home/$USER/work/library/image/icon/search.ico &

     ❗❗❗ NOT SEARH I .DOC OR .DOCX  ❗❗❗
     sleep 1
 
       grep -rnw $fold0 -e $sear0 > ~/work/proc/aaa.txt
     # grep -r "abcd1234" --include="*.html" $fold0 >> ~/work/proc/aaa.txt
        
    for k in {0..30}; do sleep 0.5 ; echo  $k
    if [ -f "$HOME/work/proc/aaa.txt" ] ; then 
        sleep 1 ; wmctrl -c "Now search" ; sleep 1  
          $subl0 ~/work/proc/aaa.txt  ; exit ; fi 
    done 
       wmctrl -c "Now search" 
                   }
       export -f start_searc
 
      str0=$(yad --fixed --form --text "<b>Search content of file</b>" --title="Search" \
     --geometry=10x-10+$X1+$Y1 \
     --gtkrc=/home/$USER/work/library/themes/yellow01.css --borders=10 --no-buttons \
     --field="<span font=\'15\' foreground=\'blue\'>Patch</span>" $fold0 \
     --field="<span font=\'15\' foreground=\'blue\'>Text</span>" $sear0 \
     --field="<span font='Serif 13' foreground='red'>Start</span>:FBTN" 'bash -c start_searc' \
     --window-icon=/home/$USER/work/library/image/icon/search.ico 
              )
      killall start_searc 
      # fold0=$(echo $str0 | cut -d'|' -f1)
      # sear0=$(echo $str0 | cut -d'|' -f2)
     