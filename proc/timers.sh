#!/bin/bash


  xy=$(xrandr |awk '$0 ~ "*" {print $1}')
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2) 
  KX_0=$(printf %.3f\\n $(echo "(($X0/37.5))" | bc -l )) 
  KY_0=$(printf %.3f\\n $(echo "(($Y0/30.5))" | bc -l ))
  X1=$(printf %.0f\\n $(echo "(($X0-(7.2*$KX_0))*0.001)" | bc -l ))
  Y1=$(printf %.0f\\n $(echo "(($Y0-(3.0*$KY_0))*0.001)" | bc -l ))
  X2=$(printf %.0f\\n $(echo "(($X0-(7.1*$KX_0))*0.001)" | bc -l ))
  Y2=$(printf %.0f\\n $(echo "(($Y0-(2.5*$KY_0))*0.001)" | bc -l ))



  export GTK_THEME="timers"  

 val0=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 ))) 
 val1=${val0:30:2}  ; play0='ffplay -i -autoexit -nodisp'
 i0=0 ;  p0=0 ; sek0=$timer0 ; sleep 0.2 ; sound0=n

  proc01(){ sleep 1 ; xdotool type 60*1; sleep 0.5 ; }
 
  if [ -z "$sek0" ] ; then  
       sound0=y ;  proc01 &
  sek0=$(yad --fixed --form --title="DURATION"  --separator="" --geometry=100x50-$X1-$Y1 \
--gtkrc=/home/$USER/work/library/themes/brown01.css \
--field="<span font=\'15\' foreground=\'blue\'>Sekonds</span>"  \
--window-icon=/home/$USER/work/library/image/icon/clock.ico \ ; ) 
 fi

 a0=$(echo $sek0 |  bc -l) ;  p0=${a0%.*} ; sleep 1
 if [ -z "$sek0" ] > /dev/null 2>&1 ; then  exit ;  fi

  p1=$(echo "scale=0;$p0*0.1" | bc -l) ; p10=${p1%.*}  
  p1=$(echo "scale=0;$p0*0.2" | bc -l) ; p20=${p1%.*}  
  p1=$(echo "scale=0;$p0*0.3" | bc -l) ; p30=${p1%.*}  
  p1=$(echo "scale=0;$p0*0.4" | bc -l) ; p40=${p1%.*}  
  p1=$(echo "scale=0;$p0*0.5" | bc -l) ; p50=${p1%.*}  
  p1=$(echo "scale=0;$p0*0.6" | bc -l) ; p60=${p1%.*}  
  p1=$(echo "scale=0;$p0*0.7" | bc -l) ; p70=${p1%.*}  
  p1=$(echo "scale=0;$p0*0.8" | bc -l) ; p80=${p1%.*}  
  p1=$(echo "scale=0;$p0*0.9" | bc -l) ; p90=${p1%.*}  
  p1=$(echo "scale=0;$p0*1.0"   | bc -l) ; p100=${p1%.*} 
  
(while [ $i0 -lt $p0 ]
do 
      i0=$[ $i0 + 1 ] ; sleep 1
      # <span font=\"Serif 17\" foreground=\"red\" background=\"yellow\">  Backup  </span>
 
    echo "# Count to $p0  $i0 sec "
    echo "<span  color='black' font='40'>  $p0  $i0 sec </span> "
   if   [ $i0 = $p10 ] > /dev/null 2>&1 ; then  echo "10"  
   elif [ $i0 = $p20 ] > /dev/null 2>&1 ; then  echo "20" 
   elif [ $i0 = $p30 ] > /dev/null 2>&1 ; then  echo "30"   
   elif [ $i0 = $p40 ] > /dev/null 2>&1 ; then  echo "40"   
   elif [ $i0 = $p50 ] > /dev/null 2>&1 ; then  echo "50"  
   elif [ $i0 = $p60 ] > /dev/null 2>&1 ; then  echo "60"
   elif [ $i0 = $p70 ] > /dev/null 2>&1 ; then  echo "70"      
   elif [ $i0 = $p80 ] > /dev/null 2>&1 ; then  echo "80"       
   elif [ $i0 = $p90 ] > /dev/null 2>&1 ; then  echo "90"  
   elif [ $i0 = $p100 ] > /dev/null 2>&1 ; then  echo "100"  
   fi

 if [ $i0 == $p100  ] ; then
   

        if [ $sound0 == y  ] ; then 
           pqiv ~/work/library/image/hlp/sclock.jpeg & 
           $play0 ~/work/library/sound/zen.mp3 & 
       fi
     sleep 0.3 ; wmctrl -c "TIMER" 
 fi

done)  | yad --fixed --progress --title="TIMER"  --geometry=260x50-$X2-$Y2 \
--gtkrc=/home/$USER/work/library/themes/green03.css --no-buttons \
--window-icon=/home/$USER/work/library/image/icon/clock.ico 
 rc0=$?
 sleep 3 ; wmctrl -c "TIMER" 
