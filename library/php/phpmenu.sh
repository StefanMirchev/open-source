#!/bin/bash  

#  xy=$(xrandr |awk '$0 ~ "*" {print $1}') ;  K0=36.1421
#  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2)
 
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
  all0='$clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0'  
  # all0='$clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 '  
  subl0=~/work/library/sublime/sublime-text.sh  ; user0="kosy" pass0="089754"
  brows0=/home/$USER/work/proc/browser.sh ; export brs00=1 
  cell0="celluloid %U " 
  play0='ffplay -i -autoexit -nodisp'

  if [ $(wmctrl -l | grep 'Php' 2>&1 | wc -l) -ge 1 ] ; then exit  ; fi
  if [ `ps aux | grep -i "phpmenu.sh" | grep -v "grep" | wc -l` -ge 4 ] ; then exit ; fi


stepdown() { sleep 1 ; for (( i = 0 ; i < $st0; ++i )); do xdotool key Down  ; done
             sleep 1 ;  wmctrl -a Terminal ; }
 export -f stepdown


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
        --geometry=10x-10-$X3-$Y3  --button="❌":1 --timeout=0 \
        --text="<span font='18' background='red' foreground='white'> PASS </span>" \
        --window-icon=/home/$USER/work/library/image/icon/usepas.ico & 
        # sleep 3 ; xdotool key Ctrl+v ; sleep 1
     fi
 
 
            }
 export -f userpass

sp0=$(perl -E 'say " " x 4')   fo0="'$' '$'"
show_menus() {
app0=$(yad --list --title="Php" --column="" --undecorated --no-headers  --no-buttons \
--text="<span font='15' background='#75507B' foreground='white'>        P  H  P        </span>" \
 --window-icon=/home/$USER/work/library/image/icon/menu.ico --borders=4 --separator="" \
 --search-column=1 --geometry=307x181+$X1+$Y1   \
--gtkrc=/home/$USER/work/library/themes/yellow.css  --select-action="bash -c on_click" \
--column=@fore@ --column=@back@ --column=@font@ \
'0. Exit                       ' $fo0 'sans 12' \
'1. Menual                     ' $fo0 'sans 12' \
'2. Install PHP                ' $fo0 'sans 12' \
'3. Examples                   ' $fo0 'sans 12' \
'4. PhpMyadmin  Run PHP        ' 'white' '#75507B' 'sans 12'
    )
          }
# wmctrl -c "Ruby" ; killall rubymenu.sh ; 
   read_options(){  
       case ${app0%.*} in 
         0) 🌸 ; sleep 0.5  ; wmctrl -c "Install PHP" ; sleep 0.5  ; wmctrl -c "1Php" ; exit ; sleep 0.5 ;;
         1) 🌸 ; xreader ~/work/library/php/manual.pdf   & ;;
         2) 🌸 ;sleep 0.3 ; aa0=$(wmctrl -l | grep 'Terminal' 2>&1 | wc -l)
             #   yad --info --text " $aa0  / $(wmctrl -l | grep 'Terminal' 2>&1 | wc -l) "  --timeout=5
           if [ $aa0 -eq 0 ]; then  sleep 0.1 ; ~/work/proc/termin.sh 
              sleep 1; wmctrl -r "Terminal" -e 1,30,10,1300,500 & fi     
       while true
         do  stepdown &  
