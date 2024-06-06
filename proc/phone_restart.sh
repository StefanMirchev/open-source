#/bin/bash

### !!!!!    REBOOT PHONE !!!!!!!!!!!!!

yad --fixed  --title "ALIEXPRES"  --borders=0  --geometry=10x-10+700+10  \
--window-icon=/home/$USER/work/library/image/icon/message.ico --visible=blink \
--gtkrc=/home/$USER/work/library/themes/yellow.css  --editable  --no-buttons  --timeout=30 \
--text="<span color='red' font='15'><b>Check box on telephone Always allow from this computer when show.</b></span>" &
pause(){
  read   -p " Press [Enter] key to continue..." fackEnterKey
       }
  #   SDL_VIDEODRIVER=way // cyr keyboard
   #  sleep 0.5 ; adb disconnect
   #  sleep 0.5 ; adb kill-server
   #  sleep 0.5 ; adb tcpip 5555
   #  sleep 0.5 ; adb start-server
   #  sleep 0.5 ; adb connect 192.168.0.204:5555
   #  sleep 0.5 ; adb devices 
   #  sleep 0.5 ; scrcpy -s 192.168.0.204:5555 &
   #  sleep 1 ; scrcpy -s bce0d6c0
if [ $(iwgetid -r) = A1_F277 ] ; then  
     sleep 0.5 ; adb disconnect
     sleep 0.5 ; adb kill-server
     sleep 0.5 ; adb tcpip 5555
     sleep 0.5 ; adb start-server
     sleep 0.5 ; adb connect 192.168.0.204:5555
     sleep 0.5 ; adb devices 
     sleep 0.5 ; scrcpy -s 192.168.0.204:5555 &
     sleep 1 ; scrcpy -s bce0d6c0
else
# chefo   -> 192.168.1.104             
       sleep 0.5 ; adb disconnect
     sleep 0.5 ; adb kill-server
     sleep 0.5 ; adb tcpip 5555
     sleep 0.5 ; adb start-server
     sleep 0.5 ; adb connect 192.168.1.204:5555
     sleep 0.5 ; adb devices 
     sleep 0.5 ; scrcpy -s 192.168.1.204:5555 &
     sleep 1 ; scrcpy -s bce0d6c0
fi   
sleep 16

# IN phonebook.sh
#  yad --fixed  --title "REPAIR"  --borders=0  --geometry=10x-10+$X3+$Y3  \
# --window-icon=/home/$USER/work/library/image/icon/message.ico --visible=blink \
# --gtkrc=/home/$USER/work/library/themes/yellow.css  --editable  --no-buttons --timeout=10  \
# --text="<span color='red'   font='15'><b>Check box on telephone Always allow from this computer.</b></span>" & 
#                               rc0=0 ; str0='' ; adb shell input keyevent 26+
#                               sleep 0.5 ; adb disconnect > /dev/null 2>&1 &
#                               sleep 0.5 ; adb kill-server > /dev/null 2>&1 &
#                               sleep 0.5 ; adb tcpip 5555 > /dev/null 2>&1 &
#                               sleep 0.5 ; adb connect 192.168.0.204:5555 > /dev/null 2>&1 &
#                               sleep 0.5 ; adb devices  > /dev/null 2>&1  > /dev/null 2>&1 &
#                               sleep 0.5 ; scrcpy -s 192.168.0.204:5555  > /dev/null 2>&1 & 
#                               sleep 0.5 ; adb disconnect > /dev/null 2>&1 &
#                               sleep 0.5 ; adb kill-server > /dev/null 2>&1 &
#                               sleep 0.5 ; adb tcpip 5555 > /dev/null 2>&1 &
#                               sleep 0.5 ; adb connect 192.168.1.104:5555 > /dev/null 2>&1 &
#                               sleep 0.5 ; adb devices  > /dev/null 2>&1  > /dev/null 2>&1 &
#                               sleep 0.5 ; scrcpy -s 192.168.1.104:5555  > /dev/null 2>&1 & 
#                             for m in {1..6}; do
#                                 if test $(wmctrl -l | grep "Lenovo A6010" 2>&1 | wc -l) -eq 1 ; then
#                                  sleep 0.5 ;     wmctrl -r "Lenovo A6010"  -e 1,1580,400,340,600  ; sleep 0.5 ; break
#                                 fi 
#                                sleep 0.5 
#                              done   ;; 
