#!/bin/bash

#  export timer0=35 ; sleep 0.3 ; ~/work/proc/timers.sh &
clear ; sleep 2  ; rm aaa.txt
kill $(ps -A -ostat,ppid | awk '/[zZ]/ && !a[$2]++ {print $2}')

 befo0=$(ps -eo comm,%cpu,%mem --sort -%mem | head -40) ; sleep 1
 befo1=$(ps -eo s,comm,%cpu,%mem --sort -%mem | awk '{ if ($1 == "S") print $2; }')
 br0=$(echo "$(ps -eo s,comm,%cpu,%mem --sort -%mem | awk '{ if ($1 == "S") print $2; }')" |  wc -l)
 

#  yad --fixed  --title "Processes" --borders=0  --geometry=10x-10+500+900 \
# --window-icon=/home/$USER/work/library/image/icon/kill.ico --visible=blink --borders=3 --skip-taskbar --undecorated \
# --gtkrc=/home/$USER/work/library/themes/yellow.css  --editable  --no-buttons   \
# --text="<span color='red' font='15'><b> Kill Process please 30 seconds  </b></span>" &


 sleep 1  ; br1=0 ; br2=0
 for i in $befo1
 do
 if [ $i = COMMAND ]         || [ $i = cinnamon ] \
 || [ $i = cinnamon-sessio ] || [ $i = cinnamon-screen ] \
 || [ $i = nemo ]            || [ $i = sublime_text ] \
 || [ $i = nemo-desktop ]    || [ $i = gnome-software ] \
 || [ $i = gnome-software ]  || [ $i = NetworkManager ] \
 || [ $i = plugin_host-3.8 ] || [ $i = plugin_host-3.3 ] \
 || [ $i = kill.sh ]         || [ $i = systemd ] \
 || [ $i = systemd-udevd ]   || [ $i = gvfs-mtp-volume ] \
 || [ $i = gvfs-goa-volume ] || [ $i = jbd2/sda5-8 ] \
 || [ $i = agent ]           || [ $i = conf-service ] \
 || [ $i = xscreensaver ]    || [ $i = ssh-agent ] \
 || [ $i = acpid ]           || [ $i = switcheroo-cont ] \
 || [ $i = irq/18-vmwgfx ]   || [ $i = kerneloops ] \
 || [ $i = xclip ]           || [ $i = scsi_eh_0 ] \
 || [ $i = scsi_eh_1 ]       || [ $i = scsi_eh_2 ] \
 || [ $i = bluetoothd ]      || [ $i = gvfsd-fuse ] \
 || [ $i = gnome-system-mo ] || [ $i = dbus-daemon ] \
 || [ $i = Chromium        ] || [ $i = pulseaudio ] \
 || [ $i = Chrome          ] || [ $i = iprt-VBoxTscThr ] \
 || [ $i = agetty ]          || [ $i = scsi_eh_2 ] ; then 
    br1=$(($br1+1)) 
  else
    br1=$(($br1+1)) 
   # if (( br2 < 30 )) ; then 
      # yad --info --text "AAAAAA $br2 "
       killing0="$killing0\\n$(echo "$i")" ; ((br2++)) 
     # killing0="$killing0\\n$(echo "$i")" ;  br2=$(($br2+1) ;  sleep 0.3  
   # fi
          killall $i
   
     #   echo "$br0 = $br1  / $br2  / $i"  >> aaa.txt

 fi


# NOT DELETE
#     yad --fixed  --title "Processes"  --borders=0  --geometry=10x-10+800+20 --timeout=1 \
# --window-icon=/home/$USER/work/library/image/icon/kill.ico --visible=blink \
# --gtkrc=/home/$USER/work/library/themes/yellow.css  --editable  --no-buttons   \
# --text="<span color='red' font='15'><b> $br1 / $br0 Kill Process:  $i </b></span>" 
#      rc0=$?
#  if [ $rc0 = 252 ]; then  sleep 1.0 ; wmctrl -c "PROCESSES" ; clear ; break ; sleep 0.5 ; fi

 done
 #  yad --info --text "AAAAAA  $killing0  "

# after0=$(ps -eo comm,%cpu,%mem --sort -%mem | head -40) ; sleep 1
 br3=$(echo "$(ps -eo s,comm,%cpu,%mem --sort -%mem | awk '{ if ($1 == "S") print $2; }')" |  wc -l)

# yad --info --text " $br0 = $br1 / $br2  / $br3"
 cinnamon-settings online-accounts &
 sleep 2 ; wmctrl -c "Processes" ; wmctrl -c "Online Accounts"


#   yad --fixed --info --title="BEFORE" --button="❌":1 --geometry=10x-10+430+10 \
# --gtkrc=/home/$USER/work/library/themes/red01.css --timeout=0 \
# --text="\
# <span color='black' font='16'><b>  Processe before   </b></span> 
# <span color='black' font='12'><b>$befo0 </b></span>" & 
# 
#   yad --fixed --info --title="KILLING" --button="❌":1 --geometry=10x-10+730+10 \
# --gtkrc=/home/$USER/work/library/themes/yellow01.css --timeout=0 \
# --text="\
# <span color='black' font='16'><b>  Processe killing   </b></span> 
# <span color='black' font='12'><b>$killing0</b></span>" & 
# 
#   yad --fixed --info --title="AFTER" --button="❌":1 --geometry=10x-10+1050+10 \
# --gtkrc=/home/$USER/work/library/themes/green02.css --timeout=0 \
# --text="\
# <span color='black' font='16'><b>  Processe after   </b></span> 
# <span color='black' font='12'><b>$after0 </b></span>" & 

  yad --fixed  --title "Processes" --borders=0  --geometry=10x-10+450+900 --timeout=15 \
 --window-icon=/home/$USER/work/library/image/icon/kill.ico --visible=blink --borders=3 --skip-taskbar --undecorated \
 --gtkrc=/home/$USER/work/library/themes/yellow.css  --editable  --no-buttons   \
 --text="<span color='red' font='15'><b> Before - $br0  Killing - $br2  After - $br0 </b></span>" &




# --timeout=30 

echo "FINISHED"