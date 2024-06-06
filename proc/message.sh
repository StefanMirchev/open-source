#!/bin/bash
 
  
  xy=$(xrandr |awk '$0 ~ "*" {print $1}')
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2) 
  KX_0=$(printf %.3f\\n $(echo "(($X0/37.5))" | bc -l )) 
  KY_0=$(printf %.3f\\n $(echo "(($Y0/30.5))" | bc -l ))
  X1=$(printf %.0f\\n $(echo "(($X0-(13.8 *$KX_0))*1.00)" | bc -l ))
  Y1=$(printf %.0f\\n $(echo "(($Y0-(2.5 *$KY_0))*0.00)" | bc -l ))
  X2=$(printf %.0f\\n $(echo "(($X0-(4.8*$KX_0))*0.001)" | bc -l ))
  Y2=$(printf %.0f\\n $(echo "(($Y0-(1.5*$KY_0))*0.001)" | bc -l ))
  X3=$(printf %.0f\\n $(echo "(($X0-(19.5*$KX_0))*0.5)" | bc -l ))
  Y3=$(printf %.0f\\n $(echo "(($Y0-(2.0*$KY_0))*0.001)" | bc -l ))
 


# play0='ffplay -i -autoexit -nodisp -volume 8'
play0='ffplay -i -autoexit -nodisp'
fold0=~/work/proc  
myvar1="$1" ; sleep 1 ; fold1=${myvar1%/*}   ; sleep 1 ; file1=${myvar1##*/} ; foldrem1=${fold1:10:30}
val0=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )))
val0=${val0:29:3} ;
brows0=/home/$USER/work/proc/browser.sh 

 !!! NO MORE 70% SOUND
 # vol0=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'


# yad --fixed  --title "ALIEXPRES"  --borders=0  --geometry=10x-10+700+10  \
# --window-icon=/home/$USER/work/library/image/icon/message.ico --visible=blink \
# --gtkrc=/home/$USER/work/library/themes/yellow.css  --editable  --no-buttons  --timeout=30 \
# --text="<span color='red'   font='15'><b>Estimated delivery date: May 21, 2023</b></span>" & 
#  fi

 ●  SOLLIEVO
#    if [ $(date +'%d') = 1 ] || [ $(date +'%d') = 7 ] || [ $(date +'%d') = 13 ] || \
#       [ $(date +'%d') = 19 ] || [ $(date +'%d') = 22 ] || [ $(date +'%d') = 30 ]  ; then
#         time0=$(date '+%H%M%S')  
#         time1=$(date '+090000') ; time2=$(date '+110000')
#         time3=$(date '+120000') ; time4=$(date '+123000') 
#         time5=$(date '+160000') ; time6=$(date '+163000') 
#         if expr "$time1" "<=" "$time0" &&  expr "$time0" "<=" "$time2" || \
#            expr "$time3" "<=" "$time0" &&  expr "$time0" "<=" "$time4" || \
#            expr "$time5" "<=" "$time0" &&  expr "$time0" "<=" "$time6"  ; then
#            pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/Chime.mp3 &
#            sleep 3 ; pactl set-sink-volume 0 $val0% &
#yad --fixed  --title "SOLLIEVO"  --borders=0  --geometry=200x10+20+20 \
#--window-icon=/home/$USER/work/library/image/icon/message.ico --visible=blink \
#--gtkrc=/home/$USER/work/library/themes/yellow.css  --editable  --no-buttons  --timeout=30 \
#--text="<span color='yellow' font='11'><b>. ...</b></span><span color='red' font='15'><b>SOLLIEVO</b></span>" &  
#        fi
#    fi

 ● CPU TEMPERATURE
   ~/work/proc/systemp.sh &


 ●  OBR 1
 # black1="font='serif 12' background='white' foreground='black'" ; wmctrl -c "OBR 1"
 # red1="font='serif 12' background='white' foreground='red'"  ; sp1=$(perl -E "say ' ' x 30") 
 #     yad --form --title "OBR 1" --window-icon=/home/$USER/work/library/image/icon/message.ico \
 #     --borders=0 --geometry=50x90+10+10 --mouse  --no-buttons --timeout=5 \
 #     --text "\
 # <span $black1><b>$sp1</b></span>
 # <span $red1><b>TAX  OBR 1 </b><span $black1><b> </b></span>
 # <span $black1><b>$sp1</b></span></span>"  &
 

