#!/bin/bash


  xy=$(xrandr |awk '$0 ~ "*" {print $1}') ; 
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2)
  export X1=$(printf %.0f\\n $(echo "scale=4; (($X0-330)*0.500)" | bc -l ))
  export Y1=$(printf %.0f\\n $(echo "scale=4; (($Y0-5)*0.390)" | bc -l ))
  export X2=$(printf %.0f\\n $(echo "scale=4; ($X1*1.095)" | bc -l ))
  export Y2=$(printf %.0f\\n $(echo "scale=4; ($Y1*0.995)" | bc -l ))


pause(){
  # read -n1 -p " Press [Enter] key to continue..." 
  # while read -rsn1 k 
  read   -p " Press [Enter] key to continue..." fackEnterKey
       }

 mkdir ~/garhiv/work  
 mkdir ~/garhiv/work/ebook
 mkdir ~/garhiv/work/hand
 mkdir ~/garhiv/work/hand/HAND02
 mkdir ~/garhiv/work/hand/HAND02/MEDICAL
 mkdir ~/garhiv/work/hand/HAND04
 mkdir ~/garhiv/work/hand/HAND04/change
 mkdir ~/garhiv/work/html 
 mkdir ~/garhiv/work/html/tv 
 mkdir ~/garhiv/work/job
 mkdir ~/garhiv/work/job/cv
 mkdir ~/garhiv/work/proc 
 mkdir ~/garhiv/work/library 
 mkdir ~/garhiv/work/library/bookmarks  
 mkdir ~/garhiv/work/library/bookmarks/browser 
 mkdir ~/garhiv/work/library/music
 mkdir ~/garhiv/work/library/QR

  rm -f aaa.txt > bbb.txt

  echo "          GDrive si.mirchev04@gmail.com/gdrive" > aaa.txt
  echo "" >> aaa.txt
  
  echo "Copy ~/work/html/tv/tv.html" >> aaa.txt
  cp ~/work/html/tv/* ~/garhiv/work/html/tv

  echo "~/work/hand/HAND02/MEDICAL" >> aaa.txt
  cp -R ~/work/hand/HAND02/MEDICAL/* ~/garhiv/work/hand/HAND02/MEDICAL

  echo "~/work/hand/HAND04/change/" >> aaa.txt
  cp ~/work/hand/HAND04/change/* ~/garhiv/work/hand/HAND04/change

  echo "Copy ~/work/library/bookmarks/browser/" >> aaa.txt
  cp ~/work/library/bookmarks/browser/* ~/garhiv/work/library/bookmarks/browser

  echo "Copy ~/work/proc/myweb.sh cloud.sh proc/phonebook.sh  " >> aaa.txt
  cp ~/work/proc/myweb.sh ~/work/proc/cloud.sh ~/work/proc/phonebook.sh \
    ~/garhiv/work/proc

  echo "Copy ~/work/ebook/RECEPTY.doc" >> aaa.txt
  cp ~/work/ebook/RECEPTY.doc ~/garhiv/work/ebook/RECEPTY.doc 

  echo "Copy ~/work/ebook/SIZE.txt" >> aaa.txt
  cp ~/work/ebook/SIZE.txt ~/garhiv/work/ebook/SIZE.txt 


  echo "Copy ~/work/ebook/DO-IT-YOURSELF.XLS" >> aaa.txt
  cp ~/work/ebook/do-it-yourself.xls ~/garhiv/work/ebook/do-it-yourself.xls

  echo "Copy ~/work/ebook/ROUTES.docx" >> aaa.txt
  cp ~/work/ebook/Routes.docx ~/garhiv/work/ebook/Routes.docx

  echoco "Copy ~/work/job/cv/cv.jpg" >> aaa.txt
  cp -R  ~/work/job/CV/cv.jpg ~/garhiv/work/job/CV

  echo "Copy ~/work/library/music/chef.m3u" >> aaa.txt
  cp ~/work/library/music/chef.m3u ~/garhiv/work/library/music/chef.m3u 

  echo "Copy ~/work/library/QR" >> aaa.txt
  cp ~/work/library/QR/*.png ~/garhiv/work/library/QR 
 
 yad --fixed --info  --title "UPLOADGDRIVE" --no-buttons --geometry=10x-10-$X1-$Y1  \
 --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --skip-taskbar --undecorated \
 --text="<span color='black' background='#FFFF00' font='14'><b>UPLOAD GDRIVE PLEASE WAIT...</b></span>"  & 
  
  bb=$(gdrive list --query "name contains 'garhiv'" --order "quotaBytesUsed desc" -m 3)
  sleep 3 ; cc=${bb:67:33}

gdrive delete --recursive $cc >> aaa.txt  
# yad --info --text '11111111111111111111111111111111111'
sleep 10 ; gdrive upload --recursive ~/garhiv >> aaa.txt 
# yad --info --text '22222222222222222222222222222222222'
sleep 10
wmctrl -c "UPLOADGDRIVE"  ; sleep 0.1 & 

 yad --fixed --info  --title "FINIHS GDRIVE" --no-buttons --geometry=10x-10-$X2-$Y2 --timeout=9 \
 --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --skip-taskbar --undecorated  \
 --text="<span color='black'  background='#58DCE7' font='14'><b>FINISH GDRIVE</b></span>" 
rm -f aaa.txt rm -f bbb.txt &
wmctrl -c "FINIHS GDRIVE"  ; sleep 0.1 ; wmctrl -c "UPLOADGDRIVE"  ; sleep 0.1 ; killall  garhiv.sh
# ----------------------------  EXAMPLES ----------------------------------------------


sleep 2