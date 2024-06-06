#!/usr/bin/bash
xdotool key Num_Lock
caps_lock_status=$(xset -q | sed -n 's/^.*Num Lock:\s*\(\S*\).*$/\1/p')
if [ $caps_lock_status == "on" ]; then
 # yad --title "numlockon" --text "Num lock on"   &
 # -geometry=10x10+1900+5
 # <span color='black'  background='#D6D6D6' font='10.5'><b>Num </b></span>
# <span color='black'  background='#D6D6D6' font='10'><b>Lock</b></span>"
yad --info  --title "numlockon" --no-buttons --geometry=0x0+1850+40  --undecorated \
--borders=0 --window-icon=/home/$USER/work/library/image/icon/numlock.ico  & 
 sleep 0.5
 xdotool click 1 
else
   wmctrl -c "numlockon"
fi 

# yad --info6666664444444