● 01  CBS Reality
# time0=$(date '+%H%M%S')  
# time1=$(date '+100000') ; time2=$(date '+110000')
# time3=$(date '+180000') ; time4=$(date '+183000') 
# # if expr "$time1" "<=" "$time0" > /dev/null &&  expr "$time0" "<=" "$time2" > /dev/null ; then
#  if expr "$time1" "<=" "$time0" &&  expr "$time0" "<=" "$time2" || \
#     expr "$time3" "<=" "$time0" &&  expr "$time0" "<=" "$time4"  ; then
#          pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/zen.mp3 &
#          sleep 3 ; pactl set-sink-volume 0 $val0% &
#          wmctrl -c "CBS Reality"
#          green1="font='serif 14' background='white' foreground='#28CC6F'"  # font0="font='14'"
#          black1="font='serif 12' background='white' foreground='black'"
#          brown1="font='serif 12' background='white' foreground='#EC5229'"
#     # mono 14' 300 325 = 27 space   ; 385 = 32   395 = 33   410 = 34   12  123456789012345678901234567
#          sp1=$(perl -E "say ' ' x 51") 
#   # yad  --text-info --no-buttons --undecorated --borders=0   --mouse  --geometry=290x70+800+200 --text "$pd0"
#     yad --form --title "MESSAGE" --window-icon=/home/$USER/work/library/image/icon/message.ico \
#     --borders=0 --geometry=305x90+800+100 --mouse  --no-buttons --timeout=10 \
#     --text "\
# <span $green1><b>   <b> DECl. OBR 1  </b><span $black1><b> </b></span>
# <span $black1><b>$sp1</b></span>
# <span $black1><b>12:50 13:15</b></span><span $brown1></b></span>
# <span $black1><b>$sp1</b></span></span>"  &
#      fi

# libreoffice --writer ~/work/library/windows/DISK/davnost.docx  &  


 ● 03  PYMENT  
    if [ $(date +'%d') = 12 ] || [ $(date +'%d') = 13 ] || [ $(date +'%d') = 14 ] || \
       [ $(date +'%d') = 23 ] || [ $(date +'%d') = 24 ] || [ $(date +'%d') = 25 ]  ; then
         time0=$(date '+%H%M%S')  
         time1=$(date '+093000') ; time2=$(date '+100000')
         time3=$(date '+120000') ; time4=$(date '+123000') 
         time5=$(date '+160000') ; time6=$(date '+163000') 
         if expr "$time1" "<=" "$time0" &&  expr "$time0" "<=" "$time2" || \
            expr "$time3" "<=" "$time0" &&  expr "$time0" "<=" "$time4" || \
            expr "$time5" "<=" "$time0" &&  expr "$time0" "<=" "$time6"  ; then
            killall pqiv 
           pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/Chime.mp3 &
           sleep 3 ; pactl set-sink-volume 0 $val0% &
           pqiv -c -c -i  ~/work/library/image/hlp/Insurance_01.jpg &  
           sleep 1 ; wmctrl -r "pqiv: /home/$USER/work/library/image/hlp/Insurance_01.jpg" -e 1,500,100,250,250 &  
           pqiv -c -c -i ~/work/library/image/hlp/Payment_01.jpg  &
           sleep 1 ; wmctrl -r "pqiv: /home/$USER/work/library/image/hlp/Payment_01.jpg" -e 1,800,100,250,250 & 
           pqiv -c -c -i ~/work/library/image/hlp/Water.gif  &
           sleep 1 ; wmctrl -r "pqiv: /home/$USER/work/library/image/hlp/Water.gif" -e 1,1100,100,240,260 & 
        fi
    fi

    ● 04  EL_CHEF
         if [ $(date +'%d/%m') = 11/01 ] || [ $(date +'%d/%m') = 12/01 ] || [ $(date +'%d/%m') = 13/01 ] || \
        [ $(date +'%d/%m') = 14/01 ] || [ $(date +'%d/%m') = 15/01 ] ; then
         pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/zen.mp3 &
         sleep 3 ; pactl set-sink-volume 0 $val0% &
