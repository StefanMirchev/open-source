#!/bin/bash


  xy=$(xrandr |awk '$0 ~ "*" {print $1}') ; 
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2)
  export X1=$(printf %.0f\\n $(echo "scale=4; (($X0-300)*0.900)" | bc -l ))
  export Y1=$(printf %.0f\\n $(echo "scale=4; (($Y0-350)*0.020)" | bc -l ))
  export X2=$(printf %.0f\\n $(echo "scale=4; ($X1*0.9385)" | bc -l ))
  export Y2=$(printf %.0f\\n $(echo "scale=4; $Y1*15.6428" | bc -l ))
  export X3=$(printf %.0f\\n $(echo "scale=4; ($X2*1.0146)" | bc -l ))
  export Y3=$(printf %.0f\\n $(echo "scale=4; $Y2*1.2750" | bc -l ))
  name0=''

 list_pid(){ 
xdotool key Ctrl+c ; sleep 0.5 ; name0=$(echo "`xsel -ob`" | tr A-Z a-z ) # ; xdotool key Tab ; sleep 0.5
 # yad --info  --text " $(($X1-120+50))    $(($Y1+199+60))"
 click_lmouse() { xdotool mousemove $X3 $Y3 ; sleep 1 ; xdotool click 1 ; }
 click_lmouse &
 yad --fixed --title="EndProc"  --no-buttons --selectable-labels \
 --geometry=10x-10+$X2+$Y2 --skip-taskbar \
 --gtkrc=/home/$USER/work/library/themes/white.css --timeout=15 --text="\
 Process Name              Memory %Cpu    PID
$(ps -eo cmd,%mem,%cpu,pid --sort=-%mem | grep $name0 )"
           }
export -f list_pid


killproc() {  
      xdotool key Ctrl+c ; sleep 0.5 ; name0=`xsel -ob` 
      xdotool key Tab ; sleep 0.5 ; xdotool key Tab ; sleep 0.5
     # pid0=$(pidof -s "Viber")
      pid0=$(pidof -s "$name0")
      sleep 0.5 ; echo $pid0 | xsel -ib
      sleep 0.5 ; xdotool key Ctrl+v ;  sleep 0.5 ;  xdotool key BackSpace 

  killall $name0 ; sleep 2 ; wmctrl -c $name0 ; sleep 2 ; kill -1 $pid0 ; kill -9 $pid0 
  xdotool key Tab ; sleep 1 ; xdotool key Tab 
  $(ps -A -ostat,ppid | awk '/[zZ]/ && !a[$2]++ {print $2}') ; }

  export -f killproc


        while true
        do

   
yad --fixed --form --title="KillProcess" --geometry=10x-10+$X1+$Y1 \
--field="<span font='15' foreground='blue'>Process</span>" '' --borders=10 \
--field="<span font='Serif 13' foreground='green'>Search PID number</span>:FBTN" 'bash -c list_pid' \
--field="<span font='15' foreground='blue'>KILL PID</span>" ''  \
--field="<span font='Serif 13' foreground='red'>Kill</span>:FBTN" 'bash -c killproc' \
--window-icon=/home/$USER/work/library/image/icon/kill.ico --no-buttons  > ~/work/proc/aaa.txt 
  rc0=$? 
    killproc
 if [ $rc0 = 252 ]; then  sleep 1.0 ; sleep 1 ; killall list_pid ; killall killproc ; clear ; exit ; sleep 0.5 ; fi
  
             done

