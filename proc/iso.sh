#!/bin/sh



fname0="Office2007"
  sl0="sleep 0.5" ;   clip0="xclip -sel clip" ;   scv0="xdotool key Shift+Ctrl+v"  ; 
   backs0="xdotool key BackSpace" ;  return0="xdotool key Return" ;   q0="xdotool key q" 
 

mkdir ~/work/dvd > /dev/null 2>&1
mkdir ~/work/iso > /dev/null 2>&1
mkdir ~/work/ext > /dev/null 2>&1

# 1. CREATA .iso FILE !!! NOT WINDOWS FILES CRATE .ISO FILE!!!
#  mkisofs -o ~/work/iso/$fname0.iso ~/work/dvd
  

# 2. CREATR nemo -> Dvices -> CDROM, remove CDROM AND CONTANINT ext 
#  unmont CDROM  


  pass0=1
   case $USER in
           kosy)   pass0="1" ; $sl0 ;;
           acco)   pass0="2" ; $sl0 ;;
           inter)  pass0="3" ; $sl0 ;;            
    esac
 gnome-terminal   
 echo 'sudo mount -o loop ~/work/iso/'$fname0.iso '~/work/ext'  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ; 
 echo $pass0 | $clip0 ; $sl0 ; $scv0


# 3. EXTRACT .ISO FILE TO FLASH
#  file-roller --extract-to=/media/kosy/USB-2G ~/work/iso/Office2007.iso

# 4. MAKE LINUX INSTALL FLASH   !!! NOT 2 GB FLASH !!!



sleep 5