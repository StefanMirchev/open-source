#!/bin/bash
 
  clear


  xy=$(xrandr |awk '$0 ~ "*" {print $1}') ; K0=36.1421
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2)
  X1=$(printf %.0f\\n $(echo "scale=4; (($X0-(4.5*$K0))*0.999)" | bc -l ))
  Y1=$(printf %.0f\\n $(echo "scale=4; (($Y0-(25.7*$K0))*1.25)" | bc -l ))  
  X2=$(printf %.0f\\n $(echo "scale=4; (($X0-(8*$K0))*0.58)" | bc -l ))
  Y2=$(printf %.0f\\n $(echo "scale=4; (($Y0-(5*$K0))*0.999)" | bc -l ))  
  X3=$(printf %.0f\\n $(echo "scale=4; (($X0-(16*$K0))*0.550)" | bc -l ))
  Y3=$(printf %.0f\\n $(echo "scale=4; (($Y0-(3*$K0))*0.990)" | bc -l )) 
  X4=$(printf %.0f\\n $(echo "scale=4; (($X0-(24*$K0))*0.635)" | bc -l ))
  Y4=$(printf %.0f\\n $(echo "scale=4; (($Y0-(2.3*$K0))*1.6)" | bc -l )) 
  X5=$(printf %.0f\\n $(echo "scale=4; (($X0-(10*$K0))*0.500)" | bc -l ))
  Y5=$(printf %.0f\\n $(echo "scale=4; (($Y0-(2*$K0))*0.990)" | bc -l )) 

     case $USER in  kosy) pass0=1 ;; inter) pass0=3 ;; chef) pass0=2 ;; esac

  sl0="sleep 0.2" ;  clip0="xclip -sel clip" ;  scv0="xdotool key Shift+Ctrl+v"  ; 
  backs0="xdotool key BackSpace" ;  return0="xdotool key Return" ;  q0="xdotool key q" 
  altaab0="xdotool key Alt+Tab"  ;  st0=0

stepdown() { sleep 1 ; for (( i = 1 ; i < $st0; ++i )); do xdotool key Down  ; done
              }  
             export -f stepdow

proc01(){ sleep 1 ; xdotool type $(echo ${app0:0:24}) ; sleep 0.5 ; }

 execcheck(){
if ! [  -z "$app0" ]; then  # yad --info --no-wrap --text=" 2222  $app0 " 
    proc01 &


 str0=$(yad --fixed --form --title="CHECK PROC"  --field="" --separator="" \
 --text="<span font='14' foreground='blue'> Enter packagename </span>" \
 --gtkrc=/home/$USER/work/library/themes/yellow.css --geometry=10x-10+$X2+$Y2 \
 --skip-taskbar ) 
       rc1=$? 
               #   yad --info --text "111111111111111  $app0  /  $str0  /  { print $1 }' "
                      app0=$(gawk -F, '{ print $1 }'<<<$str0) 
               #   yad --info --text "2222222222222222  $app0  /  $str0  /  { print $1 }' "
else 
      yad --info --no-wrap --text="You probably have the wrong package number -> $app0 "
fi 

if    [ $rc1 -eq 0 ]; then   
  ~/work/proc/termin.sh  
  while true
        do 
 str0=$(yad --fixed --info --title="EXEQUTE CHECK" --borders=0  --skip-taskbar \
--text="<span font='15' foreground='red'><b>  Processing package -> $app0</b></span>" \
--gtkrc=/home/$USER/work/library/themes/aqua.css --geometry=10x-10+$X3+$Y3 \
--button="EXIST":1 --button="INSTALL":2  --button="REMOVE I":3 --button="REMOVE II":4 
                        )
                          rc1=$?

    if    [ $rc1 -eq 252 ]; then  wmctrl -c TerminalInstall ; wmctrl -c Terminal ; break  
    elif  [ $rc1 -eq 4 ]; then   
           # sleep 0.5 ;echo " sshpass -p '$pass0' sudo apt-get remove --purge $app0" | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0
           sleep 0.5 ; echo " sudo apt-get remove --purge $app0" | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 
           sleep 1 ; xdotool key Alt+Tab ; sleep 1 ; xdotool key Alt+Tab ; sleep 1 ; xdotool key Alt+Tab ; sleep 1 ; xdotool key Alt+Tab   
    elif  [ $rc1 -eq 3 ]; then   
          #  sleep 0.5 ; echo " sshpass -p '$pass0' sudo apt-get autoremove $app0" | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0
           sleep 0.5 ; echo "sudo apt-get autoremove $app0" | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; sleep 5
    elif  [ $rc1 -eq 2     ]; then sleep 0.1 
          sleep 0.5 ; echo " sudo apt-get install $app0" | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0
    elif  [ $rc1 -eq 1    ]; then  sleep 0.1 
           echo " $app0 " | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0

      if [ $(dpkg-query -W -f='${Status}' $app0   | grep -c "install ok installed") -eq 1 ]; then
 yad --fixed --info --title="EXEQUTE CHECK" --skip-taskbar --no-buttons --timeout=9 \
--gtkrc=/home/$USER/work/library/themes/yellow.css --geometry=10x-10+$X4+$Y4 --undecorated \
--text="<span  font='14' color='black'><b> $app0 IS INSTALLED</b></span> 
<span font='12' foreground='red'><b>$(dpkg-query -l $app0 | grep -F  "Name")</b></span> 
<span font='12' foreground='red'><b>$(dpkg-query -l $app0 | grep -F  "ii")</b></span>" 
        else
          yad --fixed  --info --title="CHECK_VERSION" --skip-taskbar --no-buttons --timeout=9 \
          --gtkrc=/home/$USER/work/library/themes/yellow.css --geometry=10x-10+$X5+$Y5 \
          --text="<span font='14' ><b>     NOT INSTALL     </b></span>"  --undecorated 
       fi  # yad --info --no-wrap --text="EXIST"
    fi
  done
fi
                          }

 fo0="'$' '$'"
    while true
        do  stepdown &  
