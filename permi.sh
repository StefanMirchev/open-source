#!/bin/bash

  export xy=$(xrandr |awk '$0 ~ "*" {print $1}') ; K0=36.1421
  export X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2)
  export X1=$(printf %.0f\\n $(echo "scale=4; (($X0-(13.9*$K0))*0.5)" | bc -l ))
  export Y1=$(printf %.0f\\n $(echo "scale=4; (($Y0-(3.8*$K0))*0.99)" | bc -l ))  
  export X2=$(printf %.0f\\n $(echo "scale=4; (($X0-(15.5*$K0))*0.45)" | bc -l ))
  export Y2=$(printf %.0f\\n $(echo "scale=4; (($Y0-(1*$K0))*0.8)" | bc -l ))  
  export sl0="sleep 0.5"  clip0="xclip -sel clip"   scv0="xdotool key Shift+Ctrl+v"   
  export backs0="xdotool key BackSpace"  return0="xdotool key Return"  q0="xdotool key q" 
  export fold0=/home/$USER/work
  aa0=$(echo -e '\U1F604')        
  # yad --info --text "$aa0"

     case $USER in
           kosy) export pass0=1 ; $sl0 ;;
           acco) export pass0=2 ; $sl0 ;;
          inter) export pass0=3 ; $sl0 ;;
     esac

 unlock_folder() {
 sleep 0.5 ; xdotool key Ctrl+c ; sleep 0.5 ; fold0=$(echo "`xsel -ob`")
 # if ! [ ${fold0:0:11} = /home/$USER/ ]; then 
 #     yad --fixed --info  --title "FINIHS MESSAGE" --no-buttons --geometry=10x-10+$X2+$Y2  --timeout=6  \
 # --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --skip-taskbar --undecorated  \
 # --text="<span color='black'  background='red' font='14'><b>Verbotener folder - $fold0</b></span>" 
 #     exit ; fi

      # yad --text  "bbb  ${fold0:0:11}    /home/$USER/   "



 gnome-terminal --geometry=80x20+200+10 ; sleep 1
 echo 'ls -l ' $fold0  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; $sl0
  
 sleep 5 
    # I. Folder
 echo 'sshpass -p $pass0 sudo chown -R $USER:$USER' $fold0 | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 
 echo 'sshpass -p $pass0 sudo chown -R $USER:$USER /var/www' $fold0  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 
 # echo 'sudo chmod 0777 ' $fold0/'*'  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 
 #  echo 'sudo chmod -R 775  ' $fold0/  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 
 echo 'sshpass -p $pass0 sudo chmod -R 755  ' $fold0/  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 
 # echo 'sudo chmod -R 2775 ' $fold0/  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 
 # echo 'sudo chmod 0777    ' $fold0/  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 
 
    # II. Files
 echo 'sshpass -p $pass0 sudo chmod 777 ' $fold0' -R'  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; $sl0
 echo 'sshpass -p $pass0 sudo chmod 777 /var/www/html -R'  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; $sl0
 #ls -l  /
 # sudo chown -R $USER:$USER
 # 1
 # sudo chown -R $USER:$USER /var/www
 echo 'sshpass -p $pass0 sudo chmod ugo+rw    ' $fold0  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; $sl0


 #  echo 'sudo chmod +654      ' $fold0  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; $sl0
 #  echo 'sudo chmod +rwxrwxrwx' $fold0  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; $sl0
 #  echo 'sudo chmod +777      ' $fold0  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; $sl0
 sleep 3
 echo 'ls -l '                       $fold0/ | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; $sl0
 echo "echo ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀ FINISH ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀" \
 | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; $sl0 




 sleep 7 ;  wmctrl -c "Terminal" # ; sleep 2 ;  wmctrl -c "Terminal"
      }
  export -f unlock_folder


 while true
        do
fold0=$(yad --form --title="Permition" --geometry=500x50+$X1+$Y1 \
--text "<b>Unlock folder</b>" \
--gtkrc=/home/$USER/work/library/themes/blue01.css --borders=3 --no-buttons \
--field="<span font='15' foreground='yellow'>Folder</span>" $fold0 \
--field="<span font='Serif 13' foreground='red'>Start</span>:FBTN" 'bash -c unlock_folder' \
--window-icon=/home/$USER/work/library/image/icon/permi.ico 
         )
    rc0=$?
    if [ $rc0 = 252 ]; then  sleep 1.0 ; wmctrl -c "Permition" ; wmctrl -c " FINIHS MESSAGE" ;  sleep 0.5 
         wmctrl -c "permi.sh"  ; exit ; sleep 0.5 ; fi
       unlock_folder
        done
  yad --text  "ccc  $fold0"
 

 # I. Folder
     
  #   1. Permission allowed
  #      Parvo sas zvezda i posle bez zvezda
  #      i za ostanalite komandi 
  #-*      sudo chown -R $USER:$USER /var/www
  #-*      $gnom0 sudo chmod 0777 $fold0/*    
  #-*      $gnom0 sudo chmod 0777 $fold0  
  #-*      $gnom0 sudo chmod -R 2775 $fold0   
  #-*      $gnom0 sudo chmod -R 775 $fold0    

  #   2. Permission denied
  #      $gnom0 sudo chmod -R a=u,go-w $fold0   
  #    3. Neizwestno powedeni
  #       $gnom0 sudo chown -R $fold0/* 
  #      $gnom0 sudo chown -R ug+rw $fold0
  #       $gnom0 sudo chown +777 $fold0
  # sudo chgrp -R www-data /var/www/html
  # sudo gpasswd -a username www-data
  # sudo chmod -R 777 /var/www/html



  # II. Files
  #   1. Permission allowed 
  #-*   sudo chmod 777 /var/www/html -R
  #-*   $gnom0 sudo chmod ugo+rw $fold0/*.*
  #-    $gnom0 sudo chmod +654 $fold0/*.* 
  #-    $gnom0 sudo chmod +rwxrwxrwx $fold0/*.*
  #-    $gnom0 sudo chmod +777 $fold0/*.*
  #-    $gnom0 sudo ls -l $fold

  #   2. Permission denied    
  #      $gnom0 sudo chmod -777 $fold0/arhiv.sh
  #       $gnom0 sudo chmod +rw-rx-r-- $fold0/*.*  