#!/bin/bash

   # battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
   # battery_level=$(acpi -b | grep -P -o '[0-9]+(?=%)')
#   ( for i in `seq 1 20`
#       do
   aaa=`acpi -b | grep -P -o '[0-9]+(?=%)'`
   bbb=${aaa:0:3}
 yad --fixed --title="BATTERY  LEVEL " --no-buttons --skip-taskbar \
--geometry=10x10+1200+10 --gtkrc=/home/$USER/work/library/themes/green01.css --timeout=35 \
--text="<span>Battery level is $bbb%</span>" 
#--text="<span font='italic' font-size='24px' font-weight='bold'>Battery level is $bbb%</span>" 
#--text="Battery level is $bbb%" 