export web00=" https://store.borica.bg/bg/b-trust/certificates/renew" 
date0="15.01.‎2027" ; time0="2:00:00"

 zenity --info --no-wrap --ok-label="Goto link" --extra-button=Cancel --text="\
<span color='red'   font='20'><b>Certificat expired CHEF - $date0 г. $time0   </b> </span>
<span color='black' font='15'><b>1. Download BissSetup.exe  </b></span>
<span color='blue'  font='12'>       http://www.b-trust.bg/attachments/BtrustPrivateFile/22/docs/BissSetup.exe</span>
<span color='black' font='15'><b>2. Install and run BISS.exe </b></span>
<span color='black' font='15'><b>3. Request for renewal of qualified electronic signatur before  $dat0г. $time0 </b></span>
<span color='blue'  font='12'>       https://store.borica.bg/bg/b-trust/certificates/renew</span>
<span color='black' font='15'><b>4. There is a long wait after the payment is completed.</b></span>
<span color='black' font='15'><b>5. If you give any error during the payment, wait around 20-30 min and it comes.</b></span>
<span color='black' font='15'><b>6. You receive a message ＂We are notifying you of a successful paymentorder number OK-500011387＂</b></span>"
 if [ $?  -eq 0 ] ; then  $brows0 &  fi
     fi &
 
    ● 05 HAIL

     date0=$(date +%Y0609) ; date1=$(date -d "$date0 - 3 days" +%Y%m%d) 
     date2=$(date -d "$date0 + 3 days" +%Y%m%d) ; tdate=$(date +%Y%m%d)
if expr "$date1" "<=" "$tdate" > /dev/null &&  expr "$tdate" "<=" "$date2" > /dev/null ; then
      pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/linuxmint-logout.wav &
      sleep 3 ; pactl set-sink-volume 0 $val0%  &      
                  pqiv -c -c -i ~/work/library/image/hlp/Protect-Your-Car.png &
      #   sleep 1 ; xdotool getactivewindow windowmove 100 800 windowsize 400 400 & 
     sleep 1 ; zenity --info --width=100 --height=100 --button="❌" --no-wrap --text \
'<span color='red' font="20"><b>10 and 11 JUNE DANGER HAIL </b> </span>\n \' &
      fi

     ● 06 EL_MITAK
     if [ $(date +'%d/%m') = 23/08 ] || [ $(date +'%d/%m') = 19/08 ] || [ $(date +'%d/%m') = 20/08 ] || \
        [ $(date +'%d/%m') = 21/08 ] || [ $(date +'%d/%m') = 22/08 ] ; then
         time0=$(date '+%H%M%S')  
         time1=$(date '+090000') ; time2=$(date '+100000')
         time3=$(date '+120000') ; time4=$(date '+130000') 
         time5=$(date '+160000') ; time6=$(date '+170000') 
         if expr "$time1" "<=" "$time0" &&  expr "$time0" "<=" "$time2" || \
            expr "$time3" "<=" "$time0" &&  expr "$time0" "<=" "$time4" || \
            expr "$time5" "<=" "$time0" &&  expr "$time0" "<=" "$time6"  ; then
            killall pqiv 
  yad --fixed --info  --ok-label="Goto link" --extra-button=Cancel \
  --geometry=10x-10+$X1+$Y1 --button "Ok":1  --text="\
 <span color='red'   font='20'><b>Certificat expired MITAK - $date0 г. $time0   </b> </span>
 <span color='blue'  font='15'><b>1.Request for renewal of qualified electronic signatur before  $dat0г. $time0 </b></span>
 <span color='black' font='12'>https://store.borica.bg/bg/b-trust/certificates/default/renew</span>
 <span color='green' font='15'><b>2.After payment download and write on sim card after $date0 г. $time0- the same link-> </b></span>
 <span color='black' font='12'>https://store.borica.bg/bg/b-trust/certificates/default/renew</span>"
        fi
    fi



      ● 07 PASSPORT
      if [ $(date +'%d/%m') = 07/06 ] || [ $(date +'%d/%m') = 08/06 ] || [ $(date +'%d/%m') = 09/06 ]  ; then
       pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/Samsung_Galaxy_S4-SMS.mp3 &
       sleep 3 ; pactl set-sink-volume 0 $val0% &
       pqiv -c -c -i  ~/work/library/image/hlp/PASSPORT.jpg &
      fi

    ● 08 SH-KNIGKA

        date0=$(date +%Y0713)
         date1=$(date -d "$date0 - 4 days" +%Y%m%d)
         date2=$(date -d "$date0 + 1 days" +%Y%m%d)
         tdate=$(date +%Y%m%d)
    if expr "$date1" "<=" "$tdate" > /dev/null &&  expr "$tdate" "<=" "$date2" > /dev/null ; then
         time0=$(date '+%H%M%S')  
         time1=$(date '+093000') ; time2=$(date '+100000')
         time3=$(date '+120000') ; time4=$(date '+123000') 
         time5=$(date '+160000') ; time6=$(date '+163000') 
         if expr "$time1" "<=" "$time0" &&  expr "$time0" "<=" "$time2" || \
            expr "$time3" "<=" "$time0" &&  expr "$time0" "<=" "$time4" || \
            expr "$time5" "<=" "$time0" &&  expr "$time0" "<=" "$time6"  ; then
            killall pqiv 
         pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/Samsung_Galaxy_S4-SMS.mp3 &
         sleep 3 ; pactl set-sink-volume 0 $val0% &
         yad --picture --title "A1" --filename ~/work/library/image/hlp/SH-KNIGKA.jpg --timeout=10 \
 --geometry=300x300+750+50 --center  --text="<b>Working...</b>" --undecorated  --button="❌":1 \
 --size=orig --text "\
<span font='mono 16' background='white' foreground='black'><b>Expiried 13.07.2031г. </b></span>"  &
        fi
    fi

      ● 09 A1



         date0=$(date +%Y0601)
         date1=$(date -d "$date0 - 4 days" +%Y%m%d)
         date2=$(date -d "$date0 + 1 days" +%Y%m%d)
         tdate=$(date +%Y%m%d)
         if expr "$date1" "<=" "$tdate" > /dev/null &&  expr "$tdate" "<=" "$date2" > /dev/null ; then
     # if [ $(date +'%d/%m') = 12/07 ] || [ $(date +'%d/%m') = 13/07 ] || [ $(date +'%d/%m') = 14/07 ]  ; then
       

