#!/bin/bash

  battery_level=`acpi -b`
 if [ ${battery_level:11:11}='Discharging' ]; then 
  zenity --width=600 --height=10  --warning  --text='<span font="20" \
   foreground="red"> BATTERY CHARGING IS OFF </span>' --title="HDD Check"
  fi



# zenity --width=200 --height=10 --warning --text="${battery_level:11:11}"
# sleep 3