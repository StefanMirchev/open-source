#!/bin/bash





yad --list --column=text --column=@fore@ \
--column=@font@ " big red font" "green"  "Monospace 20" \
 "normal blue font" "brown" "Monospace 20"



sp0=$(perl -E 'say " " x 35')   fo0="'$' '$'" ; rc0=9  fo1="'red'"
app0=$(yad --list --title="Install" --undecorated --column="" --no-headers  --separator="" \
$edi0 --text-align=center  --gtkrc=/home/$USER/work/library/themes/green02.css  \
--text="<span font='12' background='#DEC27B' foreground='black'>$sp0 Install, Token, SSH   $sp0</span>" \
--button="Edit ON":2 --button="Edit OFF":3 --button="❌":1 \
--window-icon=/home/$USER/work/library/image/icon/install.ico --search-column=1 --geometry=1030x400+360+700 \
--column=@fore@ --column=@back@ --column=@font@ \
'I. Online                                                                     ' 'black' 'red'     'sans 12' \
'                 git push -u origin master !!!!!!!!                           ' 'black' '#DEC27B' 'sans 20'

    )