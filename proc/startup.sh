#!/bin/bash

    case $USER in  kosy) pass0=1 ;; inter) pass0=3 ;; chef) pass0=2 ;; esac 
   sl0="sleep 0.5" ; clip0="xclip -sel clip"  ; scv0="xdotool key Shift+Ctrl+v"   
   backs0="xdotool key BackSpace" ; return0="xdotool key Return"  ; q0="xdotool key q" 
   brows0=/home/$USER/work/proc/browser.sh ; export brs00=1 
 
   # 1. DISPLAY SIZE
   xrandr --newmode 1360x1013 113.75 1360 1448 1584 1808 1013 1016 1026 1051 -hsync +vsync
   sleep 0.5
   xrandr --addmode DP-3 1360x1013 ; sleep 0.5 
   xrandr -s 1360x1013  # ; sleep 0.5
   
  #  1360 = 37.5  1013 = 30.5
  xy=$(xrandr |awk '$0 ~ "*" {print $1}')
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2) 
  KX_0=$(printf %.3f\\n $(echo "(($X0/37.5))" | bc -l )) 
  KY_0=$(printf %.3f\\n $(echo "(($Y0/30.5))" | bc -l ))
  X1=$(printf %.0f\\n $(echo "(($X0-(2.5 *$KX_0))*1.00)" | bc -l ))
  Y1=$(printf %.0f\\n $(echo "(($Y0-(2.5 *$KY_0))*0.00)" | bc -l ))
  X2=$(printf %.0f\\n $(echo "(($X0-(12.5*$KX_0))*0.45)" | bc -l ))
  Y2=$(printf %.0f\\n $(echo "(($Y0-( 7.5*$KY_0))*0.00)" | bc -l ))
  X3=$(printf %.0f\\n $(echo "(($X0-(5   *$KX_0))*0.001)" | bc -l ))
  Y3=$(printf %.0f\\n $(echo "(($Y0-(1   *$KY_0))*0.001)" | bc -l )) 
 # yad --info --text " $X0  $Y0    /    $X1  $Y1 "

   #   yad --fixed --info  --title "STARTUP" --no-buttons --geometry=10x-10+$X3+$Y3 --timeout=5 \
   # --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --skip-taskbar --undecorated  \
   # --text="<span color='black'  background='#58DCE7' font='14'><b>START STARTUP</b></span>" &
   
 #    ~/work/proc/scanner.sh &
      ~/work/proc/main.sh &

   sleep 1 ; echo "$pass0" | sudo -S -k sudo ip link set eno1 down ; sleep 1
   case $USER in  
    kosy) echo "$pass0" | sudo -S -k sudo ip link set eno1 address D8:C0:A6:06:CF:B3 ;; 
   inter) echo "$pass0" | sudo -S -k sudo ip link set eno1 address 08:00:27:8F:4D:7C ;; 
    chef) echo "$pass0" | sudo -S -k sudo ip link set eno1 address D8:C0:A6:06:CF:B3 ;; esac 
   sleep 1 ; echo "$pass0" | sudo -S -k sudo ip link set eno1 up 
  
 # clock 
   /bin/cairo-clock &
  sleep 2 ; wmctrl -r  "MacSlow's Cairo-Clock" -e 1,1280,20,10,10 
  sleep 1 ; wmctrl -r  "MacSlow's Cairo-Clock" -e 1,$X1,$Y1,110,110

  #   weather
  #  if [ $(wmctrl -l | grep "Burgas Center Bulgaria" 2>&1 | wc -l) -eq 0 ]; then  #   1- exist     0-Not exist
  #       export web00=" https://weawow.com/c9140786" ; $brows0
  #       export web00="https://www.windy.com/bg/-%D0%93%D1%80%D1%8A%D0%BC%D0%BE%D1%82%D0%B5%D0%B2%D0%B8%D1%86%D0%B8-thunder?thunder,42.488,27.466,5,m:eTMagC7" ; $brows0 
  #       sleep 2 ; xdotool type "$pass0"  ; xdotool key Return ;  fi &
          
       ~/work/proc/calendar.sh  ; sleep 1 & 
          
       sleep 1 ; sed -i 's/202/212/g' ~/.config/VirtualBox/VirtualBox.xml 
     
       sleep 1 ; ~/work/proc/schedule.sh  &

  #  sleep 2 ; wmctrl -r "Windy:" -e 1,$X2,$Y2,155,310  
  #  sleep 2 ; wmctrl -r "Burgas Center Bulgaria" -e 1,$X2,$Y2,155,300  
  
    gnome-terminal --geometry=125x40+60+18
    echo "gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ font 'Ubuntu Mono 14'
    "  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; $sl0 
    clear
    echo " printf %b '\e]11;#000000\a' ; sleep 2 ; curl wttr.in/Burgas"  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; $sl0 
    sleep 4
    yad --fixed --info  --title "STARTUP" --no-buttons --geometry=10x-10-$X3-$Y3 --timeout=5 \
  --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --skip-taskbar --undecorated  \
  --text="<span color='black'  background='#58DCE7' font='14'><b>FINISH STARTUP</b></span>" 