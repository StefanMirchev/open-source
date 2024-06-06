#!/bin/bash

 #   if [ $(wmctrl -l | grep "VOLUME" 2>&1 | wc -l) -eq 1 ] ; then exit ; fi

     clear
     xy=$(xrandr |awk '$0 ~ "*" {print $1}') ; 
     X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2)
     export X1=$(printf %.0f\\n $(echo "scale=4; (($X0-(4.5*56))*0.98)" | bc -l ))
     export Y1=$(printf %.0f\\n $(echo "scale=4; (($Y0-(3.8*55))*0.975)" | bc -l ))

   click_mute0(){ sleep 0.2; pactl set-sink-mute 0 0   ; wmctrl -c VOLUME ; }
   export -f click_mute0

  click_mute1(){ 
  pactl set-sink-mute 0 1  
  export timer0=230; sleep 0.3 ; ~/work/proc/timers.sh ;  sleep 0.2 ;  export timer0=''
  sleep 0.1 ;  export timer0=''
  wmctrl -c "pqiv: /home/$USER/work/library/image/hlp/sclock.ico" 
  sleep 0.1 ; pactl set-sink-mute 0 0   ; wmctrl -c VOLUME 
           }
   export -f click_mute1

  click_Vol-5(){ pactl set-sink-volume 0 -5% ; wmctrl -c VOLUME; }
  export -f click_Vol-5
  click_Vol+5(){ pactl set-sink-volume 0 +5% ; wmctrl -c VOLUME; }
  export -f click_Vol+5

  while true  # 01
        do 
  app0=''
   vol0=$(pactl list sinks | grep '^[[:space:]]Volume:' | \
   head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')
   app0=$(yad --fixed --form --align=center --title="VOLUME"     --no-buttons   --geometry=150x20+$X1+$Y1 --columns 2 \
        --gtkrc=/home/$USER/work/library/themes/yellow01.css \
        --window-icon=/home/$USER/work/library/image/icon/audio.ico \
        --text "<span font='Serif 17' foreground='blue'> VOLUME</span>""<span font='17'foreground='red'>     $vol0% </span>" \
        --field="<span font='Serif 13' foreground='green'><b>Vol+5%</b></span>:FBTN" 'bash -c " click_Vol+5 ; echo +5 " ' \
        --field="<span font='Serif 13' foreground='green'><b>Vol-5%</b></span>:FBTN" 'bash -c " click_Vol-5 ; echo -5 " ' \
        --field="<span font='Serif 13' foreground='brown'><b>Mute1</b></span>:FBTN"  'bash -c " click_mute1 ; echo M1 " ' \
        --field="<span font='Serif 13' foreground='brown'><b>Mute0</b></span>:FBTN"  'bash -c " click_mute0 ; echo M0 " ' 
          )

  # yad --info --text " $rc0     $? /   $app0"

    if [ -z "$app0" ] ; then  exit ; fi
 done

