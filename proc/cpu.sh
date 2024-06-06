#!/bin/bash

clear 
   xy=$(xrandr |awk '$0 ~ "*" {print $1}') ; 
   X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2)
   X1=$(printf %.0f\\n $(echo "scale=4; (($X0-(4.2*56))*1.08)" | bc -l ))
   Y1=$(printf %.0f\\n $(echo "scale=4; (($Y0-(1.1*55))*0.11)" | bc -l ))
   temp0=0 ; limit0=60 ; temp1=$'\xe2\x84\x83' ; rc0=0


 ( for i in `seq 1 1200` ; do
  aaa=$(echo $[100-$(vmstat 1 2 | tail -1 | awk '{print $15}')]"%")
  echo "#CPU ${aaa}" ; sleep 0.5 
  done ) |  yad --fixed --progress --title="CPU TEMPERATURE" --no-buttons \
  --gtkrc=/home/$USER/work/library/themes/green01.css  --undecorated \
  --geometry=10x-10+$X1+$Y1 -skip-taskbar --borders=0 --timeout=1200 \
  --window-icon=/home/$USER/work/library/image/icon/system.ico &

# yad --progress --title="CPU   USED "  --no-buttons --timeout=65 --skip-taskbar \
# --geometry=30x30+130+150 --gtkrc=/home/$USER/work/library/themes/green01.css &
 
 # ( for i in `seq 1 60` ; do
 #  aaa=$(awk '{u=$2+$4; t=$2+$4+$5; if (NR==1){u1=u; t1=t;} else print ($2+$4-u1) * 100 / (t-t1) "%"; }' \
 #  <(grep 'cpu ' /proc/stat) <(sleep 1;grep 'cpu ' /proc/stat))
 #   echo "# Reference 1-100%    ${aaa}" ; sleep 0.5 
 #   done ) | yad --progress --title="CPU   USED "  --no-buttons --timeout=65 --skip-taskbar \
 #  --geometry=330x60+130+350 --gtkrc=/home/$USER/work/library/themes/green01.css &
