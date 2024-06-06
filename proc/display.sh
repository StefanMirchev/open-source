#!/bin/bash

 ❗❗❗
  cvt 1360 1013 60
  xrandr --newmode 1360x1013 113.75 1360 1448 1584 1808 1013 1016 1026 1051 -hsync +vsync
  xrandr --addmode DP-3  1360x1013
  xrandr --addmode Virtual1  1360x1013
  xrandr -s 1360x1013
  
  xrandr --listactivemonitors 
  
  xrandr --delmode DP-3 1360x1013
  xrandr --rmmode 1360x1013
 
 # xrandr -s 1024x768 
 ❗❗❗



 x0=1360 ; y0=1013
 disp0=$(xrandr | grep -e " connected [^(]" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")
 z0=$( echo $x0 x $y0 | sed "s/ //g")
 MODELINE=$(cvt $(echo "$x0 $y0" ) | grep -e "Modeline [^(]" | sed -r 's/.*Modeline (.*)/\1/') 
 MODERES=$(echo $MODELINE | grep -o -P '(?<=").*(?=")') 

  z1=$( echo "$x0 x $y0" | sed "s/ //g") 
  foo=$(cvt $x0 $y0) 
  s0=$( echo $MODELINE | sed 's/"//g' | sed 's/_60.00//g')  

  #NOT DELET NEXT 2 ROW
  echo "disp0->   " $disp0 ; echo "s0->      " $s0 ; echo "MODELINE->" $MODELINE
  echo "z0->      " $z0 ; echo "MODERES-> " $MODERES ; echo "z1->      " $z1 ; sleep 1

  # sleep 15 ; exit
   echo xrandr --newmode $s0 
   echo xrandr --newmode 1360x1013 113.75 1360 1448 1584 1808 1013 1016 1026 1051 -hsync +vsync
 #  sleep 30 ; exit

 # DELETE Screen Resolution 
 clear ; echo ELETE Screen Resolution 
 echo AAAAAA ; xrandr --listactivemonitors ; xrandr ; echo AAAAAAA
 xrandr --delmode $disp0 $z0 ; sleep 1 ;  xrandr --rmmode  $z0 ; sleep 1 ;
 clear ; xrandr ; sleep 5
 
   sleep 30 ; exit


  clear ; echo CREATE Screen Resolution 
  echo 222 ; echo if ok must be empty ; xrandr --newmode $s0 ; echo 222
  echo 333 ; echo if ok must be empty ; xrandr --addmode $disp0  "$z0" ; echo 333 ; sleep 3
 #  echo 3 ; echo if ok must be empty ; xrandr --addmode DP-3  "720x480_60.00" ; echo 3 ; sleep 3
  echo 444 ; echo if ok must be empty ; xrandr -s $z1 ; echo 444 ;  xrandr ; sleep 5

