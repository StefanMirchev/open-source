#!/bin/bash  

  xy=$(xrandr |awk '$0 ~ "*" {print $1}')
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2) 
  KX_0=$(printf %.3f\\n $(echo "(($X0/37.5))" | bc -l )) 
  KY_0=$(printf %.3f\\n $(echo "(($Y0/30.5))" | bc -l ))
  X1=$(printf %.0f\\n $(echo "(($X0-(8.50  *$KX_0))*0.001)" | bc -l ))
  Y1=$(printf %.0f\\n $(echo "(($Y0-(6.00  *$KY_0))*0.99)" | bc -l ))
  X2=$(printf %.0f\\n $(echo "(($X0-(27.5  *$KX_0))*0.90)" | bc -l ))
  Y2=$(printf %.0f\\n $(echo "(($Y0-(9.5   *$KY_0))*0.99)" | bc -l ))
  X3=$(printf %.0f\\n $(echo "(($X0-(2.50  *$KX_0))*0.001)" | bc -l ))
  Y3=$(printf %.0f\\n $(echo "(($Y0-(2.00  *$KY_0))*0.01)" | bc -l ))

  case $USER in  kosy) pass0=1 ;; inter) pass0=3 ;; chef) pass0=2 ;; esac

  sl0="sleep 0.2" ;   clip0="xclip -sel clip" ;   scv0="xdotool key Shift+Ctrl+v"  ; 
  backs0="xdotool key BackSpace" ;  return0="xdotool key Return" 
  chnterm0="sleep 0.5 ; xdotool keydown alt key Tab ; sleep 0.5 ; xdotool keyup alt"
  all0='$clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0  ; $sl0 ; $return0'
  user0="kosy"  pass0="089754"  st0=0
  subl0=~/work/library/sublime/sublime-text.sh   
  brows0=/home/$USER/work/proc/browser.sh ; export brs00=

 cell0="celluloid %U " 
 play0='ffplay -i -autoexit -nodisp'

  if [ $(wmctrl -l | grep 'Php' 2>&1 | wc -l) -ge 1 ] ; then exit  ; fi
  if [ `ps aux | grep -i "phpmenu.sh" | grep -v "grep" | wc -l` -ge 4 ] ; then exit ; fi



  userpass() {
  coord_f
  sleep 0.5
  if ! [ $user0 = n ] ; then 
        sleep 0.5 ; echo $user0 | xclip -sel clip &
        yad --info --title="User" --undecorated --no-headers --separator="" \
        --geometry=10x-10-$X3-$Y3  --button="❌":1 --timeout=0 \
        --text="<span font='18' background='green' foreground='white'> USER </span>" \
        --window-icon=/home/$USER/work/library/image/icon/usepas.ico
        # sleep 3 ; xdotool key Ctrl+v ; sleep 1
     fi

     if ! [ $user0 = n ] ; then
        sleep 0.5 ; echo $pass0 | xclip -sel clip &
        yad --info --title="Pass" --undecorated --no-headers --separator="" \
        --geometry=10x-10-$X3-$Y3  --button="❌":1 --timeout=20 \
        --text="<span font='18' background='red' foreground='white'> PASS </span>" \
        --window-icon=/home/$USER/work/library/image/icon/usepas.ico & 
        # sleep 3 ; xdotool key Ctrl+v ; sleep 1
     fi
            }
 export -f userpass

  transwin() { sleep 2 ;  xdotool keydown alt key Tab ; sleep 0.5 ; xdotool keydown alt key Tab ; sleep 0.5 ; xdotool keyup alt ; } ;  export -f transwin

  stepdown() { sleep 2 ; for i in `seq 1 $st0`; do xdotool key Down  ; done  } ; export -f stepdown


sp0=$(perl -E 'say " " x 4')   fo0="'$' '$'"
show_menus() {
app0=$(yad --list --title="PYTHON" --column="" --undecorated --no-headers  --no-buttons \
--text="<span font='15' background='#F08748' foreground='black'>     P Y T H O N       </span>" \
--window-icon=/home/$USER/work/library/image/icon/menu.ico --borders=4 --separator="" \
--search-column=1 --geometry=307x181+$X1+$Y1   \
--gtkrc=/home/$USER/work/library/themes/yellow.css  --select-action="bash -c on_click" \
--column=@fore@ --column=@back@ --column=@font@ \
'0. Exit                       ' $fo0 'sans 12' \
'1. Menual                     ' $fo0 'sans 12' \
'2. w3schools                  ' $fo0 'sans 12' \
'3. Examples                   ' $fo0 'sans 12' \
'4. IDEs﹒docx                      ' 'black' '#F08748' 'sans 12'
    )
          }
# wmctrl -c "Ruby" ; killall rubymenu.sh ; 
   read_options(){  
       case ${app0%.*} in 
         0) sleep 0.5  ; wmctrl -c "1PYTHON"  ; clear ; killall phythonmenu.sh ; clear ; exit ;
             wmctrl -c "Terminal" ;  exit ; sleep 0.5 ;;
         1) xreader ~/work/library/python/Python_3–FULL.pdf & 
            sleep 3 ;  wmctrl -r "Python_3–MIDLE.pdf " -e 1,1000,600,1100,400
            sleep 1 ; for i in {1..1}; do xdotool key Ctrl+plus ; sleep 0.5 ; done
            sleep 1 ; for i in {1..81}; do xdotool key Page_Down  ; done  
            sleep 3 ; libreoffice --writer  ~/work/library/python/examples.docx  &
            sleep 1 ;  wmctrl -r "examples.docx " -e 1,1100,300,800,700  ;; 
         2) uset0=si.mirchev@abv.bg ; pass0=aa11bb22 
            export web00=" w3schools.com" ; $brows0 &
            export web00="https://stackoverflowteams.com/c/kosi-61/questions" ; $brows0 & ;; 
         3) $subl0 ~/work/python/a1.py  > /dev/null 2>&1 
            sleep 1 ;  wmctrl -r "~/work/python/a1.py" -e 1,10,10,500,500 ; sleep 1  & ;;  
         4) libreoffice --writer  ~/work/python/ides.docx  & ;;
       esac
          }

     while true
        do          
            show_menus ; read_options 
        done
