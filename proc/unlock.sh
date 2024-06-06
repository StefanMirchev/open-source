#!/bin/sh

  xy=$(xrandr |awk '$0 ~ "*" {print $1}') ; 
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2)
  export X1=$(printf %.0f\\n $(echo "scale=4; (($X0-330)*0.500)" | bc -l ))
  export Y1=$(printf %.0f\\n $(echo "scale=4; (($Y0-5)*0.390)" | bc -l ))
  export X2=$(printf %.0f\\n $(echo "scale=4; ($X1*1.095)" | bc -l ))
  export Y2=$(printf %.0f\\n $(echo "scale=4; ($Y1*0.995)" | bc -l ))

   export GTK_THEME="unlock"  

  pass0=1
 
    case $USER in  kosy) pass0=1 ;; inter) pass0=3 ;; chef) pass0=2 ;; esac 

   subl0="/opt/sublime_text/sublime_text"

if [ -z "$varexp00" ]; then fold0="$1" ; else fold0=$varexp00 ; fi
  #   yad --text "unlock $fold0"

  proc01(){ sleep  0.5 ; xdotool type $fold0 ; }
   if test -f ~/work/proc/aaa.txt; then rm ~/work/proc/aaa.txt ; fi

  proc(){

yad --fixed --info --title "File Permissions"  --geometry=10x-10+$X1+$Y1 --no-buttons \
--gtkrc=/home/$USER/work/library/themes/white.css --text="\
<span color='black' font='12'><b> sudo chmod ugo+rwx          $fold0</b></span>
<span color='black' font='12'><b> sudo chmod +rwxrwxrwx       $fold0</b></span>
<span color='black' font='12'><b> sudo chmod -R 775           $fold0</b></span>
<span color='black' font='12'><b> sudo chmod -R 777           $fold0</b></span>
<span color='black' font='12'><b> sudo chown -R $USER:$USER   $fold0</b></span> 
<span color='red' font='14'><b> Program work please wait.....</b></span>" &


      sleep 0.5 ; sshpass -p $pass0 sudo chmod ugo+rwx $fold0 ; sleep 0.5 
      sleep 0.5 ; sshpass -p $pass0 sudo chmod +rwxrwxrwx $fold0 ; sleep 0.5 
      sleep 0.5 ; sshpass -p $pass0 sudo chmod  775  $fold0  ; sleep 0.5
      sleep 0.5 ; sshpass -p $pass0 sudo chmod  777  $fold0 ; sleep 0.5
      sleep 0.5 ; sshpass -p $pass0 sudo chown -R $USER:$USER $fold0 ; sleep 0.5 

     cd $fold0
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
       #  sleep 0.3   
        # yad --info --text "$f"
         sshpass -p $pass0  sudo chmod ugo+rwx "$f" 
      done 
      }

proc01 &

fold0=$(yad --form --title "UNLOCK FILE"  --geometry=500x100-$X1+$Y1 \
--field="<span color='black' font='14'><b> FILE </b></span>" \
--gtkrc=/home/$USER/work/library/themes/pink01.css --skip-taskbar \
--text "<span color='black' font='14'><b>               UNLOCK FILES</b></span>" )
               rc0=$? 
# templ                 $(echo $app0 | cut -d':' -f2)
fold0=$(echo $fold0 | cut -d'|' -f1)
if [ $rc0 = 252 ] || [ $rc0 = 1 ]; then  sleep 1.0 ; wmctrl -c "UNLOCK FILE" ; sleep 0.5 ; exit ; sleep 0.5 ; fi

if [ -z "$fold0" ]; then  yad --info --text="FILE NOT FIND" ; else proc ; fi

 sleep 0.5  ; wmctrl -c "File Permissions"  
 yad --fixed --info  --title "FINIHS UNLOCK" --no-buttons --geometry=10x-10+$X2+$Y2 --timeout=4 \
 --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --skip-taskbar --undecorated  \
 --text="<span color='black'  background='#58DCE7' font='14'><b>FINISH UNLOCK FILE</b></span>" 
 sleep 0.5 ; wmctrl -c "UNLOCK FILE" ; 