time0=$(date '+%H%M%S')  
time01=$(date '+090000') ; time02=$(date '+090500')
time03=$(date '+110000') ; time04=$(date '+120000') 
time05=$(date '+130000') ; time06=$(date '+130500') 
time07=$(date '+150000') ; time08=$(date '+150500') 
time09=$(date '+170000') ; time10=$(date '+170500') 
time11=$(date '+190000') ; time12=$(date '+190500') 
time13=$(date '+200000') ; time14=$(date '+200500') 
time15=$(date '+210000') ; time16=$(date '+210500') 
time17=$(date '+220000') ; time18=$(date '+220500') 
  if expr "$time01" "<=" "$time0" &&  expr "$time0" "<=" "$time02" || \
     expr "$time03" "<=" "$time0" &&  expr "$time0" "<=" "$time04" || \
     expr "$time05" "<=" "$time0" &&  expr "$time0" "<=" "$time06" || \
     expr "$time07" "<=" "$time0" &&  expr "$time0" "<=" "$time08" || \
     expr "$time09" "<=" "$time0" &&  expr "$time0" "<=" "$time10" || \
     expr "$time11" "<=" "$time0" &&  expr "$time0" "<=" "$time12" || \
     expr "$time13" "<=" "$time0" &&  expr "$time0" "<=" "$time14" || \
     expr "$time15" "<=" "$time0" &&  expr "$time0" "<=" "$time16" || \
     expr "$time17" "<=" "$time0" &&  expr "$time0" "<=" "$time18" ; then

        pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/Samsung_Galaxy_S4-SMS.mp3 &
        sleep 3 ; pactl set-sink-volume 0 $val0% &
        pqiv -c -c -i  ~/work/library/image/hlp/A1.jpg &
   fi

      fi

         date0=$(date +%Y0714)
         date1=$(date -d "$date0 - 4 days" +%Y%m%d)
         date2=$(date -d "$date0 + 1 days" +%Y%m%d)
         tdate=$(date +%Y%m%d)
    if expr "$date1" "<=" "$tdate" > /dev/null &&  expr "$tdate" "<=" "$date2" > /dev/null ; then
         time0=$(date '+%H%M%S')  
         time1=$(date '+093000') ; time2=$(date '+100000')
         time3=$(date '+120000') ; time4=$(date '+123000') 
         time5=$(date '+160000') ; time6=$(date '+163000') 
         if expr "$time1" "<=" "$time0" &&  expr "$time0" "<=" "$time2" || \
            expr "$time3" "<=" "$time0" &&  expr "$time0" "<=" "$time4" || \
            expr "$time5" "<=" "$time0" &&  expr "$time0" "<=" "$time6"  ; then
            killall pqiv 
         pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/Samsung_Galaxy_S4-SMS.mp3 &
         sleep 3 ; pactl set-sink-volume 0 $val0% &
         yad --picture --title "A1" --filename ~/work/library/image/hlp/A1.jpg --timeout=10 \
 --geometry=300x300+750+50 --center  --text="<b>Working...</b>" --undecorated  --button="❌":1 \
 --size=orig --text "\
<span font='mono 16' background='white' foreground='black'><b>Expiried 14.07.2024г. </b></span>"  &
        fi
    fi

      ● 10  Recepty
         time0=$(date '+%H%M%S')  
         time1=$(date '+090000') ; time2=$(date '+110000')
         time3=$(date '+120000') ; time4=$(date '+123000') 
         time5=$(date '+160000') ; time6=$(date '+163000') 
         if expr "$time1" "<=" "$time0" &&  expr "$time0" "<=" "$time2" || \
            expr "$time3" "<=" "$time0" &&  expr "$time0" "<=" "$time4" || \
            expr "$time5" "<=" "$time0" &&  expr "$time0" "<=" "$time6"  ; then
            pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/Chime.mp3 &
            sleep 3 ; pactl set-sink-volume 0 $val0% &
           ~/work/proc/recepty.sh &
        fi


   ● 11 EYE
