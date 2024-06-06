#!/bin/bash

  fold0=~/work/proc
  echo > $booz0 ;  echo > $timer0 ;  col0='\033[0;0;44m' 
  
    while true  # 01
        do  

 str0=$(yad --form  --width=350 --title="Search Phone Number" --undecorated  --separator='' \
 --field="<span font=\'15\' foreground=\'blue\'>Search Phone Number</span>" \
 --window-icon=/home/$USER/work/library/image/icon/search.ico --borders=30
     ) 



#   str0=$(zenity --forms --text "Search Phone Number" \
#   --title=""  --add-entry="Numder" 
#             )

             if [ $? = 1 ] || [ -z "$str0" ]  ; then
                sleep 1 ;  rm $fold0/aaa.txt
                killall scrcpy ; sleep 0.5 ;  wmctrl -c "Phone numbers found" ; sleep 1 ; killall phonesearch.sh ; clear ; exit
              fi            
  if test -f $fold0/aaa.txt ; then
       rm $fold0/aaa.txt
   fi


 #  sleep 0.5
# grep "4801" trans1.txt >> bbb.txt
grep "$str0" $fold0/phonebook.sh | sed "s/ //g" >> $fold0/aaa.txt
sleep 0.5
value=`cat $fold0/aaa.txt`
yad --form --text="$value" --title="Find Phone Number" --geometry=400x100+700+500

# yad  --text-info --title="Phone numbers found" \
#  --filename=$fold0/aaa.txt --editable --geometry=400x200+770+610  &
   done