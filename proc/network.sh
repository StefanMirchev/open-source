#!/bin/bash


 if [ $(wmctrl -l | grep 'NETWORK' 2>&1 | wc -l) -ge 1 ] ; then exit  ; fi 
  xy=$(xrandr |awk '$0 ~ "*" {print $1}') ; K0=36.1421
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2)
  X1=$(printf %.0f\\n $(echo "scale=4; (($X0-(6*$K0))*0.99)" | bc -l ))
  Y1=$(printf %.0f\\n $(echo "scale=4; (($Y0-(9*$K0))*0.45)" | bc -l )) 
  X2=$(printf %.0f\\n $(echo "scale=4; (($X0-(25.5*$K0))*0.2)" | bc -l ))
  Y2=$(printf %.0f\\n $(echo "scale=4; (($Y0-(13.5*$K0))*0.6)" | bc -l )) 
 #  if  [ -d /home/$USER/work/proc ]; then  yad --info --text "Exists" ; else yad --info --text "Not found"  ; fi
 #  if  [ -d smb://192.168.0.209/A_INTER_C ]; then  yad --info --text "Exists" ; else yad --info --text "Not found"  ; fi
 #  if  [ -d inter@192.168.0.207:/home/inter/Desktop ]; then  yad --info --text "Exists" ; else yad --info --text "Not found"  ; fi
 #  if  [ -d smb://192.168.0.206/chef/HLP/ ]; then  yad --info --text "Exists" ; else yad --info --text "Not found"  ; fi

# smbclient -L //192.168.0.207   
# /var/lib/samba/usershares
# myvar0=/home/kosy/Desktop   
# sshpass -p '3' scp -r $myvar0/* inter@192.168.0.207:/home/inter/Desktop


chek_error() { 
    if [ $? -eq 0 ]; then yad -info --text OK ; else yad -info --text FAIL ; fi ; 
             }

# tex0="<span font='15' background='#3465A4' foreground='white'>   M A I N - M E N U    </span>"
sp0=$(perl -E 'say " " x 4')   fo0="'$' '$'"
show_menus() {
app0=$(yad --fixed --list --title="NETWORK" --column="" --no-headers  --no-buttons  \
--window-icon=/home/$USER/work/library/image/icon/share_folder.ico --search-column=1 \
--geometry=220x280+$X1+$Y1 --gtkrc=/home/$USER/work/library/themes/green.css --separator="" \
--column=@fore@ --column=@back@ --column=@font@ --select-action="bash -c on_click" \
'0.EXIT                ' $fo0 'sans 11' \
'1.KOSI   192 168 0 202' $fo0 'sans 11' \
'2.STEF   192 168 0 203' $fo0 'sans 11' \
'3.KOSY   192 168 0 206' $fo0 'sans 11' \
'4.INTER  192 168 0 207' $fo0 'sans 11' \
'5.CHEF   192 168 0 208' $fo0 'sans 11' \
'6.ACCO   192 168 0 209' $fo0 'sans 11' \
'7.LENOVO U pass andrid' $fo0 'sans 11' \
'8.ME301T V pass andrid' $fo0 'sans 11' \
'9.DISK                ' $fo0 'sans 11' \
'10.HELP       ' 'white' 'green' 'sans 11'
    )
          }
   read_options(){  
               rc0=$?
   if [ $rc0 = 252 ]; then  sleep 1.0 ; killall network.sh ;  sleep 0.5  ; exit ; sleep 0.5 ; fi
       case ${app0%.*} in 
          0) sleep 1.0 ; killall network.sh ;  sleep 0.5  ; exit ; sleep 0.5 ;;
          1) nemo smb://KOSI & nemo smb://192.168.0.202/  ;;
          2) nemo smb://STEF & nemo smb://192.168.0.203/  ;;
          3) nemo smb://KOSY & nemo smb://192.168.0.206/  ;;
          4) nemo smb://CHEF & nemo smb://192.168.0.207/  ;;
          5) nemo smb://CHEF & nemo smb://192.168.0.206/  ;;
          6) nemo smb://ACCO & nemo smb://192.168.0.209 ;;
          7) echo android | nemo ftp://android@192.168.0.204:2221/ ;;
          8) echo android | nemo ftp://android@192.168.0.205:2221/ ;;
          9) yad --fixed  --title "ARHIV"  --borders=0  --geometry=10x-10+$X2+$Y2  \
--window-icon=/home/$USER/work/library/image/icon/message.ico --visible=blink \
--gtkrc=/home/$USER/work/library/themes/yellow01.css  --editable  --no-buttons   \
--text="\
<span color='black' font='12'>|    DISK   |   30   |   40   |   60   |   80   |   150  |   360  |  180   |   72   |</span>
<span color='black' font='12'>| HAND      |        |        |08.08.23|08.08.23|08.08.23|08.08.23|08.08.23|08.08.23|</span>
<span color='black' font='12'>| DISC      |21.08.23|08.08.23|08.08.23|        |        |        |        |        |</span>
<span color='black' font='12'>| HLP       |21.08.23|08.08.23|08.08.23|        |        |        |        |        |</span>
<span color='black' font='12'>| IDISK     |        |08.08.23|08.08.23|03.12.23|03.12.23|        |        |        |</span>
<span color='black' font='12'>| MUSIC-02  |        |08.08.23|        |        |        |        |        |        |</span>
<span color='black' font='12'>| PHOTO-02  |        |08.08.23|        |        |        |        |        |        |</span>
<span color='black' font='12'>| WORK      |30.11.23|30.11.23|20.08.23|03.12.23|03.12.23|        |        |        |</span>
<span color='black' font='12'>| VIBOX_SAVE|        |        |08.08.23|08.08.23|        |        |        |        |</span>
<span color='black' font='12'>| ACCOUNT   |21.08.23|21.08.23|08.08.23|08.08.23|        |        |        |        |</span>
<span color='black' font='12'>| FREE SPACE| 29.7GB | 6.5GB  |  4.3GB | 47.6GB |        |        |        |        |</span>
<span color='red'   font='15'><b></b></span >
<span color='red'   font='15'><b>   Could not display smb://192.168.0.209/       </b></span>
<span color='black' font='12'> Error: Failed to retrieve share. list from server:</span>
<span color='black' font='12'>   No route to host Please select another viewer   </span>
<span color='black' font='12'>                  and try again.                   </span>
<span color='green' font='15'><b>             CHECK MAC ADDRESS❗                </b></span>
<span color='green' font='15'><b></b></span>
<span color='black' font='14'><b>        If ok, in browser will seen all         </b></span>
<span color='black' font='14'><b>          shared devices of remote PC.          </b></span>" & ;;
     10)  yad --fixed  --title "ARHIV"  --borders=0  --geometry=10x-10+700+10  \
--window-icon=/home/$USER/work/library/image/icon/message.ico --visible=blink \
--gtkrc=/home/$USER/work/library/themes/yellow01.css  --editable  --no-buttons   \
--text="\
  <span color='black' font='14'><b>If not work restara network.sh file        </b></span>" & ;;
       esac
           }

     while true
        do          
          #  clear ; show_menus ; read_options ; show_menus ; printf $col0  
            show_menus ; read_options 
          #  sleep 2 ; exit
        done

 