time0=$(date '+%H%M%S')  
time01=$(date '+090000') ; time02=$(date '+090500')
time03=$(date '+110000') ; time04=$(date '+120000') 
time05=$(date '+130000') ; time06=$(date '+130500') 
time07=$(date '+150000') ; time08=$(date '+150500') 
time09=$(date '+170000') ; time10=$(date '+170500') 
time11=$(date '+190000') ; time12=$(date '+190500') 
time13=$(date '+200000') ; time14=$(date '+200500') 
time15=$(date '+210000') ; time16=$(date '+210500') 
time17=$(date '+220000') ; time18=$(date '+220500') 
  if expr "$time01" "<=" "$time0" &&  expr "$time0" "<=" "$time02" || \
     expr "$time03" "<=" "$time0" &&  expr "$time0" "<=" "$time04" || \
     expr "$time05" "<=" "$time0" &&  expr "$time0" "<=" "$time06" || \
     expr "$time07" "<=" "$time0" &&  expr "$time0" "<=" "$time08" || \
     expr "$time09" "<=" "$time0" &&  expr "$time0" "<=" "$time10" || \
     expr "$time11" "<=" "$time0" &&  expr "$time0" "<=" "$time12" || \
     expr "$time13" "<=" "$time0" &&  expr "$time0" "<=" "$time14" || \
     expr "$time15" "<=" "$time0" &&  expr "$time0" "<=" "$time16" || \
     expr "$time17" "<=" "$time0" &&  expr "$time0" "<=" "$time18" ; then

          pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/zen.mp3 &
          sleep 3 ; pactl set-sink-volume 0 $val0% &
          wmctrl -c "CBS Reality"
          green1="font='serif 14' background='white' foreground='#28CC6F'"  # font0="font='14'"
          black1="font='serif 12' background='white' foreground='black'"
          brown1="font='serif 12' background='white' foreground='#EC5229'"
     # mono 14' 300 325 = 27 space   ; 385 = 32   395 = 33   410 = 34   12  123456789012345678901234567
          sp1=$(perl -E "say ' ' x 51") 
   # yad  --text-info --no-buttons --undecorated --borders=0   --mouse  --geometry=290x70+800+200 --text "$pd0"
  yad --picture --size=orig --filename=/home/$USER/work/library/image/hlp/eye.gif \
  --window-icon=/home/$USER/work/library/image/icon/eye.ico \
  --size=fit --geometry=84x84+1680+40 \
  --no-buttons --undecorated --timeout=30 & 