app0=$(yad --list --title="CHECK APP" --column="" --no-headers   --separator=""  \
--gtkrc=/home/$USER/work/library/themes/yellow.css  --geometry=250x845+$X1+$Y1 \
--window-icon=/home/$USER/work/library/image/icon/install.ico --search-column=1 \
--no-buttons --column=@fore@ --column=@back@ --column=@font@ \
'adb                         1' $fo0 'Monospace 13' \
'acpi                        2' $fo0 'Monospace 13' \
'alacarte                    3' $fo0 'Monospace 13' \
'apache2                     4' $fo0 'Monospace 13' \
'auducacy                    5' $fo0 'Monospace 13' \
'awk                         6' $fo0 'Monospace 13' \
'bcompare                    7' $fo0 'Monospace 13' \
'bleachbit                   8' $fo0 'Monospace 13' \
'cairo-clock                 9' $fo0 'Monospace 13' \
'cheese                     10' $fo0 'Monospace 13' \
'chromium                   11' $fo0 'Monospace 13' \
'dos2unix                   12' $fo0 'Monospace 13' \
'dict-freedict-eng-bul      13' $fo0 'Monospace 13' \
'espeak                     14' $fo0 'Monospace 13' \
'ffmpeg                     15' $fo0 'Monospace 13' \
'flatpak                    16' $fo0 'Monospace 13' \
'gcal                       17' $fo0 'Monospace 13' \
'git                        18' $fo0 'Monospace 13' \
'git-all                    19' $fo0 'Monospace 13' \
'gitk                       20' $fo0 'Monospace 13' \
'google-chrome-stable       21' $fo0 'Monospace 13' \
'hunspell-bg                22' $fo0 'Monospace 13' \
'irb                        23' $fo0 'Monospace 13' \
'k3b                        24' $fo0 'Monospace 13' \
'kdiff3                     25' $fo0 'Monospace 13' \
'libapache2-mod-php         26' $fo0 'Monospace 13' \
'lm-sensors                 27' $fo0 'Monospace 13' \
'magnify                    28' $fo0 'Monospace 13' \
'masterpdfeditor4           29' $fo0 'Monospace 13' \
'megasync                   30' $fo0 'Monospace 13' \
'mysql-server               31' $fo0 'Monospace 13' \
'openvpn                    32' $fo0 'Monospace 13' \
'openssh-server             33' $fo0 'Monospace 13' \
'openssh-client             34' $fo0 'Monospace 13' \
'php                        35' $fo0 'Monospace 13' \
'php-mysql                  36' $fo0 'Monospace 13' \
'phpmyadmin                 37' $fo0 'Monospace 13' \
'php-mbstring               38' $fo0 'Monospace 13' \
'pqiv                       39' $fo0 'Monospace 13' \
'python3 tkinter            40' $fo0 'Monospace 13' \
'python3-tk                 41' $fo0 'Monospace 13' \
'python3-pip                42' $fo0 'Monospace 13' \
'qrencode                   43' $fo0 'Monospace 13' \
'ruby-full                  44' $fo0 'Monospace 13' \
'rails                      45' $fo0 'Monospace 13' \
'scp                        46' $fo0 'Monospace 13' \
'samba                      47' $fo0 'Monospace 13' \
'scrcpy                     48' $fo0 'Monospace 13' \
'smplayer                   49' $fo0 'Monospace 13' \
'smbclient                  50' $fo0 'Monospace 13' \
'ssh NOT INSTLA             51' $fo0 'Monospace 13' \
'sshpass                    52' $fo0 'Monospace 13' \
'tesseract                  53' $fo0 'Monospace 13' \
'tesseract-ocr-bul          54' $fo0 'Monospace 13' \
'translate-shell            55' $fo0 'Monospace 13' \
'unzip                      56' $fo0 'Monospace 13' \
'viber                      57' $fo0 'Monospace 13' \
'virtualbox                 58' $fo0 'Monospace 13' \
'wmctrl                     59' $fo0 'Monospace 13' \
'windscribe-cli             60' $fo0 'Monospace 13' \
'xclip                      61' $fo0 'Monospace 13' \
'xdotool                    62' $fo0 'Monospace 13' \
'xsel                       63' $fo0 'Monospace 13' \
'xscreensaver               64' $fo0 'Monospace 13' \
'yad                        65' $fo0 'Monospace 13' \
'zsh                        66' $fo0 'Monospace 13' \
'zip                        67' $fo0 'Monospace 13' \
'zip                        68' 'black' '#E3D73C' 'Monospace 13'
    )
               rc0=$?

               if [ $rc0 = 252 ]; then
                   # yad --info  --text=" A  $rc0  $? "
                   sleep 0.5 ; wmctrl -c "TerminalInstall" ; wmctrl -c Terminal \
                   wmctrl -c "CHECK APP"  ; sleep 0.5  ; exit ; sleep 0.5
               fi
     st0=${app0:26:3} ; wmctrl -c TerminalInstall ; wmctrl -c Terminal
            execcheck
       done