sp0=$(perl -E 'say " " x 39')   fo0="'$' '$'" ; rc0=9 
app0=$(yad --list --title="Install PHP" --column="" --no-headers  --undecorated  --separator=""  \
$edi0 --text-align=center  --gtkrc=/home/$USER/work/library/themes/green02.css \
--text="<span font='12' background='#DEC27B' foreground='black'>$sp0 Install PHP  $sp0</span>" \
--button="Edit ON":2 --button="Edit OFF":3 --button="❌":1  --geometry=1030x330+$X2+$Y2 \
--window-icon=/home/$USER/work/library/image/icon/install.ico --search-column=1  \
--column=@fore@ --column=@back@ --column=@font@ \
' 1.^ case $USER in  kosy) pass0=1 ;; inter) pass0=3 ;; chef) pass0=2 ;; esac                    ^ 2' $fo0 'Monospace  13' \
' 2.^ echo $pass0 | sudo -S apt-get update                                                       ^ 3' $fo0 'Monospace  13' \
' 3.^ sudo apt-get install apache2 php libapache2-mod-php mysql-server php-mysql phpmyadmin php-mbstring ^ 4'  $fo0 'Monospace 13' \
'   a. Press space key on -> ❗[*]❗ apache2                                                     ^ 5' $fo0 'Monospace 13' \
'   b. Enter pass 089754 tow time                                                                ^ 6' $fo0 'Monospace 13' \
' 4.^ bb0=${$(php --version):1:1}  cc0=${bb0:0:3}                                                ^ 7' $fo0 'Monospace 13' \
' 5.^ echo $pass0 | sudo -S cp ~/work/library/php/php.ini  /etc/php/$cc0/apache2/php.ini         ^ 8' $fo0 'Monospace 13' \
' 6.^ echo $pass0 | sudo -S cp ~/work/library/php/apache2.conf  /etc/apache2/apache2.conf        ^ 9' $fo0 'Monospace 13' \
' 7.^ echo $pass0 | sudo -S cp ~/work/php/index.php  /var/www/html/index.php                     ^10' $fo0 'Monospace 13' \
' 8.^ echo $pass0 | sudo -S chmod 777 /var/www -R                                                ^11' $fo0 'Monospace 13' \
' 9.^ echo $pass0 | sudo -S chmod 777 /etc/php/$cc0/apache2                                      ^12' $fo0 'Monospace 13' \
'10.^ echo $pass0 | sudo -S chmod 777 /etc/apache2/                                              ^13' $fo0 'Monospace 13' \
'11.^ echo $pass0 | sudo -S /etc/init.d/apache2 restart                                          ^14' $fo0 'Monospace 13' \
'II.  Create  username and password  PhpMyadin                                                   ^15' $fo0 'Monospace 13' \
' 1.^ sudo -S mysql -p -u root                                                                   ^16' $fo0 'Monospace 13' \
" 2.^ CREATE USER 'kosy'@'localhost' IDENTIFIED  BY '089754';                                    ^17" $fo0 'Monospace 13' \
' 3.^ GRANT ALL PRIVILEGES ON *.* TO 'kosy'@'localhost';                                         ^18' $fo0 'Monospace 13' \
' 4.^ Exit from mysql> -> exit  then  make dot 5                                                 ^19' 'black' '#DEC27B' 'Monospace 13'
    )
               rc0=$?
   case $rc0 in
    1) sleep 0.5 ; wmctrl -c "TerminalInstall"  ;  wmctrl -c "Terminal"  ; sleep 0.5  ; exit ; sleep 0.5 ;;     
    2) edi0=--editable ;;
    3) edi0= ;;
    0) clear  ; app1=$(echo $app0 | cut -d'^' -f2)  
  if [ ${app0:3:1} = ^ ] ; then
      st0=$(echo $app0 | cut -d'^' -f3) 
      sleep 0.5 ; echo "$app1 " | eval $all0  
  else 
      st0=$(echo $app0 | cut -d'^' -f2) 
  fi 
   # yad --info --text "  ${app0:3:1}     "
    ;; 
   esac 
   done & ;; 
         3) 🌸 ; nemo ~/A-VIDEO ; $sl0  ; $subl0 ~/work/php/_aaa.php
            libreoffice --writer ~/work/library/php/examples.doc & ;; 
         4) 🌸 ; export web00=" http://localhost/phpmyadmin/index.php" 
            $brows0  &  
            sleep 10 
            wmctrl -r "phpMyAdmin" -e 1,0,0,650,600 
            $subl0 /var/www/html/index.php & 
            sleep 3
            wmctrl -r "/var/www/html/index.php" -e 1,700,0,300,550
            userpass
          ;;  
      
         6) 🌸 ; php /var/www/html/index.php  ;;
         7) 🌸 ; sudo /etc/init.d/apache2 restart ;;
       esac
          }


     while true
        do          
          #  clear ; show_menus ; read_options ; show_menus ; printf $col0  
            show_menus ; read_options 
          #  sleep 2 ; exit
        done
