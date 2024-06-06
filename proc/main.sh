#!/bin/bash


  xy=$(xrandr |awk '$0 ~ "*" {print $1}')
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2) 
  KX_0=$(printf %.3f\\n $(echo "(($X0/37.5))" | bc -l )) 
  KY_0=$(printf %.3f\\n $(echo "(($Y0/30.5))" | bc -l ))
  X1=$(printf %.0f\\n $(echo "(($X0-(8.5*$KX_0))*0.001)" | bc -l ))
  Y1=$(printf %.0f\\n $(echo "(($Y0-(12*$KY_0))*0.98)" | bc -l ))
  X2=$(printf %.0f\\n $(echo "(($X0-(15*$KX_0))*0.58)" | bc -l ))
  Y2=$(printf %.0f\\n $(echo "(($Y0-(25*$KY_0))*0.999)" | bc -l ))
  X9=$(printf %.0f\\n $(echo "(($X0-(4   *$KX_0))*0.001)" | bc -l ))
  Y9=$(printf %.0f\\n $(echo "(($Y0-(4   *$KY_0))*0.001)" | bc -l ))



 case $USER in  kosy) pass0=1 ;; inter) pass0=3 ;; chef) pass0=2 ;; esac 
 proc0='' ; shfile0='' ;  runterm0='' ; titl0='' ; geom0=''
 subl0=/home/$USER/work/library/sublime/sublime-text.sh
 brows0=/home/$USER/work/proc/browser.sh  ; export brs00=1
 sl0="sleep 1.0" ;   clip0="xclip -sel clip" ;   scv0="xdotool key Shift+Ctrl+v" 
 backs0="xdotool key BackSpace" ;  return0="xdotool key Return" ;   q0="xdotool key q" 
 vlc0=" /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/vlc --file-forwarding org.videolan.VLC --started-from-file @@u %U @"; echo '' ; sleep 0.1 ;
 

 cell0="celluloid %U " 
 if  [ -d "/home/$USER/.config/sublime-text/Local" ];  then rm -r /home/$USER/.config/sublime-text/Local ; else  echo '' ; fi 
 subl0="/opt/sublime_text/sublime_text -n "
 subl1="wmctrl -r "~/work/proc/aaa.txt" -e 12,400,150,1300,700"
 play0='ffplay -i -autoexit -nodisp'
 trem0="gnome-terminal --" 


sleep 0.5 # not delete next 4 rows
 if [ $(wmctrl -l | grep 'MainMenu' 2>&1 | wc -l) -ge 1 ] ; then exit  ; fi
 if [ `ps aux | grep -i "main.sh" | grep -v "grep" | wc -l` -ge 4 ] ; then exit ; fi


userpass() {
      coord_f
     sleep 0.5
   #  if ! [ $user0 = n ] ; then 
        sleep 0.5 ; echo $user0 | xclip -sel clip &
        yad --info --title="User" --undecorated --no-headers --separator="" \
        --geometry=10x-10-$X9-$Y9  --button="❌":1 --timeout=0 \
        --text="<span font='18' background='green' foreground='white'> USER </span>" \
        --window-icon=/home/$USER/work/library/image/icon/usepas.ico
        # sleep 3 ; xdotool key Ctrl+v ; sleep 1
    # fi

    # if ! [ $user0 = n ] ; then
        sleep 0.5 ; echo $pass0 | xclip -sel clip &
        yad --info --title="Pass" --undecorated --no-headers --separator="" \
        --geometry=10x-10-$X9-$Y9  --button="❌":1 --timeout=0 \
        --text="<span font='18' background='red' foreground='white'> PASS </span>" \
        --window-icon=/home/$USER/work/library/image/icon/usepas.ico  
        # sleep 3 ; xdotool key Ctrl+v ; sleep 1
    # fi
            }


