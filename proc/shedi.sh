#!/bin/bash


subl0=/home/$USER/work/library/sublime/sublime-text.sh
sleep 0.5 ;  xdotool key Ctrl+c  ;  export varexp00=`xsel -ob` 
sleep 0.1 ; fold0=${varexp00%/*} ; sleep 0.1 ; file0=${varexp00##*/} ;foldrem0=${fold0:10:30}
cd $fold0 ; typ0=$(ls -al "$varexp00"  | awk '{print $1}') ; sleep 0.1
 # yad --text " 02 checkproc  $typ0 "  ; exit 
  if [ "${typ0:8:1}" = "-" ] || [ "${typ0:9:1}" = "-" ] ; then
  # ~/work/proc/unlock.sh 
      sleep 0.2 ; sshpass -p $pass0 sudo chmod ugo+rwx $varexp00 ; sleep 0.2 
      sleep 0.2 ; sshpass -p $pass0 sudo chmod +rwxrwxrwx $varexp00 ; sleep 0.2 
     # sleep 0.5 ; sshpass -p $pass0 sudo chmod  775  $varexp00  ; sleep 0.5
     # sleep 0.5 ; sshpass -p $pass0 sudo chmod  777  $varexp00 ; sleep 0.5
     # sleep 0.5 ; sshpass -p $pass0 sudo chown -R $USER:$USER $varexp00 ; sleep 0.5 
  fi 

# fold0=$(echo $str0 | cut -d'|' -f2)
# fold1=$(echo $a1 | cut -d'x' -f1)

aa0=$(echo $file0 | cut -d'.' -f2)

# yad --text " 01runproc01  $file0 $aa0" 
 #if  [ "$(echo $file0 | cut -d'.' -f2)" = "sh" ] 
 if  [ "$aa0" = "sh" ] ; then
  $subl0 $varexp00
#  yad --text " 02runproc02  $file0 $aa0" 
#  !!!!!!!!!!!!!!!!!!!  NOT DELETE NOT DELETE NOT DELETE
# yad --info --no-wrap --ok-label="AAAAAA" --extra-button=Cancel  --text="\
# <span color=\"\#00EE00\"   font=\"25\"><b>Variables </b></span>
# <span color=\"black\" font=\"15\"><b>varexp00 $varexp00</b></span>
# <span color=\"black\" font=\"15\"><b>fold0  $fold0</b></span>
# <span color=\"black\" font=\"15\"><b>file0  $file0</b></span>
# <span color=\"black\" font=\"15\"><b>(pwd) $(pwd)</b></span>
# <span color=\"black\" font=\"15\"><b>foldrem0 $foldrem0</b></span>"
# !!!!!!!!!!!!!!!!!!!  NOT DELETE NOT DELETE NOT DELETE

 fi



# I RunSh
#  wmctrl -c "RunSh" ; sleep 1 ; cd ~/work/linux
#  gnome-terminal --geometry=50x10+5+700 --title="RunSh" ; sleep 0.3
#  sleep 0.3 ;   xdotool key Shift+Ctrl+M ; wmctrl -r "RunSh" -e 1,5,710,600,200  ; sleep 0.1
#  echo '~/work/linux/a1.sh'  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 


# export varexp00="$0" ; typ0=$(ls -al "$1"  | awk '{print $1}') 
# #  yad --text " checkproc  $varexp00  " 
#  if [ "${typ0:8:1}" = "-" ] || [ "${typ0:9:1}" = "-" ] ; then
#    yad --text " runproc  $varexp00  " 
#  ~/work/proc/unlock.sh 
#  fi


# # II RunRuby
#   wmctrl -c "RunRuby" ; sleep 1 ; cd ~/work/ruby
#   gnome-terminal --geometry=50x10+5+700 --title="RunRuby" ; sleep 0.3
#   sleep 0.3 ;   xdotool key Shift+Ctrl+M ; wmctrl -r "RunRuby" -e 1,5,710,600,200  ; sleep 0.1
#   echo 'ruby' ~/work/ruby/a1.rb  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 



# III. Run Python
# wmctrl -c "RunPython" ; sleep 1 ; cd ~/work/python
# gnome-terminal --geometry=50x10+5+700 --title="RunPython" ; sleep 0.3
# sleep 0.3 ;   xdotool key Shift+Ctrl+M ; wmctrl -r "RunPython" -e 1,5,710,600,200  ; sleep 0.1
# echo 'python3' ~/work/python/a1.py  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 
