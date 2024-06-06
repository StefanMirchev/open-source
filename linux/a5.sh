#!/bin/bash


 xy=$(xrandr |awk '$0 ~ "*" {print $1}') ; 
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2)
  export X1=$(printf %.0f\\n $(echo "scale=4; (($X0-330)*0.500)" | bc -l ))
  export Y1=$(printf %.0f\\n $(echo "scale=4; (($Y0-5)*0.390)" | bc -l ))
  export X2=$(printf %.0f\\n $(echo "scale=4; ($X1*1.095)" | bc -l ))
  export Y2=$(printf %.0f\\n $(echo "scale=4; ($Y1*0.995)" | bc -l ))

yad --fixed --progress   --title "FINIHS GDRIVE" --no-buttons --geometry=10x-10+$X2+$Y2 --timeout=9 \
 --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --skip-taskbar --undecorated  \
 --text="<span color='black'  background='#58DCE7' font='14'><b>FINISH</b></span>" 