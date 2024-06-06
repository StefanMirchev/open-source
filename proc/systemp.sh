#!/bin/bash



 # NOT DELETE
 # 1. acpitz          30.0°C 16 Motherboard around CPU  
 # 2. pch_cannonlake  45.0°C 39 pch_cannonlake  
 # 3. x86_pkg_temp    56.0°C 62 Processing CPU 
 # See - /home/kosy/work/library/image/hlp/CPU.jpg
 #clear 
  if [ $(wmctrl -l | grep 'FAN' 2>&1 | wc -l) -ge 1 ] ; then exit  ; fi

  xy=$(xrandr |awk '$0 ~ "*" {print $1}') ; 
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2)
   X1=$(printf %.0f\\n $(echo "scale=4; (($X0-(1.5*56))*0.98)" | bc -l ))
   Y1=$(printf %.0f\\n $(echo "scale=4; (($Y0-(2*55))*0.20)" | bc -l ))
   X2=$(printf %.0f\\n $(echo "scale=4; (($X1-(35)))" | bc -l ))
   Y2=$(printf %.0f\\n $(echo "scale=4; (($Y1-(40)))" | bc -l ))
   temp0=0 ; limit0=60 ; temp1=$'\xe2\x84\x83' ; rc0=0

 ( for i in `seq 1 5` ; do
   aaa=$(paste <(cat /sys/class/thermal/thermal_zone2/type) <(cat /sys/class/thermal/thermal_zone2/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/')
   echo ${aaa:14:2}  > /$HOME/work/proc/aaa.txt ; done ) 
   temp0=`cat /$HOME/work/proc/aaa.txt` ; sleep 1 ; temp1=$'\xe2\x84\x83'
   if (( $temp0 >= $limit0 )); then 
   
  ( for i in `seq 1 1200`
           do
     aaa=$(paste <(cat /sys/class/thermal/thermal_zone2/type) <(cat /sys/class/thermal/thermal_zone2/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/')
     echo ${aaa:14:2} ; echo "#${aaa:14:2}"$'\xe2\x84\x83' ;  sleep 2 
    done ) | yad --fixed --progress --title="CPU TEMPERATURE" --no-buttons -skip-taskbar --borders=0 \
  --gtkrc=/home/$USER/work/library/themes/white01.css  --undecorated --geometry=80x20+$X2+$Y2 \
  --window-icon=/home/$USER/work/library/image/icon/temperature.ico --timeout=10  &
#    # func01 &
    yad --fixed --title="FAN" --picture --size=orig --geometry=80x130+$X1+$Y1 --timeout=10 \
   --window-icon=/home/$USER/work/library/image/icon/fan.ico  --button="❌":1 \
  --filename ~/work/library/image/hlp/FAN.gif  --center --inc=256 --timeout=10 \
   --undecorated --text "  <span color='black' font='12'><b></b></span>" 
    rc0=$? 
 # if [ $rc0 = 1 ]; then  sleep 0.5 ;  wmctrl -c CPU TEMPERATURE ; sleep 0.3 ; wmctrl -c FAN ; clear ; exit ; sleep 0.5 ; fi
   wmctrl -c CPU TEMPERATURE ; sleep 2 ; wmctrl -c FAN
   fi
 # sensors | grep '^temp1:' | sed -e 's/.*: \+\([+-][0-9.]\+\)°C.*$/0\1/'
 # sensors | awk '{if (match($0, "Core 0")){printf("%d",$3);} }'
 # sensors | sed -rn 's/.*Core 0:\s+([^ ]+).*/\1/p'
 # sensors | sed -rn 's/.*Core 0:\s+.([0-9.]+).*/\1/p'
 # sensors | sed -rn 's/.*Core 0:\s+.([0-9]+).*/\1/p'