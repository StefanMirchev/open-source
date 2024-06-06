#!/bin/bash


if [ $(wmctrl -l | grep 'Local Area Connection' 2>&1 | wc -l) -ge 1 ] ; then exit  ; fi 
  xy=$(xrandr |awk '$0 ~ "*" {print $1}') ; K0=36.1421
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2)
  X1=$(printf %.0f\\n $(echo "scale=4; (($X0-(18*$K0))*0.98)" | bc -l ))
  Y1=$(printf %.0f\\n $(echo "scale=4; (($Y0-(10*$K0))*0.38)" | bc -l ))  
 cp ~/work/library/hlp/bcompare/BCState.xml   ~/.config/bcompare/
 cp ~/work/library/hlp/bcompare/BCSessions.xml   ~/.config/bcompare/
 cp ~/work/library/hlp/bcompare/BCProfiles.xml   ~/.config/bcompare/


sleep 2 ; nohup  bcompare >/dev/null 2>&1  & 
sp0=$(perl -E 'say " " x 13')   fo0="'$' '$'"

 app0=$(yad --list --title="Local Area Connection" --button="❌" --column="" \
--gtkrc=/home/$USER/work/library/themes/red02.css --no-headers  \
 --separator="" --editable --text-align=center \
--text="<span font='15' background='#FF5F5F' foreground='white'>$sp0 Local Area Connection $sp0</span>" \
--window-icon=/home/$USER/work/library/image/icon/net.jpg --search-column=1 --geometry=650x300+$X1+$Y1 \
--column=@fore@ --column=@back@ \
'A1_F277    0800271B2632                                        ' $fo0 \
'kosi   smb://192.168.0.202                         0013D4F00968' $fo0 \
'stef   smb://192.168.0.203                         001A739ACC69' $fo0 \
'kosy-c smb://192.168.0.206                         D8C0A606CFB3' $fo0 \
'inter  smb://192.168.0.207                         0800278F4D7C' $fo0 \
'chef   smb://192.168.0.208                         080027666F70' $fo0 \
'acco   smb://192.168.0.209                         080027F8D184' $fo0 \
'lenovo ftp://android@192.168.0.204:2221/ android   5427589C9FDC' $fo0 \
'me301t ftp://android@192.168.0.205:2221/ android   5CFF357EAA6F' $fo0 \
'kosi   smb://192.168.1.102                         0013D4F00968' $fo0 \
'stef   smb://192.168.1.103                         001A739ACC69' $fo0 \
'kosy   smb://192.168.1.106                         D8C0A606CFB3' $fo0 \
'inter  smb://192.168.1.107                         0800278F4D7C' $fo0 \
'chef   smb://192.168.1.108                         080027666F70' $fo0 \
'acco   smb://192.168.1.109                         080027F8D184' $fo0 \
'lenovo ftp://android@192.168.0.104                 5427589C9FDC' $fo0 \
'me301t ftp://android@192.168.0.105                 5CFF357EAA6F' 'white' '#FF5F5F'
             ) &
 #sleep 3 ;  wmctrl -r "Home - Beyond Compare" -e 1,120,10,1150,750