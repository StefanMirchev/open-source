#!/bin/bash


  xy=$(xrandr |awk '$0 ~ "*" {print $1}')
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2) 
  KX_0=$(printf %.3f\\n $(echo "(($X0/37.5))" | bc -l )) 
  KY_0=$(printf %.3f\\n $(echo "(($Y0/30.5))" | bc -l ))
  X1=$(printf %.0f\\n $(echo "(($X0-( 8.00 *$KX_0))*0.001)" | bc -l ))
  Y1=$(printf %.0f\\n $(echo "(($Y0-( 3.00 *$KY_0))*0.001)" | bc -l ))
  X2=$(printf %.0f\\n $(echo "(($X0-( 3.0  *$KX_0))*0.001)" | bc -l ))
  Y2=$(printf %.0f\\n $(echo "(($Y0-( 1.00 *$KY_0))*0.001)" | bc -l ))
  X3=$(printf %.0f\\n $(echo "(($X0-(14.00 *$KX_0))*0.58)"  | bc -l ))
  Y3=$(printf %.0f\\n $(echo "(($Y0-( 3.00 *$KY_0))*0.001)" | bc -l ))
  X4=$(printf %.0f\\n $(echo "(($X0-( 3.00 *$KX_0))*0.001)"  | bc -l ))
  Y4=$(printf %.0f\\n $(echo "(($Y0-( 3.00 *$KY_0))*0.001)" | bc -l ))
   export GTK_THEME="dictionary"  


fold0=~/work/proc

func01() { sleep 0.5 ; xdotool key Tab & } ; export -f func01 ; func01 &

 str2=$(yad --question  --title="DICTIONARY" --geometry=10x-10-$X1-$Y1     \
--gtkrc=/home/$USER/work/library/themes/brown01.css \
 --text="<span font='14' foreground='green'><b>Choice OCR or Translator</b></span>" \
 --window-icon=/home/$USER/work/library/image/icon/dict.ico \
 --button "OCR":1 --button  "Trans":2 --button "Cancel":3 
             ) 

 rc0=$? 

#   yad --info --text "$rc0     "

  case $rc0 in  1) 
    sleep 0.5 ; xdotool key Shift+Ctrl+Print 
 yad --fixed --info  --title "Mark an area" --geometry=10x-10-$X4-$Y4 \
 --gtkrc=/home/$USER/work/library/themes/brown01.css --undecorated \
 --text="<span color='black' font='13'><b> Mark text then,
 click OK Create
 image file</b></span>" 
 
 rc1=$? 
  if [ $rc0 = 252 ]; then  sleep 1.0 ; wmctrl -c DICTIONARY ; clear ; exit ; sleep 0.5 ; fi
   if [ $rc1 = 1 ] ; then  wmctrl -c DICTIONARY ; clear ; exit ; fi
                 xclip -selection clipboard -t image/png -o > ~/work/linux/trans.png ; sleep 0.5
                 sleep 0.3 ; xdotool key Shift+Ctrl+M ; sleep 0.3
                 tesseract ~/work/linux/trans.png ~/work/linux/trans2 -l eng --dpi 150 > /dev/null 2>&1 ; sleep 1
                 sed '$d' ~/work/linux/trans2.txt > ~/work/linux/trans1.txt ; sleep 0.5
                 var2=`cat ~/work/linux/trans1.txt` 
                 echo "$var2" | xclip -sel clip  ;; 
                2) var2=$(xclip -selection clipboard -o) ;;
                3) wmctrl -c DICTIONARY ; clear ; exit ;;
   esac
                   var0=$(echo $var2 | sed 's/&//g; s/<//g; s/>//g')
                   var0=$(echo $var0 | fold -s -w77)
                   var1=$(trans en:bg -b "$var0" ) ; sleep 0.1
                   var1=$(echo $var1 | fold -s -w135
       if test -f $fold0/aaa.txt ; then
             rm $fold0/aaa.txt
       fi
     echo $a | fold -s -w10
        )

     if [ -z "$var0" ] ; then
        yad  --fixed --title DICTIONARY --geometry=10x-10-$X2-$Y2 --no-buttons   \
        --gtkrc=/home/$USER/work/library/themes/brown01.css \
        --timeout=3 --undecorated --text "<span color='red'  font='14'><b> Text empty </b></span>" 
    else
 
 while true
        do
  click_lmouse() { xdotool mousemove $[X3+50] $[Y3+50]  ; sleep 1 ; xdotool click 1 ; }
  export -f click_lmouse ; click_lmouse &
yad --fixed --title="DICTIONARY" --selectable-labels  --geometry=10x-10+$X3+$Y3 \
--window-icon=/home/$USER/work/library/image/icon/enbg.ico --no-buttons  \
--gtkrc=/home/$USER/work/library/themes/yellow01.css --text=" \
<span color='black' font='13'>$var0</span>
<span color='red'  font='14'><b>$(perl -E 'say "⎼" x 72')</b></span>
<span color='black'   font='13'>$var1</span>"
                   rc0=$?
           #        yad --info  --text="   $rc0   "
   case $rc0 in
    252) sleep 0.5 ; wmctrl -c "DICTIONARY"  ;  wmctrl -c "Clone"  ; sleep 0.5  ; exit ; sleep 0.5 ;;
   esac
    done
  fi