tex0="<span font='15' background='#3465A4' foreground='white'>   M A I N - M E N U    </span>"
sp0=$(perl -E 'say " " x 4')   fo0="'$' '$'"
show_menus() {
app0=$(yad --list --title="MainMenu" --column="" --undecorated --no-headers \
--no-buttons  --separator="" --borders=4 --search-column=1 --geometry=307x410+$X1+$Y1 \
--text="<span font='14.5' background='blue' foreground='white'>⚓ M A I N - M E N U ⚓</span>"  \
--window-icon=/home/$USER/work/library/image/icon/menu.ico --select-action="bash -c on_click" \
--gtkrc=/home/$USER/work/library/themes/yellow.css \
--column=@fore@ --column=@back@ --column=@font@ \
'0. Exit                       ' $fo0 'sans 12' \
'1. B﹒Compare, Scanner        ' $fo0 'sans 12' \
'2. Install Check_sys Premition' $fo0 'sans 12' \
'3. Equalizer, Volume,TV, Radio' $fo0 'sans 12' \
'4. Cam, Reception, Adresi     ' $fo0 'sans 12' \
'5. Vbox, Thunderbird Mail-F8  ' $fo0 'sans 12' \
'6. Search, Arhiv, Translate   ' $fo0 'sans 12' \
'7. Phone, Viber, Contact      ' $fo0 'sans 12' \
'8. Weath, Calend, Webcam      ' $fo0 'sans 12' \
'9. MyWeb, Cloud, Timer        ' $fo0 'sans 12' \
'10. Clean, Kill, Killproc, Iso' $fo0 'sans 12' \
'11. GitHub, PHP, Ruby, Python ' $fo0 'sans 12' \
'12. MyIp VPN Network Tor      ' 'white' 'blue' 'sans 12'
    )
#        rc0=$?
         }

   read_options(){  
       case ${app0%.*} in 
         0) sleep 0.5; wmctrl -c "SubMenu" ; sleep 1.0 ; sleep 1.0 ; killall main.sh ;  sleep 0.5  ; exit ; sleep 0.5 ;;
         1) submenu & ;;
         2) submenu & ;;
         3) submenu & ;;
         4) submenu & ;;
         5) submenu & ;;
         6) submenu & ;;
         7) submenu & ;;
         8) submenu & ;;
         9) submenu & ;;
        10) submenu & ;;
        11) submenu & ;;
        12) submenu & ;;   
       esac
           }



   runshfile(){
         # yad --info --text="111" --no-wrap 
 aa0=$(ls -l $proc0 | cut -c1-10)
 export varexp00=$proc0
        #  yad --info --text=" a111" --no-wrap 
 if [ "$aa0" = "-rwxr--r--" ] ; then  ~/work/proc/unluck.sh  ; sleep 0.2 ;  export varexp00=''; fi

  if [ -z "$(pgrep $shfile0 2>&1)" ] ; then  echo ; else  killall $shfile0 ; fi
  if ! [ -z "$(1=1)" ] ; then  
 #     yad --info --text="333   $shfile0"
     killall $shfile0 
     fi
 
 # yad --info --text="c 1111" --no-wrap 
  if [ "$runterm0" = "t" ] ; then  $trem0 $proc0 
    # yad --info --text=" d1111" --no-wrap 
 else nohup $proc0  > /dev/null 2>&1  ; fi  # NOT RUN xdotool key Return 
   #  yad --info --text="e 1111" --no-wrap 
runterm0='' &
           }

  submenu(){
  echo ; tire0=$(perl -E 'say "_" x 36') ; sp0=$(perl -E 'say " " x 5')
    case ${app0%.*} in    # sibmenu begin
       1) sleep 0.3 ; choice1=$(yad --list --title="SubMenu" --column="" --undecorated --no-headers \
                 --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --timeout=7 \
                 --no-buttons  --separator="" --geometry=126x132+177+900 \
                 --window-icon=/home/$USER/work/library/image/icon/menu1.ico --search-column=1  \
                 --text="<span font='11' background='#FFDB00' foreground='black'>  Sub Menu  </span>"\
                 --column=@fore@ --column=@back@ --column=@font@ \
                    '0. Exit      ' $fo0 'sans 11' \
                    '1. B﹒Compare' $fo0 'sans 11' \
                    '2. Scanner   ' $fo0 'sans 11' \
                    '             ' 'black' '#FFDB00' 'sans 11' 
                        )
                   case ${choice1%.*} in
                        0) wmctrl -c  SubMenu ;;
                        1) proc0=~/work/proc/beyo.sh   ; shfile0='beyo.sh'   ; runterm0='' ; sleep 0.2 ; runshfile & ;; 
                        2) nohup ~/work/proc/scanner.sh > /dev/null 2>&1 &  ;;
                   esac  ;; 
       2) sleep 0.3 ; choice1=$(yad --list --title="SubMenu" --column="" --undecorated --no-headers \
                 --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --timeout=7 \
                 --no-buttons  --separator="" --geometry=126x132+177+900 \
                 --window-icon=/home/$USER/work/library/image/icon/menu1.ico --search-column=1  \
                 --text="<span font='11' background='#FFDB00' foreground='black'>  Sub Menu  </span>"\
                 --column=@fore@ --column=@back@ --column=@font@ \
                    '0. Exit        ' $fo0 'sans 11' \
                    '1. Inastall_Lin' $fo0 'sans 11' \
                    '2. Check sys   ' $fo0 'sans 11' \
                    '3. Premition   ' 'black' '#FFDB00' 'sans 11' 
                        )
                   case ${choice1%.*} in

                        0) wmctrl -c  SubMenu ;;
                        1) proc0=~/work/proc/linux_inst.sh ; shfile0='linux_inst.sh' ; runterm0="" ; sleep 0.2 ; runshfile  & ;; 
                        2) nohup ~/work/proc/system.sh > /dev/null 2>&1 &  ;;
                        3) proc0=~/work/permi.sh           ; shfile0='permi.sh' ; runterm0='' ; sleep 0.2 ; runshfile  & ;;
                   esac  ;; 
                #  4-no-buttons  --separator=""  --geometry=124x155+178+884 \
       3) sleep 0.3 ; choice1=$(yad --list --title="SubMenu" --column="" --undecorated --no-headers \
           --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --timeout=7 \
           --no-buttons  --separator=""  --geometry=126x157+176+873 \
          --window-icon=/home/$USER/work/library/image/icon/menu1.ico --search-column=1  \
          --text="<span font='11' background='#FFDB00' foreground='black'>  Sub Menu  </span>"\
           --column=@fore@ --column=@back@ --column=@font@ \
             '0. Exit     ' $fo0 'sans 11' \
             '1. Equalizer' $fo0 'sans 11' \
             '2. Volume   ' $fo0 'sans 11' \
             '3. TV       ' $fo0 'sans 11' \
             '4. Radio    ' 'black' '#FFDB00' 'sans 11'
                 )
            case ${choice1%.*} in
              0) wmctrl -c  SubMenu ;;
              1) qpaeq > /dev/null 2>&1  & ;;  
              2) nohup ~/work/proc/volume.sh > /dev/null 2>&1 &  ;;
              3) export web00=" ~/work/library/bookmarks/browser/browser.html" ; $brows0  
                 sleep 2 ; wmctrl -r "browser" -e 1,$X2,$Y2,155,310    & ;; 
              4) pactl set-default-sink 'alsa_output.pci-0000_03_00.6.analog-stereo.equalizer' ; sleep 0.3
                 pactl set-sink-volume 0 40% ;  sleep 0.5 
                 nohup smplayer -close-at-end ~/work/library/music/chef.m3u > /dev/null 2>&1 &  ;;  
            esac  ;; 
       4) sleep 0.3 ; choice1=$(yad --list --title="SubMenu" --column="" --undecorated --no-headers \
          --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --timeout=7 \
          --no-buttons  --separator=""  --geometry=126x157+177+872 \
          --window-icon=/home/$USER/work/library/image/icon/menu1.ico --search-column=1  \
          --text="<span font='11' background='#FFDB00' foreground='black'>  Sub Menu  </span>"\
          --column=@fore@ --column=@back@ --column=@font@ \
             '0. Exit'  $fo0 'sans 11' \
             '1. Cam'       $fo0 'sans 11' \
             '2. Recepty'   $fo0 'sans 11' \
             '3. Adresi'    $fo0 'sans 11' \
             '                   ' 'black' '#FFDB00' 'sans 11' 
                 )
             case ${choice1%.*} in
            0) wmctrl -c  SubMenu ;;
              1) cheese > /dev/null 2>&1 &  ;;
              2) libreoffice --writer ~/work/ebook/RECEPTY.doc > /dev/null 2>&1 &  ;; 
              3) libreoffice  --calc ~/work/ebook/ADRESI.xls
             esac  ;;
       5) sleep 0.3 ; choice1=$(yad --list --title="SubMenu" --column="" --undecorated --no-headers \
                 --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --timeout=7 \
                  --no-buttons  --separator=""  --geometry=177x157+125+872 \
                 --window-icon=/home/$USER/work/library/image/icon/menu1.ico --search-column=1  \
                 --text="<span font='11' background='#FFDB00' foreground='black'>     Sub Menu    </span>"\
                 --column=@fore@ --column=@back@ --column=@font@ \
                    '0. Exit'       $fo0 'sans 11' \
                    '1. Inter   '   $fo0 'sans 11' \
                    '2. Win10'      $fo0 'sans 11' \
                    '3. Coordinate' $fo0 'sans 11' \
                    '4. Thunderbird Mail' 'black' '#FFDB00' 'sans 11' 
                        )
                   case ${choice1%.*} in
                        0) wmctrl -c  SubMenu ;;
            1) cpulimit -l 40 -b -q -k -- gio launch /home/$USER/'VirtualBox/INTERNET.desktop' &  
               sleep 2 ; wmctrl -r "INTERNET [Running] - Oracle VM VirtualBox" -e 1,400,150,400,400  
               export timer0=55 ; sleep 0.3 ; ~/work/proc/timers.sh 
               wmctrl -c "VirtualBoxVM" ; wmctrl -c "VirtualBoxVM" & ;; 
            2) cpulimit -l 40 -b -q -k -- gio launch /home/$USER/'VirtualBox/WIN 10 32.desktop' &
               sleep ; wmctrl -r "WIN 10 32 [Running] - Oracle VM VirtualBox" -e 1,600,200,300,300 
               export timer0=55 ; sleep 0.3 ; ~/work/proc/timers.sh 
               wmctrl -c "VirtualBoxVM" ; wmctrl -c "VirtualBoxVM" & ;;  
            3) sleep 10 ; wmctrl -r "WIN 10 32 [Running] - Oracle VM VirtualBox" -e 1,400,200,1000,750 
               sleep 15 ; wmctrl -r "INTERNET [Running]  - Oracle VM VirtualBox" -e 1,400,200,1000,750 
               sleep 0.2  ;  export timer0='' ; sleep 2 ; wmctrl -c "VirtualBoxVM" ; wmctrl -c "VirtualBoxVM"  & ;;
            4) nohup thunderbird  > /dev/null 2>&1 & ;;
                esac  ;; 
       6) sleep 0.3 ; choice1=$(yad --list --title="SubMenu" --column="" --undecorated --no-headers \
                 --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --timeout=7 \
                 --no-buttons  --separator=""  --geometry=126x132+176+897 \
                 --window-icon=/home/$USER/work/library/image/icon/menu1.ico --search-column=1  \
                 --text="<span font='11' background='#FFDB00' foreground='black'>  Sub Menu  </span>"\
                 --column=@fore@ --column=@back@ --column=@font@ \
                 '0. Exit'   $fo0 'sans 11' \
                 '1. Search' $fo0 'sans 11' \
                 '2. Arhiv'  $fo0 'sans 11' \
                 '3. Translate'   'black' '#FFDB00' 'sans 11' 
               )
                 case ${choice1%.*} in
                    0) wmctrl -c  SubMenu ;;
                    1) proc0=~/work/proc/search.sh  ; shfile0='searh.sh'  ; runterm0='' ; sleep 0.2 ; runshfile & ;;
                    2) proc0=~/work/proc/arhiv.sh  ; shfile0='arhiv.sh'  ; runterm0='' ; sleep 0.2 ; runshfile & ;;
                    3) proc0=~/work/proc/en-bg.sh   ; shfile0='en-bg.sh' ; runterm0='' ; sleep 0.2 ; runshfile & ;;
                 esac  ;; 
                # --no-buttons  --separator=""  --geometry=124x180+178+857 \
       7)  sleep 0.3 ; choice1=$(yad --list --title="SubMenu" --column="" --undecorated --no-headers \
                --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --timeout=7 \
                --no-buttons  --separator=""  --geometry=126x132+176+897 \
                --window-icon=/home/$USER/work/library/image/icon/menu1.ico --search-column=1  \
                --text="<span font='11' background='#FFDB00' foreground='black'>  Sub Menu  </span>"\
                 --column=@fore@ --column=@back@ --column=@font@ \
           '0. Exit   '  $fo0 'sans 11' \
           '1. Pfone  ' $fo0 'sans 11' \
           '2. Viber  ' $fo0 'sans 11' \
           '3. Contact' 'black' '#FFDB00' 'sans 11' 
               )
                  case ${choice1%.*} in
                    0) wmctrl -c  SubMenu ;;
                    1) nohup ~/work/proc/phonebook.sh > /dev/null 2>&1 & ;;  
                    2) cp /home/kosy/work/library/ViberPC/config.db /home/kosy/.ViberPC 
                       cp /home/kosy/work/library/ViberPC/config.db-shm /home/kosy/.ViberPC
                       cp /home/kosy/work/library/ViberPC/config.db-wal /home/kosy/.ViberPC
                       pid0=$(pidof -s "Viber") ; killall Viber ; sleep 1 ; wmctrl -c Viber ; sleep 1 ; kill -1 $pid0 ; kill -9 $pid0 
                       sleep 1 ; amixer set Capture cap ; sleep 1 ; cd /opt/viber ; sleep 2 ; /opt/viber/Viber & ;;
                    3) user0="si.mirchev04@gmail.com"  ;  pass0="divalza0" 
                       export web00=" https://contacts.google.com/?hl=en&tab=CC" ; $brows0  ; userpass ;;
                 esac  ;;
       8) sleep 0.3 ; choice1=$(yad --list --title="SubMenu" --column="" --undecorated --no-headers \
                 --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --timeout=7 \
                 --no-buttons  --separator=""  --geometry=126x182+176+847 \
                --window-icon=/home/$USER/work/library/image/icon/menu1.ico --search-column=1  \
                --text="<span font='11' background='#FFDB00' foreground='black'>  Sub Menu  </span>"\
                 --column=@fore@ --column=@back@ --column=@font@ \
                '0. Exit'     $fo0 'sans 11' \
                '1. Weawow'   $fo0 'sans 11' \
                '2. Windy'    $fo0 'sans 11' \
                '3. Calendar' $fo0 'sans 11' \
                '4. Weather'  $fo0 'sans 11' \
                '                  ' 'black' '#FFDB00' 'sans 11' 
                    )
                 case ${choice1%.*} in
                     0) wmctrl -c  SubMenu ;;
                     1) export web00=" https://weawow.com/c9140786" ; $brows0  & 
                            sleep  3 ; wmctrl -r mozilla -e 1,1700,405,455,360 ; sleep 3  &  ;;  
                     2) export web00=" https://www.windy.com/bg/-%D0%93%D1%80%D1%8A%D0%BC%D0%BE%D1%82%D0%B5%D0%B2%D0%B8%D1%86%D0%B8-thunder?thunder,42.488,27.466,5,m:eTMagC7" ; $brows0 & 
                            sleep  3 ; wmctrl -r mozilla -e 1,1700,405,455,360 ; sleep 3  &  ;;  
                 #   3) proc0=~/work/proc/calendar.sh ; shfile0='calendar.sh'  ; sleep 0.2 ; runshfile & ;; 
                     3) nohup ~/work/proc/calendar.sh ; shfile0='calendar.sh'  ; sleep 0.2 ; runshfile & ;; 
                     4) nohup ~/work/proc/weather.sh  > /dev/null 2>&1 & ;; 
                 esac & ;;  
       9)  sleep 0.3 ; choice1=$(yad --list --title="SubMenu" --column="" --undecorated --no-headers \
                --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --timeout=7 \
                --no-buttons  --separator=""  --geometry=126x132+176+897 \
                --window-icon=/home/$USER/work/library/image/icon/menu1.ico --search-column=1  \
                --text="<span font='11' background='#FFDB00' foreground='black'>  Sub Menu  </span>"\
                 --column=@fore@ --column=@back@ --column=@font@ \
           '0. Exit'  $fo0 'sans 11' \
           '1. MyWeb' $fo0 'sans 11' \
           '2. Cloud' $fo0 'sans 11' \
           '3. Timer'      'black' '#FFDB00' 'sans 11' 
               )
                  case ${choice1%.*} in
                    0) wmctrl -c  SubMenu ;;
                    1) nohup ~/.kort/myweb.sh > /dev/null 2>&1 & ;;  
                    2) nohup ~/.kort/cloud.sh > /dev/null 2>&1 & ;;
                    3) nohup ~/work/proc/timers.sh > /dev/null 2>&1 & ;; 
                 esac  ;;
     
      10) sleep 0.3 ; choice1=$(yad --list --title="SubMenu" --column="" --undecorated --no-headers \
                --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --timeout=7 \
                --no-buttons  --separator=""  --geometry=126x157+176+872 \
                --window-icon=/home/$USER/work/library/image/icon/menu1.ico --search-column=1  \
                --text="<span font='11' background='#FFDB00' foreground='black'>  Sub Menu  </span>"\
                --column=@fore@ --column=@back@ --column=@font@ \
                 '0. Exit'  $fo0 'sans 11' \
                 '1. Clean' $fo0 'sans 11' \
                 '2. Kill'  $fo0 'sans 11' \
                 '3. Killproc' $fo0 'sans 11' \
                 '4. Iso ' 'black' '#FFDB00' 'sans 11'
                    )
                 case ${choice1%.*} in
                   0) wmctrl -c  SubMenu ;;
                   1) sshpass -p $pass0 sudo pkexec bleachbit  > /dev/null 2>&1  & ;;  
                   2) ~/work/proc/kill.sh > /dev/null 2>&1  ; sleep 2 ; killall yad ;;
                   3) ~/work/proc/killproc.sh  ;; 
                   4) ~/IDISK/LINUX/32-64/64/balenaEtcher-1.7.0-x64.AppImage > /dev/null 2>&1 &
                      yad --width=400 --height=5 --title='FileZill' --info \
                     --text='<span font="14" foreground="black">
                     See file ~/work/proc/iso.sh </span>'   & ;;
                 esac  ;;


      11) sleep 0.3 ; choice1=$(yad --list --title="SubMenu" --column="" --undecorated --no-headers \
                --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --timeout=7 \
                --no-buttons  --separator=""  --geometry=126x157+176+872 \
                --window-icon=/home/$USER/work/library/image/icon/menu1.ico --search-column=1  \
                --text="<span font='11' background='#FFDB00' foreground='black'>  Sub Menu  </span>"\
                 --column=@fore@ --column=@back@ --column=@font@ \
              '0. Exit'      $fo0 'sans 11' \
              '1. GitHub' $fo0 'sans 11' \
              '2. PHP'    $fo0 'sans 11' \
              '3. Ruby'       $fo0 'sans 11' \
              '4. Python' 'black' '#FFDB00' 'sans 11' 
                  )
              case ${choice1%.*} in
                0) wmctrl -c  SubMenu ;;
                1) proc0=~/work/library/git/gitmenu.sh   ; shfile0='gitmenu.sh'  ; runterm0="" ; sleep 0.2 ; runshfile & ;;
                2) proc0=~/work/library/php/phpmenu.sh   ; shfile0='phpmenu.sh'  ; runterm0="" ; sleep 0.2 ; runshfile & ;;
                3) proc0=~/work/library/ruby/rubymenu.sh ; shfile0='rubymenu.sh' ; runterm0="" ; sleep 0.2 ; runshfile & ;;
                4) proc0=~/work/library/python/phythonmenu.sh ; shfile0='phythonmenu.sh' ; runterm0="" ; sleep 0.2 ; runshfile & ;;
               # Python) proc0=~/work/library/python/phythonmenu.sh ; shfile0='phythonmenu.sh' ; runterm0="t" ; sleep 0.2 ; runshfile & ;;
             esac  ;;
       12) sleep 0.3 ; choice1=$(yad --list --title="SubMenu" --column="" --undecorated --no-headers \
                --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --timeout=7 \
                --no-buttons  --separator=""  --geometry=126x182+176+846 \
                 \
                --window-icon=/home/$USER/work/library/image/icon/menu1.ico --search-column=1  \
                --text="<span font='11' background='#FFDB00' foreground='black'>  Sub Menu  </span>"\
                --column=@fore@ --column=@back@ --column=@font@ \
                '0. Exit'  $fo0 'sans 11' \
                '1. MyIp' $fo0 'sans 11' \
                '2. Windscribe'  $fo0 'sans 11' \
                '3. Network'  $fo0 'sans 11' \
                '4. Tor' $fo0 'sans 11' \
                '5. OpenVPN' 'black' '#FFDB00' 'sans 11' 
                    )
            case ${choice1%.*} in    # 18 begin
              0) wmctrl -c  SubMenu ;;
              1) z0=$(nmcli connection show --active | awk '{print $5}')
