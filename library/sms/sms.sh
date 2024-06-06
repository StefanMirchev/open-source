#!/bin/bash



 yad --picture --title "phone" --filename ~/work/library/sms/phone_on.jpg \
 --geometry=295x650+500+200 --center  --text="<b>Working...</b>" --undecorated  \
 --button="❌"  --size=orig --timeout=60 --text "\
<span font='mono 14' background='yellow' foreground='black'><b> Connect PHONE with PC  </b></span>
<span font='mono 14' background='yellow' foreground='black'><b>   Very important ❗    </b></span>
<span font='mono 14' background='yellow' foreground='black'><b> Must heard sound up❗  </b></span>
<span font='mono 14' background='yellow' foreground='black'><b> then push button ❌    </b></span>" 

#  --timeout=13

sp0=$(perl -E 'say " " x 13')   fo0="'$' '$'"
val0=$(adb connect 192.168.0.204:5555)
val1=$(adb devices) 

echo "             
                     CHECK CONNECTIOM WITH PHONE 

  1. if OK -> already connected to 192.168.0.204:5555 
       Now -> $val0  

  2. if OK ->  List of devices attached
              ▶ bce0d6c0  device ◀
               192.168.0.204:5555  device
Now
$val1 

                    Press button="❌" to continu " \
 |  yad --text-info --title="phone"  --button="❌" \
 --window-icon=/home/$USER/work/library/image/icon/sms.ico --timeout=60 \
 --back="#F6980C" --fontname='Monospace 12'  --geometry=750x400+300+400 



  if [  "${val1:25:8}" = "bce0d6c0" ]; then   
 yad --picture --title "phone" --filename ~/work/library/sms/phone_off.jpg \
 --geometry=295x650+500+200 --center  --text="<b>Working...</b>" --undecorated  \
 --button="❌"  --size=orig --timeout=10 --text "\
<span font='mono 14' background='yellow' foreground='black'><b>❗❗❗DISCONNECT❗❗❗ </b></span>
<span font='mono 14' background='yellow' foreground='black'><b>    PHONE FROM PC       </b></span>
<span font='mono 14' background='yellow' foreground='black'><b>  then push button ❌   </b></span>"

     echo "       
         NOW  COPY / PASTE 
   file  mmssms.db and contacts2.db 
   from Phone to  ~/work/library/sms
                                    
    Press wait .........           "  |  yad --text-info --title="phone"  \
  --no-buttons  --window-icon=/home/$USER/work/library/image/icon/sms.ico \
  --back="#F6980C" --fontname='Monospace 12'  --geometry=430x180+500+500 &
  else
     echo "       
        NOT CONNECTION PHONE - PC 
    PROCEDURE BREAK PLEASE TRY AGAIN "  |  yad --text-info --title="phone" --timeout=30 \
   --button="❌"  --window-icon=/home/$USER/work/library/image/icon/sms.ico \
  --back="#F6980C" --fontname='Monospace 12'  --geometry=430x150+500+500 
    exit
  fi 

 # echo "       A ${val1:25:8} A 

#   from Phone to  ~/work/library/sms
#   please wait 10 seconds          "  |  yad --text-info --title="phone" --timeout=120 \
#   --no-buttons  --window-icon=/home/$USER/work/library/image/icon/sms.ico \
#  --back="#F6980C" --fontname='Monospace 12'  --geometry=430x100+500+500 &


#   export timer0=10 ; sleep 0.3 ; ~/work/proc/timers.sh &


if ! [ -d "/home/$USER/work/library/sms" ]; then   
  #    mkdir ~/work/library/a_my ; mkdir ~/work/library/sms ;  else yad --info --text "YES"  ; fi 
   mkdir ~/work/library/sms ;  else echo ''  ; fi 

sleep 1

if [ -f "/home/$USER/work/library/sms/contacts2.db" ] ; then  
 rm ~/work/library/sms/contacts2.db ; rm ~/work/library/sms/mmssms.db
 sleep 2
else echo ''  ; fi 

# adb -s bce0d6c0 shell su -c cp -R /data/data/com.android.providers.telephony/databases/mmssms.db /sdcard/work/library/sms/mmssms.db  > ~/work/proc/aaa.txt  
  echo "Message after Process   " >~/work/proc/aaa.txt
  adb -s 192.168.0.204:5555 shell su -c cp -R /data/data/com.android.providers.telephony/databases/mmssms.db /sdcard/work/library/sms/mmssms.db  >> ~/work/proc/aaa.txt  
  adb -s 192.168.0.204:5555 shell su -c cp -R  /data/data/com.android.providers.contacts/databases/contacts2.db  /sdcard/work/library/sms/contacts2.db >> ~/work/proc/aaa.txt  
  sleep 2
  adb pull /sdcard/work/library/sms/mmssms.db  ~/work/library/sms/mmssms.db >> ~/work/proc/aaa.txt  
  adb pull /sdcard/work/library/sms/contacts2.db  ~/work/library/sms/contacts2.db >> ~/work/proc/aaa.txt  
  
  sleep 0.5; wmctrl -c "phone" ; sleep 1.0 ; sleep 1.0 ; killall main.sh ;  sleep 0.5 

#
#yad --picture --title "phone" --size=orig --filename /home/kosy/work/library/sms/mmssms.jpg \
# --geometry=600x600+1000+100 --center --inc=2 --text="<b>Working...</b>" \
# --no-buttons --text-align=center &

 ~/work/library/sms/DB_Browser_for_SQLite-v3.12.2-x86_64.AppImage ~/work/library/sms/mmssms.db 
# sleeep 3 ; wmctrl -r "DB Browser for SQLite" -e 1,50,50,600,400
#wmctrl -c "mmssms.db"
#yad --picture --title "phone" --size=orig --filename /home/kosy/work/library/sms/sms.jpg \
# --geometry=800x700+1000+100 --center --inc=2  --no-buttons &
#libreoffice --calc ~/work/library/sms/sms.csv &
# echo "Convert Date from 13 Digit -> F2/86400000+DATE(1970,1,1)" | yad --text-info --show-uri --geometry=600x100+100+100


