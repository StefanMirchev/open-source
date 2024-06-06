#!/bin/bash
 

# ❗❗❗ DELETE FILE  ❗❗❗
#  curl -X DELETE https://transfer.sh/xYRYjE/DECLAR.bmp


fold0=~/work/proc 
myvar1="$1" ; sleep 1 ; fold1=${myvar1%/*}   ; sleep 1 ; file1=${myvar1##*/} ; foldrem1=${fold1:10:30}


# !!!!!!!!!!!!!!!!!!!  NOT DELETE NOT DELETE NOT DELETE
# zenity --info --no-wrap --ok-label="Recepty" --extra-button=Cancel  --text="\
# <span color=\"\#00EE00\"   font=\"25\"><b>Variables </b></span>
# <span color=\"black\" font=\"15\"><b>myvar0 $myvar1</b></span>
# <span color=\"black\" font=\"15\"><b>fold0  $fold1</b></span>
# <span color=\"black\" font=\"15\"><b>file0  $file1</b></span>
# <span color=\"black\" font=\"15\"><b>(pwd) $(pwd)</b></span>
# <span color=\"black\" font=\"15\"><b>foldrem0 $foldrem1</b></span>"
# !!!!!!!!!!!!!!!!!!!  NOT DELETE NOT DELETE NOT DELETE

  
 x0=0 ; y0=0
  click_lmouse() { xdotool mousemove $(expr $x0 + 630) $(expr $y0 + 538) ; sleep 0.5 ; xdotool click 1 ; }
 # export -f click_lmouse


        # --undecorated --button="❌":1   --no-buttons  --back='#E5DB40' --fontname='serif 16
# if test -f $fold0/aaa.txt ; then  rm $fold0/aaa.txt ; fi
# sleep 0.1 ; echo 'Please wait 60 sec. upload-file:  ' $file1 | fold -s -w72 >> $fold0/aaa.txt ; sleep 0.1
# yad --fixed --title "MESSAGE" --window-icon=/home/$USER/work/library/image/icon/message.ico \
#     --borders=0 --skip-taskbar --geometry=1000x60+50+500  --timeout=60 --no-wrap --undecorated \
#     --filename=$fold0/aaa.txt --editable  --no-buttons --back='#E5DB40' --fontname='serif 14' 

 yad --fixed --title="UPLOAD FILE" --no-buttons --skip-taskbar --selectable-labels \
     --gtkrc=/home/$USER/work/library/themes/brown01.css \
     --geometry=150x20+20+20  --timeout=20 \
     --editable  --back="#E5DB40" --fontname='Monospace 12'   --text="\
 <span color='black' font='12'><b> See Myweb dot 120-125 </b></span>" &

 yad --fixed --title="UPLOAD FILE" --no-buttons --skip-taskbar --selectable-labels \
     --gtkrc=/home/$USER/work/library/themes/brown01.css \
     --geometry=950x20+200+500  --timeout=20 \
     --editable  --back="#E5DB40" --fontname='Monospace 12'   --text="\
 <span color='black' font='12'><b> $file1  ... Please wait 10 sec.</b></span>" &
 sleep 1
 click_lmouse


# ❗❗❗ UPLOAD FILE  ❗❗❗
   export timer0=10 ; sleep 0.3 ; ~/work/proc/timers.sh &
   cc0=$(curl --upload-file $myvar1 https://transfer.sh/$(basename $1)) ; sleep 10
   echo $cc0 | xclip -sel clip ; sleep 1 ; echo  $cc0 >>  ~/work/proc/aaa.txt

#   if test -f $fold0/aaa.txt ; then  rm $fold0/aaa.txt ; fi
#   sleep 0.1 ; echo 'Paste to browser: ' $cc0 | fold -s -w72 >> $fold0/aaa.txt ; sleep 0.1
#
#          sp1=$(perl -E "say ' ' x 120") 
#   yad ---fixed  --title "MESSAGE" --window-icon=/home/$USER/work/library/image/icon/message.ico \
#     --borders=0 --skip-taskbar --geometry=1000x60+50+500  --timeout=20 --no-wrap --undecorated \
#     --filename=$fold0/aaa.txt --editable  --no-buttons --back='#E5DB40' --fontname='serif 14' \
 

   yad --fixed --title="LINK UPLOAD FILE" --no-buttons --skip-taskbar --selectable-labels \
     --gtkrc=/home/$USER/work/library/themes/brown01.css \
     --geometry=950x20+200+600  --timeout=8 \
     --editable  --back="#E5DB40" --fontname='Monospace 12'   --text="\
<span color='black' font='12'><b> Paste to browser: </b></span>
<span color='black' font='12'><b> $cc0 </b></span>" &
 click_lmouse() { xdotool mousemove $(expr $x0 + 630) $(expr $y0 + 638) ; sleep 0.5 ; xdotool click 1 ; }
 click_lmouse




  # =============================================================================================



#