yad --fixed --timeout=120 --text="\
<span font='17' foreground='Red' >       ORIGINAL: 176.12.41.1</span> 
<span font='15' foreground='black' > \n $(curl ipinfo.io/$(whatsmyip))</span>
<span font='15' foreground='blue' > WiFi IP->$(hostname -I | awk '{print $1}') \
MAC->$( ifconfig | grep ether | awk '{print $2}') 
 Network interfaces-> ${z0:1:10} 
All device in local WiFi:
$(hostname -I | awk '{print $1}') 
$(arp -vn | grep "ether" | awk '{print $1}')</span> "  ;;
              2)sleep 0.1 ; ~/wok/proc/termin.sh ; wmctrl -r "TerminalInstall"  -e 1,500,10,1100,200 ; sleep 1 ; edi0=''
               while true
               do
              sp0=$(perl -E 'say " " x 44')   fo0="'$' '$'" ; rc0=9 
              app0=$(yad --list --title="OpenVPN" --column="" --no-headers   --separator=""  \
              $edi0 --text-align=center \
              --text="<span font='12' background='#DEC27B' foreground='black'>$sp0  OpenVPN  $sp0</span>" \
              --button="Edit ON":2 --button="Edit OFF":3 --button="❌":1 \
              --window-icon=/home/$USER/work/library/image/icon/install.ico --search-column=1 --geometry=1100x700+500+250 \
              --column=@fore@ --column=@back@ --column=@font@ \
              '❗ Click on TerminalInstall     separator ->  :                         ' $fo0 'Regular 13' \
              '1. Login -> https://windscribe.com/signup                               ' $fo0 'Regular 13' \
              'amalie1000  /  aa11bb22cc33 / al.moller@tutanota.com                    ' $fo0 'Regular 13' \
              'simirchev   /  aa11bb22     / si.mirchev@gmail.com                      ' $fo0 'Regular 13' \
              'exit -> Ctrl+c                                                          ' $fo0 'Regular 13' \
              'sudo killall openvp:  -> disconnect  OpenVPN                            ' $fo0 'Regular 13' \
              '1. Create / Login ->  https://windscribe.com/myaccount                  ' $fo0 'Regular 13' \
              '2. sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7' $fo0 'Regular 13' \
              '3. echo ❞deb https://repo.windscribe.com/ubuntu bionic main❞            ' $fo0 'Regular 13' \
              '   | sudo tee /etc/apt/sources.list.d/windscribe-repo.list              ' $fo0 'Regular 13' \
              '4. sudo apt-get update and sudo apt-get install windscribe-cli          ' $fo0 'Regular 13' \
              '5. windscribe login   amalie1000 / aa11bb22cc33                         ' $fo0 'Regular 13' \
              'windscribe connect:                                                     ' $fo0 'Regular 13' \
              'windscribe disconnect:                                                  ' $fo0 'Regular 13' \
              'windscribe locations:                                                   ' $fo0 'Regular 13' \
              'windscribe connect ’No Vampires’:                                       ' $fo0 'Regular 13' \
              'simirchev si.mirchev@gmail.com  aa11bb22 ; amalie1000  /  aa11bb22cc33  ' $fo0 'Regular 13' \
              'US Central     US-C         Atlanta   windscribe connect     Mountain   ' $fo0 'Regular 13' \
              'US Central     US-C          Dallas   windscribe connect        Ranch   ' $fo0 'Regular 13' \
              'US East        US           Chicago   windscribe connect          Cub   ' $fo0 'Regular 13' \
              'US East        US             Miami   windscribe connect         Snow   ' $fo0 'Regular 13' \
              'US East        US             Miami   windscribe connect         Vice   ' $fo0 'Regular 13' \
              'US East        US          New York   windscribe connect       Empire   ' $fo0 'Regular 13' \
              'US East        US     Washington DC   windscribe connect    Precedent   ' $fo0 'Regular 13' \
              'US West        US-W     Los Angeles   windscribe connect         Dogg   ' $fo0 'Regular 13' \
              'US West        US-W         Seattle   windscribe connect       Cobain   ' $fo0 'Regular 13' \
              'Canada East    CA          Montreal   windscribe connect      Expo 67   ' $fo0 'Regular 13' \
              'Canada East    CA           Toronto   windscribe connect Comfort Zone   ' $fo0 'Regular 13' \
              'Canada East    CA           Toronto   windscribe connect        The 6   ' $fo0 'Regular 13' \
              'Canada West    CA-W       Vancouver   windscribe connect    Granville   ' $fo0 'Regular 13' \
              'Canada West    CA-W       Vancouver   windscribe connect   Vansterdam   ' $fo0 'Regular 13' \
              'France         FR             Paris   windscribe connect       Jardin   ' $fo0 'Regular 13' \
              'France         FR             Paris   windscribe connect        Seine   ' $fo0 'Regular 13' \
              'Germany        DE         Frankfurt   windscribe connect       Castle   ' $fo0 'Regular 13' \
              'Germany        DE         Frankfurt   windscribe connect    Wurstchen   ' $fo0 'Regular 13' \
              'Netherlands    NL         Amsterdam   windscribe connect        Canal   ' $fo0 'Regular 13' \
              'Netherlands    NL         Amsterdam   windscribe connect    Red Light   ' $fo0 'Regular 13' \
              'Netherlands    NL         Amsterdam   windscribe connect        Tulip   ' $fo0 'Regular 13' \
              'Norway         NO              Oslo   windscribe connect        Fjord   ' $fo0 'Regular 13' \
              'Romania        RO         Bucharest   windscribe connect ❞No Vampires❞  ' $fo0 'Regular 13' \
              'Switzerland    CH            Zurich   windscribe connect      Alphorn   ' $fo0 'Regular 13' \
              'Switzerland    CH            Zurich   windscribe connect    Lindenhof   ' $fo0 'Regular 13' \
              'United Kingdom GB            London   windscribe connect     Crumpets   ' $fo0 'Regular 13' \
              'United Kingdom GB            London   windscribe connect      Custard   ' $fo0 'Regular 13' \
              'Turkey         TR          Istanbul   windscribe connect      Ataturk   ' $fo0 'Regular 13' \
              'Hong Kong      HK         Hong Kong   windscribe connect     Victoria   ' 'black' '#DEC27B' 'Regular 13'
                                    ) 
                 rc0=$?
                 case $rc0 in
                  1) sleep 0.5 ; wmctrl -c "TerminalInstall"  ;  wmctrl -c "OpenVPN"  ; sleep 0.5  ; exit ; sleep 0.5 ;;
                  2) edi0=--editable ;;
                  3) edi0= ;;
                  0) echo " ${app0%:*} " | $clip0 ; $sl0 ; $scv0 ; $sl0 ;  $backs0 ; sleep 5
                 esac
         done &  ;;
              3) proc0=~/work/proc/network.sh   ; shfile0='gitmenu.sh'  ; runterm0="" ; sleep 0.2 ; runshfile &;;
              4) sh -c "/opt/tor-browser_en-US/Browser/start-tor-browser" > /dev/null 2>&1 & ;;
              5)  sleep 0.1 ; ~/work/proc/termin.sh ; wmctrl -r "TerminalInstall"  -e 1,300,10,1100,200 ; sleep 1 ; edi0=''
         while true
         do
              sp0=$(perl -E 'say " " x 32')   fo0="'$' '$'" ; rc0=9 
              app0=$(yad --list --title="OpenVPN" --column="" --no-headers   --separator=""  \
              $edi0 --text-align=center \
              --text="<span font='12' background='#DEC27B' foreground='black'>$sp0  OpenVPN  $sp0</span>" \
              --button="Edit ON":2 --button="Edit OFF":3 --button="❌":1 \
              --window-icon=/home/$USER/work/library/image/icon/install.ico --search-column=1 --geometry=830x270+500+550 \
              --column=@fore@ --column=@back@ --column=@font@ \
              '❗ Click on TerminalInstall     separator ->  ;       ' $fo0 'sans 13' \
              'List free proxy servers:                              ' $fo0 'sans 13' \
              'https://www.vpnbook.com/freevpn;                      ' $fo0 'sans 13' \
              'Tab Free vpn /blue/ -> colomn Free OpenVPN  /midle/   ' $fo0 'sans 13' \
              'Start openVPN in terminal                             ' $fo0 'sans 13' \
              'cd ~/work/vpn/vpnbook/linux                           ' $fo0 'sans 13' \
              'sudo openvpn --config vpnbook-pl226-udp53.ovpn ;      ' $fo0 'sans 13' \
              'Error opening configuration file: -> Download new     ' $fo0 'sans 13' \
              'vpnbook;            username                          ' $fo0 'sans 13' \
              'See pass in web  -> down    emw79zs                   ' $fo0 'sans 13' \
              'Ctrl+c -> exit  -> disconnect OpenVPN                 ' $fo0 'sans 13' \
              'If all OK:  Initialization Sequence Completed"        ' $fo0 'sans 13' \
              'NOT more check IP                                     ' 'black' '#DEC27B' 'sans 12'
                                    ) 
                 rc0=$?
                 case $rc0 in
                  1) sleep 0.5 ; wmctrl -c "TerminalInstall"  ;  wmctrl -c "OpenVPN"  ; sleep 0.5  ; exit ; sleep 0.5 ;;
                  2) edi0=--editable ;;
                  3) edi0= ;;
                  0) echo " ${app0%;*} " | $clip0 ; $sl0 ; $scv0 ; $sl0 ;  $backs0 ; sleep 5
                 esac
              #  xdotool keydown alt key Tab; sleep 0.6; xdotool keyup alt
         done &  ;;
            esac   # 18 end ;;
    esac # sibmenu end
      }




  #  while true
  #      do 
# --text="<span font='15.0' background='blue' foreground='white'>  M A I N - M E N U   </span>" \

 
     while true
        do          
          #  clear ; show_menus ; read_options ; show_menus ; printf $col0  
            show_menus ; read_options 
          #  sleep 2 ; exit
        done



