#!/bin/bash
EDITOR=vim
PASSWD=/etc/passwd


NC='\033[0m' # No Color
col0='\033[0;0;44m' ;  printf $col0
play0='ffplay -i -autoexit -nodisp'

 col0='\033[0;0;44m'
 printf $col0
 tr1='~/work/linux/trans1.txt - Sublime Text (UNREGISTERED)'
 tr2='~/work/linux/trans2.txt - Sublime Text (UNREGISTERED)'

 #  sleep 1; xdotool getactivewindow windowmove 2000 900 windowsize 450 350 

 submenu(){
        case $choice in
          1) tesseract ~/work/linux/trans.png ~/work/linux/trans1 -l eng --dpi 150 > /dev/null 2>&1 ; sleep 1
             trans en:bg -b -i ~/work/linux/trans1.txt -o  ~/work/linux/trans2.txt > /dev/null 2>&1 ; sleep 1
             /opt/sublime_text/sublime_text -n  ~/work/linux/trans1.txt ; sleep 1
             wmctrl -r "~/work/linux/trans1.txt"  -e 1,155,750,150,250 ; sleep 1
             /opt/sublime_text/sublime_text -n  ~/work/linux/trans2.txt ; sleep 1
             wmctrl -r "~/work/linux/trans2.txt"  -e 1,1100,750,150,250 ; sleep 1 
             pause ; wmctrl -c $tr1 ; wmctrl -c $tr2 
        esac 
         }  
 

  transl(){
  echo    
#  rm -r  ~/.config/sublime-text/Local > /dev/null 2>&1

   # echo "      Press t - translate  q - exit"
     local REPLY
   
     while true
     do
         clear  ; sleep 0.5 
         read -p "   Press t - translate  q - exit : " REPLY

       if [ "$REPLY" = "я" ] || [ "$REPLY" = "т" ]; then 
          echo ; echo "             Turn Lat !!! " ; sleep 4 ; clear  ; sleep 0.5 ;
       fi

   if [ "$REPLY" = "t" ]; then 
          sleep 1
        case $choice in
           11) echo "          Translate  EN-BG "
               trans en:bg -b -i ~/work/linux/trans1.txt -o  ~/work/linux/trans2.txt > /dev/null 2>&1 ;;
           21) echo "          Translate  BG-EN "
               trans bg:en -b -i ~/work/linux/trans1.txt -o  ~/work/linux/trans2.txt > /dev/null 2>&1 ;;
           31) echo "          Translate  BG-EN "
               trans de:bg -b -i ~/work/linux/trans1.txt -o  ~/work/linux/trans2.txt > /dev/null 2>&1 ;;
        esac

    #    rm -r  ~/.config/sublime-text/Local > /dev/null 2>&1 ; sleep 0.5 
        wmctrl -c $tr1 ;  sleep 1 ; wmctrl -c $tr2 ; sleep 0.5
        /opt/sublime_text/sublime_text -n  ~/work/linux/trans1.txt ; sleep 0.5
        wmctrl -r "~/work/linux/trans1.txt"  -e 1,155,750,150,250 ; sleep 0.5
        /opt/sublime_text/sublime_text -n  ~/work/linux/trans2.txt ; sleep 0.5
        wmctrl -r "~/work/linux/trans2.txt"  -e 1,1100,750,150,250 ; sleep 0.5
        xdotool keydown alt ; sleep 0.1 ; xdotool key Tab ; sleep 0.1 ; xdotool key Tab
        sleep 0.1 ; xdotool keyup alt ; sleep 0.1 ; xdotool key Return 
     fi
        if [ "$REPLY" = "q" ]; then 
             echo "      Press key -> q "
           #  wmctrl -c $tr1 ; wmctrl -c $tr2 ; killall zenity ;  rm -r  ~/.config/sublime-text/Local > /dev/null 2>&1 
             wmctrl -c $tr1 ; wmctrl -c $tr2 ; rm -r  ~/.config/sublime-text/Local > /dev/null 2>&1 
        fi
       [ "$REPLY" = "q" ] && break
   done

      }

pause(){
  read   -p " Press [Enter] key to continue..." fackEnterKey
       }

