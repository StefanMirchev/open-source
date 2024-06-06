#!/bin/bash

 # !!!  38 BUKVI     48 FON !!!!!!!!



pause(){
#  read -p " Press [Enter] key to continue..." fackEnterKey
  read -p  "" fackEnterKey
       }


yad --color-selection  --window-icon=/home/$USER/work/library/image/icon/icon.ico 
yad --font --window-icon=/home/$USER/work/library/image/icon/icon.ico 

col0='\033[0;0;45m ' ;  printf $col0 ; clear 


echo 'I. Press [Enter] key to continue...' ; pause
for i in {10..110} ; do echo -en "\e[48;5;${i}m \e[0m" ; done 

echo 
echo 
echo 
echo 'II. Press [Enter] key to continue...' ; pause


for fgbg in 38 48 ; do # Foreground / Background
    for color in {0..255} ; do # Colors
        # Display the color
       printf "\e[${fgbg};5;%sm  ${fgbg} %3s  \e[0m" $color $color
        # Display 6 colors per lines
        if [ $((($color + 1) % 6)) == 4 ] ; then
            echo # New line
        fi
    done
    echo # New line
done

echo 
echo 
echo 
echo 'III. Press [Enter] key to continue...' ; pause


#  echo ${i}m ; sleep 1 ; 


PATH=/bin:/usr/bin:
echo '1'
NONE='\033[00m' ; RED='\033[01;31m' ; GREEN='\033[01;32m' ; YELLOW='\033[01;33m'
PURPLE='\033[01;35m' ; CYAN='\033[01;36m' ; WHITE='\033[01;37m' ; BOLD='\033[1m'
UNDERLINE='\033[4m'

echo -e "This text is ${RED}red${NONE} and ${GREEN}green${NONE} and ${BOLD}bold${NONE} and ${UNDERLINE}underlined${NONE}."
echo '2'
echo -e "\x1b[1m bold" ; echo -e "\x1b[30m black" ; echo -e "\x1b[31m red"
echo -e "\x1b[32m green" ; echo -e "\x1b[33m yellow" ; echo -e "\x1b[34m blue"
echo -e "\x1b[35m mag" ; echo -e "\x1b[36m cyan" ; echo -e "\x1b[37m white"  
echo '3'
echo -e "\x1b[0m io-std" ; echo -e "\x1b[1m bold" ; echo -e "\x1b[2m normal"
echo -e "\x1b[3m italic" ; echo -e "\x1b[4m underlined"
echo -e "\x1b[31;1;44m \x1b[1m \x1b[31m aaaaa \x1b[m"
echo -e "\x1b[31;42m  \x1b[1m \x1b[31m bbbbb  \x1b[m"
echo -e "\x1b[31;1;46m  \x1b[1m \x1b[31m ccccc  \x1b[m"
echo '4'
# echo -e "\e[48;5;10m white with green background \e[0m"
echo -e "\x1b[31;42m red with green background \x1b[m"
echo -e "\e[48;5;10m white with green background \e[0m"
echo -e "\x1b[30;44m black with blue background \x1b[m"
echo -en "\e[48;5;10m white with green background \e[0m"
echo -e "\x1b[31;42m red with green background \x1b[m"
echo -e "\x1b[32;40m green with black background \x1b[m"
echo -e "\x1b[8m Invisible; na na na na boo boo \x1b[m"
echo '5'
echo '51'
  echo -e "\x1b[31;47m red with green background \x1b[m"
  echo -e "\x1b[1;31;47m red with green background111\x1b[m"
  echo -e "\x1b[1;31;47m red \x1b[1m with green background333\x1b[m"
  echo -e "\033[1m red with green background444 "
  echo -e "\x1b[1m red with green background555\x1b[m"
  echo -e "\x1b[1m \x1b[1;31;47m red with green background666\x1b[m"

  
echo '51'


echo '61'
echo 1
echo -e "\x1b[30;44m black with blue background \x1b[m"
echo -e "\x1b[30;0;44m white with blue background \x1b[m"
echo -e "\x1b[30;1;44m black with blue background \x1b[m"
echo -e "\x1b[30;7;44m black with blue background \x1b[m"
echo -e "\x1b[31;42m red with green background \x1b[m"
echo -e "\x1b[31;0;44m red with green background \x1b[m"
echo -e "\x1b[31;1;44m red with green background \x1b[m"
echo -e "\x1b[31;1;33m red with green background \x1b[m"
echo 2
echo -e "\e[48;5;10m white with green background \e[0m"
echo 4
echo -e "\e[48;5;20m white with green background \x1b[m"
echo -e "\e[48;5;16m white with green background \e[0m"
echo 5
echo -e "\x1b[30;;20m black with blue background \x1b[m"
printf "\e[38;5;10m aaaaa \e[0m" 
printf  "\e[38;5;20m bbbbb \e[0m" 
printf  "\e[38;5;39m ccccc \e[0m" 
printf  "\e[38;5;40m ddddd \e[0m" 
printf  "\e[38;5;50m eeeee \e[0m" 
printf  "\e[38;5;15m fffff \e[0m" 
printf  "\e[38;5;33m ggggg \e[0m" 
printf  "\e[48;5;33m kkkkk \e[0m" 
printf  "\e[48;0;33m lllll \e[0m" 
printf  "\e[48;1;33m mmmm \e[0m" 
printf  "\e[48;;33m  nnnn \e[0m" 
printf  "\e[48;5;44m cccc \e[0m" 

echo '61'

echo 5
echo -e "\x1b[5m blinking" ; echo -e "\x1b[7m inverted"
echo '6'
# sudo dpkg-reconfigure console-setup



sleep 60