#  yad --fixed  --title "ALIEXPRES"  --borders=0  --geometry=10x-10+700+10  \
#--window-icon=/home/$USER/work/library/image/icon/message.ico --visible=blink \
#--gtkrc=/home/$USER/work/library/themes/yellow.css  --editable  --no-buttons  --timeout=30 \
#--text="<span color='red'   font='15'><b>Estimated delivery date: May 21, 2023</b></span>" & 
      fi

      ● 13  BLUE ZONE  

         date0=$(date +%Y0410)
         date1=$(date -d "$date0 - 3 days" +%Y%m%d)
         date2=$(date -d "$date0 + 3 days" +%Y%m%d)
         tdate=$(date +%Y%m%d)
      if expr "$date1" "<=" "$tdate" > /dev/null &&  expr "$tdate" "<=" "$date2" > /dev/null ; then
         time0=$(date '+%H%M%S')  
         time1=$(date '+093000') ; time2=$(date '+1100000')
         time3=$(date '+120000') ; time4=$(date '+1300000') 
         time5=$(date '+160000') ; time6=$(date '+1630000') 
         if expr "$time1" "<=" "$time0" &&  expr "$time0" "<=" "$time2" || \
            expr "$time3" "<=" "$time0" &&  expr "$time0" "<=" "$time4" || \
            expr "$time5" "<=" "$time0" &&  expr "$time0" "<=" "$time6"  ; then
        pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/WindowsBackground.wav  &
        sleep 3 ; pactl set-sink-volume 0 $val0%
 green1="font='mono 18' background='white' foreground='#28CC6F'"  # font0="font='14'"
 black1="font='mono 18' background='white' foreground='black'"
 brown1="font='mono 18' background='white' foreground='#EC5229'"
 sp1=$(perl -E "say ' ' x 63") 
 yad --picture --title "BLUEZONE" --filename ~/work/library/image/hlp/BLUESZONE.jpg \
 --geometry=1100x860+150+100  --center --inc=1 --text="<b>Working...</b>" --undecorated --button="❌"  \
 --size=orig  --text "\
<span $black1><b>                                    BLUE ZONE                  </b></span>
<span $brown1><b>                                   10.04.2025г.                </b></span>
<span $brown1><b>                    Бланката е в папката на застраховката      </b></span>
<span $brown1><b>                                                               </b></span>
<span $black1><b>$sp1</b></span>"   &
sleep 0.5 ; echo A6957KC | xclip -sel clip &
export web00=" https://parking.transportburgas.bg/lookup" ; $brows0  &
sleep 3 ; xdotool key Tab ; sleep 2 ; xdotool key Shift+Ctrl+v 
sleep 2 ; xdotool key Tab ; sleep 3 ; xdotool key click 1  ; слееп 3
sleep 1 ; wmctrl -r "Проверка на абонамент" -e 1,400,20,450,550
         fi
      fi
      
       ● 14 VINETKA 
   #   if [ $(date +'%d/%m') = 22/07 ] || [ $(date +'%d/%m') = 23/07 ] || [ $(date +'%d/%m') = 24/07 ]  ; then
   #   pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/Samsung_Galaxy_S4-SMS.mp3  &
   #   sleep 3 ; pactl set-sink-volume 0 $val0% &
   #    pqiv -c -c -i ~/work/library/image/hlp/VINETKA.jpg &
   #   fi

      ● 15 AVTOCASKO
   #   if [ $(date +'%d/%m') = 10/05 ] || [ $(date +'%d/%m') = 11/05 ] || [ $(date +'%d/%m') = 12/05 ]  ; then
     
         date0=$(date +%Y0510)
         date1=$(date -d "$date0 - 3 days" +%Y%m%d)
         date2=$(date -d "$date0 + 3 days" +%Y%m%d)
         tdate=$(date +%Y%m%d)
      if expr "$date1" "<=" "$tdate" > /dev/null &&  expr "$tdate" "<=" "$date2" > /dev/null ; then
         time0=$(date '+%H%M%S')  
         time1=$(date '+093000') ; time2=$(date '+100000')
         time3=$(date '+120000') ; time4=$(date '+123000') 
         time5=$(date '+130000') ; time6=$(date '+163000') 
         if expr "$time1" "<=" "$time0" &&  expr "$time0" "<=" "$time2" || \
            expr "$time3" "<=" "$time0" &&  expr "$time0" "<=" "$time4" || \
            expr "$time5" "<=" "$time0" &&  expr "$time0" "<=" "$time6"  ; then
      pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/zen.mp3  &
      sleep 3 ; pactl set-sink-volume 0 $val0% &
        yad --fixed --info  --title "UPLOADGDRIVE" --no-buttons --geometry=10x-10-$X2-$Y2  --timeout=50 \
    --gtkrc=/home/$USER/work/library/themes/red.css --borders=2 --skip-taskbar --undecorated \
    --text="<span color='black' background='#EDE951' font='14'><b>AUTOCASCO  12.05.2024 </b></span>"        
         fi
      fi

      ● 16  INSPECTION CAR 
         date0=$(date +%Y0314)
         date1=$(date -d "$date0 - 3 days" +%Y%m%d)
         date2=$(date -d "$date0 + 3 days" +%Y%m%d)
         tdate=$(date +%Y%m%d)
      if expr "$date1" "<=" "$tdate" > /dev/null &&  expr "$tdate" "<=" "$date2" > /dev/null ; then
         time0=$(date '+%H%M%S')  
         time1=$(date '+083000') ; time2=$(date '+100000')
         time3=$(date '+120000') ; time4=$(date '+123000') 
         time5=$(date '+160000') ; time6=$(date '+163000') 
         if expr "$time1" "<=" "$time0" &&  expr "$time0" "<=" "$time2" || \
            expr "$time3" "<=" "$time0" &&  expr "$time0" "<=" "$time4" || \
            expr "$time5" "<=" "$time0" &&  expr "$time0" "<=" "$time6"  ; then
        pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/WindowsBackground.wav  &
        sleep 3 ; pactl set-sink-volume 0 $val0% &
         green1="font='mono 18' background='white' foreground='#28CC6F'"  # font0="font='14'"
         black1="font='mono 18' background='white' foreground='black'"
         brown1="font='mono 18' background='white' foreground='#EC5229'"
         sp1=$(perl -E "say ' ' x 63") 

  yad --picture --title "INSPECTION CAR" --filename ~/work/library/image/hlp/tehn.jpg \
 --geometry=1000x600+150+150  --center --inc=1 --text="<b>Working...</b>" --undecorated --button="❌"  \
 --size=orig  --text "\
<span $black1><b>                          INSPECTION CAR                       </b></span>
<span $brown1><b>                            13.03.2023г.                       </b></span>
<span $brown1><b>               Бланката е в папката на застраховката        </b></span>
<span $black1><b>$sp1</b></span>"   &
         fi
      fi

     ●  17 UBB card kcb
   #      date0=$(date +%Y0220)
   #      date1=$(date -d "$date0 - 3 days" +%Y%m%d)
   #      date2=$(date -d "$date0 + 3 days" +%Y%m%d)
   #      tdate=$(date +%Y%m%d)
   #   if expr "$date1" "<=" "$tdate" > /dev/null &&  expr "$tdate" "<=" "$date2" > /dev/null ; then
   #     pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/Samsung_Galaxy_S4-SMS.mp3  &
   #     sleep 3 ; pactl set-sink-volume 0 $val0% & 
   #     pqiv -c -c -i ~/work/library/image/hlp/Raiffeizen.jpg &

     ● 19 TAX
         date0=$(date +%Y0315)
         date1=$(date -d "$date0 - 3 days" +%Y%m%d)
         date2=$(date -d "$date0 + 3 days" +%Y%m%d)
         tdate=$(date +%Y%m%d)
      if expr "$date1" "<=" "$tdate" > /dev/null &&  expr "$tdate" "<=" "$date2" > /dev/null ; then
         time0=$(date '+%H%M%S')  
         time1=$(date '+093000') ; time2=$(date '+100000')
         time3=$(date '+120000') ; time4=$(date '+123000') 
         time5=$(date '+160000') ; time6=$(date '+163000') 
         if expr "$time1" "<=" "$time0" &&  expr "$time0" "<=" "$time2" || \
            expr "$time3" "<=" "$time0" &&  expr "$time0" "<=" "$time4" || \
            expr "$time5" "<=" "$time0" &&  expr "$time0" "<=" "$time6"  ; then
        pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/WindowsBackground.wav  &
        sleep 3 ; pactl set-sink-volume 0 $val0% & 
         green1="font='mono 16' background='white' foreground='#28CC6F'"  # font0="font='14'"
         black1="font='mono 14' background='white' foreground='black'"
         brown1="font='mono 14' background='white' foreground='#EC5229'"
        sp1=$(perl -E "say ' ' x 63") 

    while true
        do
 yad --picture  --title "TAX PYMENT" --filename ~/work/library/image/hlp/tax.jpg \
 --geometry=710x800+700+20  --center  --text="<b>Working...</b>" --undecorated --button="Check":2 \
 --button="EGN":3 --button="❌":1 \
 --size=orig --text "\
<span $black1><b>                          TAX PYMENT                           </b></span>
<span $black1><b>$sp1</b></span>
<span $brown1><b>                     Local Taxes- 01.02.‎2023г.                 </b></span>
<span $brown1><b> Буттон Check an Payment tax                                   </b></span>
<span $brown1><b> https://mdt.burgas.bg:81/OnlineReportWSClient/pages/login.jsf </b></span>
<span $black1><b>$sp1</b></span>"   
                 rc0=$?  
  case $rc0 in
    1) exit ;;
    2) echo 'https://mdt.burgas.bg:81/OnlineReportWSClient/pages/login.jsf' | xsel -ib ;;
    3) echo '6102260547' | xsel -ib ;; 
   esac
        done    &

         fi
      fi

