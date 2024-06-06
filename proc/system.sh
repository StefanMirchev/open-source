#!/bin/bash




 kill -1 PID_NUMBER  kill -9 PID_NUMBER
      uitkomst=$(watch "ps -eo cmd,%mem,%cpu --sort=-%cpu | head -n 130")
      toon_uitkomst "Proccesoren en cores :"
  watch "ps -eo cmd,%mem,%cpu,pid --sort=-%cpu | head -n 130"

# ps -eo cmd,%mem,%cpu,pid --sort=-%cpu | grep "viber"  
# watch "ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 10"
# ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem
# ps -eo pcpu,pid,user,args --no-headers| sort -t. -nk1,2 -k4,4 -r |head -n 5
# ps -Ao user,uid,comm,pid,pcpu,tty --sort=-pcpu | head -n 6   
# watch "ps aux | sort -nrk 3,3 | head -n 5"    
# ps aux k -gid,-%mem | head -11
# ps aux k-pcpu | head -6   
# top -b -n 1 | head -n 20  | tail -n 5
 
● NOT DELETE
 ● 1. acpitz          30.0°C 16 Motherboard around CPU  
 ● 2. pch_cannonlake  45.0°C 39 pch_cannonlake  
 ● 3. x86_pkg_temp    56.0°C 62 Processing CPU 
 ● See - /home/kosy/work/library/image/hlp/CPU.jpg

 ● https://www.what-song.com/Movies/Soundtrack/890/New-Years-Eve
 ● 1
 ( for i in `seq 1 30` ; do
   aaa=$(paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/')
   echo "# Motherboard - ${aaa:16:2} < 60"$'\xe2\x84\x83' ; sleep 0.5 
   done ) | yad --progress --title="Motherboard" --no-buttons  --timeout=35 --skip-taskbar \
 --geometry=330x60+130+10 --gtkrc=/home/$USER/work/library/themes/green01.css &
  ● 2
 ( for i in `seq 30` ; do
   aaa=$(paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/')
   echo "# PCH cannonlake - ${aaa:39:2} < 60"$'\xe2\x84\x83' ; sleep 0.5 
   done ) | yad --progress --title="PCH cannonlake" --no-buttons  --timeout=35 --skip-taskbar \
 --geometry=330x60+510+10 --gtkrc=/home/$USER/work/library/themes/green01.css &
  ● 3
 ( for i in `seq 1 30` ; do
   aaa=$(paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/')
   echo "# Processing CPU - ${aaa:62:2} < 60"$'\xe2\x84\x83' ; sleep 0.5 
   done ) | yad --progress --title="Processing CPU" --no-buttons  --timeout=35 --skip-taskbar \
 --geometry=330x60+890+10 --gtkrc=/home/$USER/work/library/themes/green01.css &

   ● 4
 ( for i in `seq 1 30` ; do
  aaa=$(echo $[100-$(vmstat 1 2 | tail -1 | awk '{print $15}')]"%")
  echo "# Reference 1-100%    ${aaa}" ; sleep 0.5 
  done ) | yad --progress --title="CPU   USED "  --no-buttons --timeout=35 --skip-taskbar \
 --geometry=330x60+130+120 --gtkrc=/home/$USER/work/library/themes/green01.css &
 
# ( for i in `seq 1 60` ; do
#  aaa=$(awk '{u=$2+$4; t=$2+$4+$5; if (NR==1){u1=u; t1=t;} else print ($2+$4-u1) * 100 / (t-t1) "%"; }' \
#  <(grep 'cpu ' /proc/stat) <(sleep 1;grep 'cpu ' /proc/stat))
#   echo "# Reference 1-100%    ${aaa}" ; sleep 0.5 
#   done ) | yad --progress --title="CPU   USED "  --no-buttons --timeout=35 --skip-taskbar \
#  --geometry=330x60+130+120 --gtkrc=/home/$USER/work/library/themes/green01.css &

   ● 5
  aaa=$(xrandr --listmonitors)
  yad --fixed --info --title="Monitors" --no-buttons --timeout=35 --skip-taskbar \
  --text="Resolution-${aaa:23:5}${aaa:32:4} ${aaa:18:4} \n " \
  --geometry=10x-10+510+120 --gtkrc=/home/$USER/work/library/themes/green04.css &
   ● 6
 ( for i in `seq 1 30` ; do
   aaa=`acpi -b | grep -P -o '[0-9]+(?=%)'` 
   echo "# Battery level - ${aaa:0:3}% " ; sleep 0.5 
   done ) | yad --progress --title="Battery level " --no-buttons  --timeout=35 --skip-taskbar \
 --geometry=330x60+890+120 --gtkrc=/home/$USER/work/library/themes/green01.css &
   ● 7
   yad --fixed --title="RUN PROGRAMS" --no-buttons --text="$(pgrep -fl 'bash')"  --skip-taskbar \
  --geometry=10x-10+250+255 --gtkrc=/home/$USER/work/library/themes/aqua.css --timeout=35 &
   ● 8
   sleep 1
  yad --fixed --title="RUN PROCESS" --no-buttons --text=" $(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 15) " \
  --geometry=10x-10+500+270 --gtkrc=/home/$USER/work/library/themes/aqua.css --skip-taskbar  --timeout=35 


  
 ● sensors | grep '^temp1:' | sed -e 's/.*: \+\([+-][0-9.]\+\)°C.*$/0\1/'
 ● sensors | awk '{if (match($0, "Core 0")){printf("%d",$3);} }'
 ● sensors | sed -rn 's/.*Core 0:\s+([^ ]+).*/\1/p'
 ● sensors | sed -rn 's/.*Core 0:\s+.([0-9.]+).*/\1/p'
 ● sensors | sed -rn 's/.*Core 0:\s+.([0-9]+).*/\1/p'