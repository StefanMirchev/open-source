#!/bin/sh


  user0="n" ;  pass0="n" ; col0='\033[0;0;45m ' ;  printf $col0 #veta se promenya samo ot poslednite dwe cifri //
  name=0
  sl0="sleep 0.5" ;   clip0="xclip -sel clip" ;   scv0="xdotool key Shift+Ctrl+v"  ; 
  backs0="xdotool key BackSpace"  ;  return0="xdotool key Return" ;   q0="xdotool key q" 
  brows0=/home/$USER/work/proc/browser.sh ; export brs00=1 


      zenity --info --no-wrap --title=PHPinstallMessage \
      --text="<span font=\"17\" foreground=\"blue\">After installa Menu 1-9, check \n\
correct install Meno 10. </span>" &

  pause(){
  echo 'bbb'  sleep 2    
  read -p " Press [Enter] key to continue..." fackEnterKey
         }

chnterm(){ 
  #  sleep 4 ; xdotool key Alt+Tab ; sleep 3
    sleep 0.5 ; xdotool keydown alt key Tab ; sleep 0.5 ; xdotool keyup alt # ; $return0
            }

chnterm


    show_menus() {
	clear
 #  echo '555 show_menus' ; sleep 2
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo "                             INSTALL PHP                         "
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo "   0. Exit"
    echo "   1. sudo apt-get update"
    echo "   2. Install completely -> user kosy  pass 089754 "
    echo "   3. sudo chown -R $USER:$USER /var/www"
    echo "   4. sudo chmod 777 /var/www/html -R"
    echo "   5. sudo chown -R $USER:$USER /etc/php/7.4/apache2"
    echo "   6. sudo chown -R $USER:$USER /etc/apache2"
    echo "   7. cp ~/work/library/php/php.ini  /etc/php/7.4/apache2/php.ini"
    echo "   8. cp ~/work/library/php/apache2.conf  /etc/apache2/apache2.conf"
    echo "   9. sudo apache2ctl restart"
    echo "  10. LogIn phpMyadmin -> user kosy  pass 089754"
    echo "                     \033[1m \033[1;31;47m  If  CAN’T logiN EXECUTIE 10-13 \033[0;0;45m"
    echo " 20. sudo mysql -p -u root" 
    echo " 21. mysql> CREATE USER 'pmauser'@'localhost'.... '089754'; "
    echo " 22. mysql> GRANT ALL PRIVILE GES ON *.* TO 'pmauser'@'localhost';" 
    echo " 23. Exit and Make point 5"
    echo
        }

    read_options() {
        read -p  "  Choice now $name       Enter choice: " name 
         case $name in
          ## 1) one ;;
         0) clear ; killall php_inst.sh ; exit ;;  
    #     1) chnterm ; echo "sudo apt-get update " | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0  & ;;
    #     2) chnterm ; echo "sudo apt-get install apache2 php libapache2-mod-php mysql-server php-mysql phpmyadmin php-mbstring" | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs  & ;;
         3) chnterm ; echo "sudo chown -R $USER:$USER /var/www"  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0  & ;;            
         4) chnterm ; echo "sudo chmod 777 /var/www/html -R"  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0   & ;;            
         5) chnterm ; echo "sudo chown -R $USER:$USER /etc/php/7.4/apache2"  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 & ;;
         6) chnterm ; echo "sudo chown -R $USER:$USER /etc/apache2/"  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 & ;;
         7) chnterm ; echo "cp ~/work/library/php/php.ini  /etc/php/7.4/apache2/php.ini" | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0  & ;;   
         8) chnterm ; echo "cp ~/work/library/php/apache2.conf  /etc/apache2/apache2.conf" | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0  & ;;   
         9) chnterm ; echo "sudo apache2ctl restart" | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0  & ;;   
        10) xreader  ~/work/library/php/endok.pdf & 
            user0="kosy";  pass0="089754" ;  export web00=" http://localhost"  ; $brows0 > /dev/null 2>&1 & 
            export web00=" http://localhost/phpmyadmin/index.php"  ; $brows0 > /dev/null 2>&1 &
            xreader /home/inter/work/library/php/endok.pdf & ;;
        20) chnterm ; echo "sudo mysql -p -u root"  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0  & ;;
        21) chnterm ; echo "CREATE USER 'kosy'@'localhost' IDENTIFIED WITH mysql_native_password BY '089754';" | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0  & ;;
        22) chnterm ; echo "GRANT ALL PRIVILEGES ON *.* TO 'kosy'@'localhost';" | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0  & ;;
        23) chnterm ; echo "exit"  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0  & ;;
         esac

         if [ $name = 10 ]; then
           echo $user0 | xclip -sel clip &
           zenity --info --title="User" --text="USER"   
           echo $pass0 | xclip -sel clip &
           zenity --info --title="Pass" --text="PASS"
           echo $(echo ${str0:0:30})  | xclip -sel clip &
         fi
                   }   
  
  # echo -ne "\033]0;Install PHP\007"  ; sleep 0.1 ;  wmctrl -r "Install PHP" -e 1,300,120,750,470  ; sleep 0.1
echo "\033]0;Install PHP\007"  ; sleep 0.1 ;  wmctrl -r "Install PHP" -e 1,600,320,700,430  ; sleep 0.1
sleep 0.1 ;  xdotool key Shift+Ctrl+M 
  #    wmctrl -l ; sleep 6
sleep 0.1 ; ~/work/proc/termin.sh

    while true
        do          
    #        echo "444" ;  sleep 2  ; clear
            clear ; show_menus ; read_options ; show_menus ; printf $col0  &
        done
