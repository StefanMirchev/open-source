#!/bin/bash

❗❗❗ NOT RUN ME301t AND DISK_60 ❗❗❗

  xy=$(xrandr |awk '$0 ~ "*" {print $1}') ; 
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2)
  export X1=$(printf %.0f\\n $(echo "scale=4; (($X0-(55*13))*0.500)" | bc -l ))
  export Y1=$(printf %.0f\\n $(echo "scale=4; (($Y0-(77.7*8))*0.400)" | bc -l ))
  export X2=$(printf %.0f\\n $(echo "scale=4; ($X1*0.985)" | bc -l ))
 
# yad --info --text " $X0  $X1  / $Y0   $Y1   "



  click_lmouse() { xdotool mousemove $(expr $X1 + 30) $(expr $Y1 + 30) ; sleep 1 ; xdotool click 1 ; }
  export -f click_lmouse ; click_lmouse &



  sshpass -p '1'  sudo ntfsfix /dev/sda1
  sshpass -p '1'  sudo ntfsfix /dev/sda2
  sshpass -p '1'  sudo ntfsfix /dev/sda5
  sshpass -p '1'  sudo ntfsfix /dev/sdb1
  sshpass -p '1'  sudo ntfsfix /dev/sdc1



yad --fixed  --title "Block Devices"  --borders=0  --geometry=10x-10+$X1+$Y1  \
--window-icon=/home/$USER/work/library/image/icon/message.ico --visible=blink \
--gtkrc=/home/$USER/work/library/themes/yellow01.css  --editable  --no-buttons   \
--selectable-labels  --text="\
  <span color='black' font='12'> $(lsblk) </span>
  <span color='black' font='12'></span>
  <span color='black' font='12'> $(sshpass -p '1' sudo lsblk -o NAME,SIZE,UUID) </span>
  <span color='black' font='12'></span>
  <span color='black' font='12'><b>                Mount / UNmont device       </b></span> 
  <span color='black' font='12'>sshpass -p '1' sudo  mount -U 46FE179E4CDC29F9 /mnt</span>
  <span color='black' font='12'>sshpass -p '1' sudo umount /dev/sda1</span>
  <span color='black' font='12'></span>
  <span color='black' font='12'><b>               Fix error mounting         </b></span>
  <span color='black' font='12'>        sshpass -p '1' sudo ntfsfix /dev/sda1</span>
  <span color='black' font='12'>        sshpass -p '1' sudo ntfsfix /dev/sdc1</span>" &


# sshpass -p '1'  sudo  mount -U 46FE179E4CDC29F9 /mnt
# sshpass -p '1'  sudo umount /dev/sda1


yad --fixed  --title "Block Devices"  --borders=0  --geometry=10x-10+$X1+$Y1  \
--window-icon=/home/$USER/work/library/image/icon/message.ico --visible=blink \
--gtkrc=/home/$USER/work/library/themes/yellow01.css  --editable  --no-buttons   \
--selectable-labels  --text="\
<span color='black' font='12'>                             T  E  M  P  L  A  T  E  </span>
<span color='black' font='12'>NAME        MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS</span>
<span color='black' font='12'>sda  DISC_60  8:0    0  55.9G  0 disk /media/kosy/6F16-4A83</span>
<span color='black' font='12'>sr0  DVD     11:0    1 575.6M  0 rom  /media/kosy/745-2042-0014</span>
<span color='black' font='12'>nvme0n1     259:0    0 476.9G  0 disk </span>
<span color='black' font='12'>├─nvme0n1p1 259:1    0   512M  0 DISC_512 part /boot/efi</span>
<span color='black' font='12'>├─nvme0n1p2 259:2    0   3.7G  0 part </span>
<span color='black' font='12'>├─nvme0n1p3 259:3    0 333.5G  0 part /media/kosy/e4580f79-cec6-42f7-9528-a9dd8ab7c004</span>
<span color='black' font='12'>└─nvme0n1p4 259:4    0 139.2G  0 part /</span>
<span color='black' font='12'>nvme1n1     259:5    0 238.5G  0 disk </span>
<span color='black' font='12'>├─nvme1n1p1 259:6    0   100M  0 DISC_256 part </span>
<span color='black' font='12'>├─nvme1n1p2 259:7    0    16M  0 part </span>
<span color='black' font='12'>├─nvme1n1p3 259:8    0 118.6G  0 part /media/kosy/F8FC58ADFC5867C0</span>
<span color='black' font='12'>├─nvme1n1p4 259:9    0   546M  0 part </span>
<span color='black' font='12'>└─nvme1n1p5 259:10   0 119.2G  0 part /media/kosy/46FC5ECFFC5EB93F </span>
<span color='black' font='12'>  </span>
<span color='black' font='12'>   NAME          SIZE UUID</span>
<span color='black' font='12'>sda DISC_50  55.9G 6F16-4A83</span>
<span color='black' font='12'>sr0   DVD   575.6M 2002-02-20-08-35-00-00</span>
<span color='black' font='12'>nvme0n1     476.9G </span>
<span color='black' font='12'>├─nvme0n1p1   512M 5AB3-CDCE  DISC_512 </span>
<span color='black' font='12'>├─nvme0n1p2   3.7G 0454997c-fa8d-4b02-bd18-f505c786ba58</span>
<span color='black' font='12'>├─nvme0n1p3 333.5G e4580f79-cec6-42f7-9528-a9dd8ab7c004</span>
<span color='black' font='12'>└─nvme0n1p4 139.2G e82abb7a-bcdc-43ae-a9c6-1155eacdf744</span>
<span color='black' font='12'>nvme1n1     238.5G </span>
<span color='black' font='12'>├─nvme1n1p1   100M E028-9C97  DISC_256   </span>
<span color='black' font='12'>├─nvme1n1p2    16M </span>
<span color='black' font='12'>├─nvme1n1p3 118.6G F8FC58ADFC5867C0</span>
<span color='black' font='12'>├─nvme1n1p4   546M 58502DF8502DDD8E</span>
<span color='black' font='12'>└─nvme1n1p5 119.2G 46FC5ECFFC5EB93F</span>"



sleep 30