show_menus(){
	clear ; # sleep 0.5 
 	echo "   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"	
 	echo "          T R A N S L A T O R          "
 	echo "   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
 	echo "   0. Exit                             "
    echo "   1. Select image                     "
    echo "   2. Record System Sound syssound.mp3 "
    echo "   3. Record Microphon-> microphon.mp3 "
    echo "   4. Pulseeffects - Equalizer         "
    echo "  10. Image to text   EN               "
    echo "  11. Translate text  EN to BG         "
    echo "  12. Text to speech  EN               "
    echo "  20. Image to text   BG               "
    echo "  21. Translate text  BG to EN         "
    echo "  22.                                  "
    echo "  30. Image to text   DE               "
    echo "  31. Translate text  DE to BG         "
    echo "  32. Text to speech  DE               "
    echo
    
             }
     read_options(){
     #  local choice 
      read -p "   Enter choice: " choice
     case $choice in
         0) killall trans.sh ; clear ; exit ;;  
         1) xdotool key Shift+Ctrl+Print ; pause  
            xclip -selection clipboard -t image/png -o > ~/work/linux/trans.png ; sleep 3 
           ;; 
        
         2) echo ; echo "   Recording.....  Ctrl+C - Stop " 
            parec -d 0 | lame -r -V0 - ~/work/linux/syssound.mp3     
            sleep 1 ; $play0 ~/work/linux/syssound.mp3 &
            sleep 1 ; xdotool getactivewindow windowmove 1500 940 windowsize 100 100 ;; 

        3) echo ; echo "   Recording.....  Ctrl+C - Stop " ; pause
            arecord -f dat ~/work/linux/microphon.mp3 > /dev/null 2>&1  
            # arecord -v -f cd -t raw | lame -r - ~/work/linux/microphon.mp3 > /dev/null 2>&1  
            sleep 1 ; $play0 ~/work/linux/microphon.mp3 &
            sleep 1 ; xdotool getactivewindow windowmove 1500 940 windowsize 100 100 ;; 
         4) pulseeffects ;;
        10) # wmctrl -c $tr1 ; wmctrl -c $tr2  ;  rm -r  ~/.config/sublime-text/Local > /dev/null 2>&1 
            #   xdotool key Shift+Ctrl+Print ; pause 
            #   xclip -selection clipboard -t image/png -o > ~/work/linux/trans.png ; sleep 3  
           tesseract ~/work/linux/trans.png ~/work/linux/trans1 -l eng --dpi 150 > /dev/null 2>&1 ; sleep 3
          #  command sed copy/pest from file to file 
           sed '$d' ~/work/linux/trans1.txt | xclip -sel clip ; sleep 1 
           /opt/sublime_text/sublime_text -n  ~/work/linux/trans1.txt ; sleep 1 ;;    
        11) transl ; wmctrl -c $tr1 ; wmctrl -c $tr2  ;; 
        12) pause ; xsel --clipboard | tr "\n" " " | espeak -a 100 -p 60 -s 100 -k20 -v mb-us1  ;; 


        20) # wmctrl -c $tr1 ; wmctrl -c $tr2  ;  rm -r  ~/.config/sublime-text/Local > /dev/null 2>&1 
            #  xclip -selection clipboard -t image/png -o > ~/work/linux/trans.png ; sleep 3
           tesseract ~/work/linux/trans.png ~/work/linux/trans1 -l bul --dpi 150 > /dev/null 2>&1 ; sleep 5 
           sed '$d' ~/work/linux/trans1.txt | xclip -sel clip  ; sleep 1
           /opt/sublime_text/sublime_text -n  ~/work/linux/trans1.txt ; sleep 1  ;;
            #  wmctrl -r "~/work/linux/trans1.txt"  -e 1,160,150,450,550 ; sleep 1  & ;;
        21) transl ; wmctrl -c $tr1 ; wmctrl -c $tr2  ;; 
        

        30) # wmctrl -c $tr1 ; wmctrl -c $tr2  ;  rm -r  ~/.config/sublime-text/Local > /dev/null 2>&1 
            #   xdotool key Shift+Ctrl+Print ; pause 
            #   xclip -selection clipboard -t image/png -o > ~/work/linux/trans.png ; sleep 3  
           tesseract ~/work/linux/trans.png ~/work/linux/trans1 -l deu --dpi 150 > /dev/null 2>&1 ; sleep 3
           sed '$d' ~/work/linux/trans1.txt | xclip -sel clip  ; sleep 1
           pause
           /opt/sublime_text/sublime_text -n  ~/work/linux/trans1.txt ; sleep 1 ;;    
         31) transl ; wmctrl -c $tr1 ; wmctrl -c $tr2  ;;
         32) pause ; xsel --clipboard | tr "\n" " " | espeak -a 100 -p 60 -s 100 -k20 -v mb-de7  ;; 


       esac
       
           }   
        #  xdotool getactivewindow windowmove 1200 400 windowsize 300 300


sleep 0.5 ;   xdotool key Shift+Ctrl+M
# echo -ne "\033]0;Install PHP\007"  ; sleep 0.1 ;  wmctrl -r "Install PHP" -e 1,300,120,750,470  ; sleep 0.1
echo -ne "\033]0;Beyond menu\007"  ; sleep 0.1 ;  wmctrl -r "Beyond menu" -e 1,1500,150,420,400  ; sleep 0.1

     while true
            #  if ! [ "$choice" = "" ] || [ "$choice" = "0" ]; then  
            #        pause ; wmctrl -c $tr1 ; wmctrl -c $tr2 
            #  fi 
        do   
           #  rm -r  ~/.config/sublime-text/Local > /dev/null 2>&1
            clear ; show_menus ; read_options ; show_menus ; printf $col0    
        done