● 20 CHANGE
      #   time0=$(date '+%H%M%S')  
      #   time1=$(date '+100000') ; time2=$(date '+120000')
      #   if expr "$time1" "<=" "$time0" &&  expr "$time0" "<=" "$time2" ; then
      #       export web00="/home/$USER/work/hand/HAND04/change/change.html" 
      #    sleep 1 ; $brows0 &
      #    sleep 3
      #    wmctrl  -c  "change.html - Brave"
      #    sleep 50
      #    wmctrl  -c  "Валутни курсове - tbi bank - Brave"
      #    wmctrl  -c  "Ziraat Bank - Brave"
      #    wmctrl  -c  "USD/BGN - Графика Щатски долар до Български лев цените - Brave"
      #    wmctrl  -c  "Фиксинг на БНБ по дати: GBP и USD валутни курсове по дата от Bglev.eu - Brave"
      #   fi




● 21 DOCTOR Monday Thuesday  Friday
#         date0=$(date +%Y0510)
#         date1=$(date -d "$date0 - 1 days" +%Y%m%d)
#         date2=$(date -d "$date0 + 1 days" +%Y%m%d)
#         tdate=$(date +%Y%m%d)
#      if expr "$date1" "<=" "$tdate" > /dev/null &&  expr "$tdate" "<=" "$date2" > /dev/null ; then
#         time0=$(date '+%H%M%S')  
#         time1=$(date '+08000') ; time2=$(date '+123000')
#         time3=$(date '+140000') ; time4=$(date '+143000') 
#         time5=$(date '+150000') ; time6=$(date '+180000') 
#         if expr "$time1" "<=" "$time0" &&  expr "$time0" "<=" "$time2" || \
#            expr "$time3" "<=" "$time0" &&  expr "$time0" "<=" "$time4" || \
#            expr "$time5" "<=" "$time0" &&  expr "$time0" "<=" "$time6"  ; then
#            pactl set-sink-volume 0 40% ; sleep 1 ; $play0 ~/work/library/sound/Chime.mp3  &
#            sleep 3 ; pactl set-sink-volume 0 $val0%
# yad --fixed --title="FAN" --picture --size=orig --geometry=300x380+500+300  --button="❌":1 \
#--filename  ~/work/library/image/hlp/doctor_00.jpg --center --inc=256 --timeout=1200 \
#--undecorated --text \
#"<span color='blue' font='16'><b>    Friday</b></span><span color='green' font='16'><b>  10:00</b></span>" &
#            fi
#     fi
● 22 
 yad --fixed --info  --title "LUKA" --no-buttons --geometry=10x-10+$X3+$Y3 --timeout=6 \
 --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --skip-taskbar --undecorated  \
 --text="<span color='black'  background='#58DCE7' font='14'><b>       Лука 17:3     Бъдете внимателни към себе си.        
 Ако прегреши брат ти, смъмри го и ако се покае, прости му.</b></span>" &


 yad --fixed --info  --title "FINIHS MESSAGE" --no-buttons --geometry=10x-10-$X2-$Y2 --timeout=6 \
 --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --skip-taskbar --undecorated  \
 --text="<span color='black'  background='#58DCE7' font='14'><b>FINISH MESSAGE</b></span>" 
rm -f aaa.txt rm -f bbb.txt &


