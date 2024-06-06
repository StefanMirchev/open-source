#!/bin/bash

  xy=$(xrandr |awk '$0 ~ "*" {print $1}')
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2) 
  KX_0=$(printf %.3f\\n $(echo "(($X0/37.5))" | bc -l )) 
  KY_0=$(printf %.3f\\n $(echo "(($Y0/30.5))" | bc -l ))
  X1=$(printf %.0f\\n $(echo "(($X0-(8.5 *$KX_0))*0.35)" | bc -l ))
  Y1=$(printf %.0f\\n $(echo "(($Y0-(1.00*$KY_0))*0.04)" | bc -l ))
  X3=$(printf %.0f\\n $(echo "(($X0-(5   *$KX_0))*0.36)" | bc -l ))
  Y3=$(printf %.0f\\n $(echo "(($Y0-(1   *$KY_0))*0.95)" | bc -l )) 

myvar0="$1" ; sleep 0.1 ; fold0=${myvar0%/*} ; sleep 0.1 ; file0=${myvar0##*/} 
foldrem0=${fold0:10:30}
export GTK_THEME="unlock"  #!/bin/bash

cd $fold0 ; sleep 0.5 ; econ0=$(file --mime-encoding $file0)


 econ1=$(echo "$econ0" | tr a-z A-Z) ; 
yad --fixed --info  --title "STARTUP" --no-buttons --geometry=10x-10+$X1-$Y1 --timeout=15 \
--gtkrc=/home/$USER/work/library/themes/red.css  --borders=3 --skip-taskbar --undecorated  \
--text="<span color='black'  background='yellow' font='14'><b> $econ1 /iso-8859-1=ANSI \
; binary is bad encode/ </b></span>" 
