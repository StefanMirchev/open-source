#!/bin/bash
     

  xy=$(xrandr |awk '$0 ~ "*" {print $1}')
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2) 
  KX_0=$(printf %.3f\\n $(echo "(($X0/37.5))" | bc -l )) 
  KY_0=$(printf %.3f\\n $(echo "(($Y0/30.5))" | bc -l ))
  X1=$(printf %.0f\\n $(echo "(($X0-(13.0*$KX_0))*0.01)" | bc -l ))
  Y1=$(printf %.0f\\n $(echo "(($Y0-(1.00*$KY_0))*0.01)" | bc -l ))
  X2=$(printf %.0f\\n $(echo "(($X0-(8.5 *$KX_0))*0.01)" | bc -l ))
  Y2=$(printf %.0f\\n $(echo "(($Y0-(1.00*$KY_0))*0.01)" | bc -l ))
  X3=$(printf %.0f\\n $(echo "(($X0-(5   *$KX_0))*0.01)" | bc -l ))
  Y3=$(printf %.0f\\n $(echo "(($Y0-(1   *$KY_0))*0.01)" | bc -l )) 

  zip0=/media/kosy/e4580f79-cec6-42f7-9528-a9dd8ab7c004/Sync/work

if ! [ -d /media/kosy/e4580f79-cec6-42f7-9528-a9dd8ab7c004 ]; then  
         wmctrl -c Home ; wmctrl -c Home ; wmctrl -c Home 
          nemo &
          sleep 2 ; wmctrl -r "Home" -e 1,450,500,500,400 
          yad --fixed --info  --title "STARBACKUP" --no-buttons --geometry=10x-10-$X1-$Y1 --timeout=15  \
 --gtkrc=/home/$USER/work/library/themes/red.css --borders=2 --skip-taskbar --undecorated \
 --text="<span color='black' background='red' font='14'><b>Please click over Devices 358! </b></span>" 
  
         if ! [ -d /media/kosy/e4580f79-cec6-42f7-9528-a9dd8ab7c004 ]; then 
  yad --fixed --info  --title "STARBACKUP" --no-buttons --geometry=10x-10-$X1-$Y1 --timeout=5  \
 --gtkrc=/home/$USER/work/library/themes/red.css --borders=2 --skip-taskbar --undecorated \
 --text="<span color='black' background='red' font='14'><b>Not mount kosy-d. Pocedure stop!</b></span>" 
        exit 
        fi
 fi


 yad --fixed --info  --tittle "Arhiv"  --geometry=10x-10-$X2-$Y2  --timeout=7 \
 --gtkrc=/home/$USER/work/library/themes/brown01.css --skip-taskbar \
 --text="<span color='red'   font='12'><b>Please confir arhiv. </b> </span>"
 if [ $? -eq 1 ] ; then  exit ;   fi


 1️⃣  Date arhive.xls 
     # libreoffice --calc $HOME/work/proc/arhiv.xls &
     sleep 4 ; wmctrl -r "arhiv.xls" -e 1,150,150,890,550 
       yad --fixed --info  --title "UPLOADGDRIVE" --no-buttons --geometry=10x-10-$X1-$Y1  --timeout=50 \
    --gtkrc=/home/$USER/work/library/themes/red.css --borders=2 --skip-taskbar --undecorated \
    --text="<span color='black' background='#EDE951' font='14'><b>After 1 minute a full backup will start.</b></span>" 
 2️⃣  Gdrive
       ~/work/proc/garhiv.sh 
 3️⃣  Zip work folder
   yad --fixed --info  --title "STARBACKUP" --no-buttons --geometry=10x-10-$X2-$Y2 --timeout=50  \
 --gtkrc=/home/$USER/work/library/themes/red.css --borders=2 --skip-taskbar --undecorated \
 --text="<span color='black' background='pink' font='14'><b>Now full backup start. Pleasе wait 1-2 minutes.</b></span>" &
   # rm -f ~/.megasync/*  ;  sleep 5
    rm /media/kosy/e4580f79-cec6-42f7-9528-a9dd8ab7c004/Sync/work/*.zip
    cd /home/kosy/work   
 #   for i in */; do (cd "$i"; zip -P 485754433689E4A4  -r "$zip0/${i%/}.zip" .) ; done ; sleep 2
    for i in */; do (cd "$i"; zip -r "$zip0/${i%/}.zip" .) ; done ; sleep 2
    #   zip  -P 485754433689E4A4 -r $zip0/idisk.zip -r ~/IDISK/LINUX/32-64
     zip  -P 485754433689E4A4 -r $zip0/kort.zip -r ~/.kort        
    sleep 1.0 ; wmctrl -c "STARBACKUP" 
    yad --fixed --info  --title "FINISHBACKUP" --no-buttons --geometry=10x-10-$X3-$Y3  --timeout=5  \
  --gtkrc=/home/$USER/work/library/themes/red.css --borders=2 --skip-taskbar --undecorated \
  --text="<span color='black' background='#32FFF0' font='14'><b> Nice job!</b></span>" &
 4️⃣ Start Megasync 
     megasync &
     sleep 480
     killall megasync

