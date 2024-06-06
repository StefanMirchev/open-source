#!/bin/bash 


exit


URL listen https://www.google.co.uk/
in aaa.txt 
yad --text-info < aaa.txt --show-uri

# drow 
yad --fixed --button "Cancel":1 --button "Recepty:0" --selectable-labels --geometry=10x-10+$x0+$y0 \
--text="\
<span color='black' font='15'><b> ┌─┐</b></span>
<span color='black' font='15'><b> │ │</b></span>
<span color='black' font='15'><b> └─┘</b></span>" 

  yad --fixed  --title="SAMBASHARE"  --no-buttons --no-buttons --timeout=35 \
  --text=" \
 <span color='red'   font='15'><b>  Could not display smb://192.168.0.208/</b></span>
 <span color='black' font='14'><b>        shared devices of remote PC.</b></span>" 

# EDIT 
 yad --selectable-labels 

 
# FONT 
yad --font |  sed 's/ /|/g'

# GEOMETRY
yad --form --on-top --timeout=5 --geometry="100x70-10-35" \
         --field="Shuffle Wallpaper:fbtn" 'bash -c change_wallpaper' \
         --image-on-top --no-markup --text="Click to shuffle wallpaper" \
         --undecorated --no-buttons --skip-taskbar

yad --icons --read-dir=/usr/share/applications

yad --text=example --gtkrc=<(pqiv /home/kosy/work/library/image/icon/fan.ico) 

yad --plug=$$ --tabnum=1 --list --search-column=1 \
       --item-separator=" " --column="Docs"  $(for f in $HOME/work/linux/*; do [[ -f "${f}" ]] && echo "${f##*/}"; done)  \
       --select-action="bash -c \"echo -e '\f' ; cd "$HOME/Desktop" ; cat  "%s" ; echo -e '\n' \""   \
 | yad --plug=$$ --tabnum=2 --editable --text-info --listen &
yad --width=600 --height=440 --no-buttons --on-top --paned --splitter=200 --key=$$ \
    --tab="Selector" --search --tab="Preview" --orient=horizontal

yad --form --field="Value":NUM "10[!10..200[!4[!1]]]"

yad-icon-browser

yad --ok-label examples+https://sourceforge.net/
yad --icon-name  examples+https://www.thelinuxrain.org/

yad --dialog-sep --image="/home/$USER/work/library/image/icon/call.png"  --width="700" --height="400" --center --window-icon=/home/$USER/work/library/image/icon/call.png  --icons --read-dir=$HOME/ions/dock/config --monitor --single-click --item-width=70 --sort-by-name  --title="Config Utility" --text="Please Make Your Selection\n" --button="Config" --button="Bookmarks" --button="Music" --button="Images" --button="Videos" --button="Exit":1

function on_click () {
 yad --info --text='AABBCC'
}
export -f on_click
yad --form --field "Button:BTN" "bash -c on_click"
yad --form --button="brows":"bash -c on_click"

# run bash command  

  --select-action="bash -c on_click" 

 x0=10 ; y0=10
 click_lmouse() { xdotool mousemove $(expr $x0 + 150) $(expr $y0 + 160) ; sleep 0.5 ; xdotool click 1 ; }
 export -f click_mute1
 click_lmouse &
 clr0=black
yad --fixed --button "Cancel":1 --button "Recepty:0" --selectable-labels --geometry=10x-10+$x0+$y0 \
--text="\
<span color='blue'  font='25'><b>   Saturday  </b></span>
<span color='$clr0' font='15'><b> Пиле фрикасе</b></span>
<span color='$clr0' font='15'><b> Рибена чорба</b></span>
<span color='$clr0' font='15'><b> Баница със сирене</b></span>
<span color='$clr0' font='15'><b> Крем-супа от картофи</b></span>
<span color='$clr0' font='15'><b> Доматена крем супа</b></span> 
<span color='$clr0' font='15'><b> Език с винен сос</b></span>
<span color='$clr0' font='15'><b> 111111111111111111</b></span>
<span color='$clr0' font='15'><b> 111111111111111111</b></span>
<span color='$clr0' font='15'><b> Супа топчета</b></span>" 




yad --notification --image=update.png --text "System update necessary!" --command "xterm -e apt-get upgrade"
yad --list  --column "app name"  ""  --title "apps4pi"  --select-action="bash -c on_click"


yad --selectable-labels --text="Ah ooh, now you can" 

● see for form  checkinstall
yad --form --field="combo:CB" 'test1!test2!test3'  --button="❌":1
yad --title="Desktop entry editor" --text="Simple desktop entry editor" \
--form --field="Type:CB" --field="Name" --field="Generic name" \
 --field="Comment" --field="Command:FL" --field="Icon" \
 --field="In termianl:CHK" --field="Startup notify:CHK" \
"Application!URI" "Name" "Generic name" "This is the comment" \
"/usr/bin/yad" "yad" FALSE TRUE
 yad --title="VYUU - Right-click image for viewing options" --picture --size=fit \
 --filename ~/work/library/image/hlp/doctor_00.jpg --text="aaaaaaaa" \
 --width=400 --height=300 --center --inc=256

yad --form --field="Nom" --field="Prénom" --field="Date de naissance (JJ/MM/AAAA)" > /tmp/entries
nom=$(cut -d'|' -f1 < /tmp/entries)
prenom=$(cut -d'|' -f2 < /tmp/entries)
naissance=$(cut -d'|' -f3 < /tmp/entries)
final=$( echo -e "Nom:\t$nom\nPrenom:\t$prenom\nDate:\t$naissance" \
| yad --text-info --editable --width="300" --height="200" --text="Tout est OK ?")

 yad --picture --size=orig --filename ~/work/library/image/hlp/doctor_00.jpg \
 --width=600 --height=300 --center --inc=2 --text="<b>Working...</b>" \
 --no-buttons --undecorated --text-align=center --timeout=13

# without border not taskbar  not icon 
yad --info --no-buttons  --mouse --skip-taskbar  --undecorated  --borders=5 \
 --text="<span font='14' background='#58DCE7' foreground='black'>\
 MY ARHIV                
 aaaaaaaaaaaaaaaaaaaaaaaa
 bbbbbbbbbbbbbbbbbbbbbbbb
 bbbbbbbbbbbbbbbbbbbbbbbb</span>"

 yad  --text-info --title="DICTIONARY" --button="❌":1 --back="#E5DB40" --fontname='Monospace 12' \
  --filename=$fold0/aaa.txt --editable --geometry=700x300+1200+900  

yad --html --uri=https://gist.github.com/Misko-2083/2b2fff6fbdadaf88319ff3f4196d02fa
echo "show https://google.com/ as hyperlink" | yad --text-info --show-uri


 export GTK_DEBUG=interactive 
 export GTK_THEME="Adwaita-dark"
 export GTK_THEME="~/work/library/image/hlp/doctor_00.jpg"
 export GTK_THEME="alt-dialog"
 yad --title "my title" --button "button1:1" --button "button2:2" --button "button3:3" --text "some text"

yad --title  "my title" --button "button1:1" --button  "button2:2" --button "button3:3" --text  "some text"
yad --text-info --title="$titulo" --text="Se ha producido algún error:" \
--image="dialog-error" --geometry=500x550+440+435 --fore="#a52a2a" \
 --filename=/home/kosy/work/linux/trans2.txt

yad --form --center --align=center --no-buttons \
--text " Notebook.      <b>OR</b>          <big><b>Optional</b></big> \n Please  " \
--field="Password:FBTN"       'bash -c "yad --info --text='AAAAAA'"' \
--field="Setup:FBTN" 'bash -c "yad --info --text='BBBBBB'"' \
--field="<b>I do not</b> Token:FBTN" 'bash -c "yad --info --text='CCCCCC'"' \
--field="<span font=\"Serif 17\" foreground=\"red\" background=\"yellow\">  Backup  </span>:FBTN" 'bash -c "yad --info --text='DDDDDD'"' \
--field="<big><b>Users</b></big>:LBL" '' \
--field="Click:FBTN" 'bash -c "yad --info --text='EEEEEEEE'"' \
--columns 3

C O L O R S 


 P='aaa bbb ccc ddd'
 for a in $P ;do 
 
 yad --info --text  
 COLORS=$COLORS"|#8ae|<span font='14' bgcolor='#$a$b$c'> $a </span>|<big><tt>#988</tt></big>|"
 done 

IFS=\|
yad --list  --separator='' --no-rules-hint --column= --column=dummy --search-column=1 --regex-search \
--column='512 Pastell Colors' --column=Values $COLORS --hide-column=2 --print-column=2 \
--geometry=330x600 

##8ae
##988

sleep 5


key=$$
IFS=\|
for tab in 1 2 3 ;do
  COLORS=
  case $tab in
    1) P="0|3|6|9|c|f"    header='215 "Web Safe" Colors'  ;;
    2) P="8|9|a|b|c|d|e|f"  header='512 Pastell Colors'   ;;
    3) P="0|1|2|3|4|5|6|7"  header='512 Dark Colors'    ;;
  esac
  for a in $P ;do for b in $P;do for c in $P;do
    COLORS=$COLORS"#$a$b$c|<span font='24' bgcolor='#$a$b$c'>      <span font='12' fgcolor='#000'>text</span><span font='12' fgcolor='#fff'>text</span>      </span>|<big><tt>#$a$b$c</tt></big>|"
  done;done;done
  yad --list --plug=$key --tabnum=$tab  --multiple --separator= --no-rules-hint --column=dummy\
 --column="$header"  --column=Values $COLORS & 
 #--hide-column=1 --print-column=1  &
done
yad --notebook --key=$key --tab="Web Safe" --tab="Pastell" --tab="Dark" --tab-pos=bottom  --geometry=375x600


#Change first day of week to Monday
export LC_TIME=en_GB.UTF-8
#Change to metric system
export LC_MEASUREMENT=en_GB.UTF-8
yad --calendar 


thelist=$(<mylist)
thechoice=$(yad --title="Choose a value" --width=200 --height=200 --list --column="Values" --separator="" $thelist)
exit $(yad --title="You chose..." --text=$thechoice)


------------------------
default_jpg='/';
default_mp3='/';
default_resolution='1920:1080';
default_filename="/";

OUTPUT=$(yad \
  --title="JPG and MP3 to MP4" \
  --form \
    --text="Options" \
    --separator="," \
    --field="JPG:FL" \
    --field="MP3:FL" \
    --field="Resolution" \
    --field="MP4 (Output):SFL" \
    --button="Create MP4":1 \
    "$default_jpg" \
    "$default_mp3" \
    "$default_resolution" \
    "$default_filename" \
) accepted=$?

if ((accepted == 1)); then
  jpgfile=$(echo $OUTPUT | awk 'BEGIN {FS="," } { print $1 }')
  mp3file=$(echo $OUTPUT | awk 'BEGIN {FS="," } { print $2 }')
  resolution=$(echo $OUTPUT | awk 'BEGIN {FS="," } { print $3 }')
  filename=$(echo $OUTPUT | awk 'BEGIN {FS="," } { print $4 }')
ffmpeg -r 1 -loop 1 -i "$jpgfile" -i "$mp3file" -acodec copy -r 1 -shortest -vf scale=$resolution "$filename"
#  echo $jpgfile $mp3file $resolution $filename
fi
--------------------------------


--------------------------------------------------------------------------------




 #gnome-terminal  --tab -- bash -x linux_inst.sh
 # https://funprojects.blog/2021/01/25/zenity-command-line-dialogs/
 echo "bash -x ~/work/library/linux/linux_inst.sh"  | xclip -sel clip 
 
zenity --info --no-wrap --text="TEXT" 
zenity --progress  --text="progress" --no-cancel
zenity --scale  --text="scale"
zenity --stext-info  --text="stext-info "
zenity --warning --text='<span font="32" foreground="red">HIGH Temperature</span>' --title="HDD Check" 
zenity --question --text "Are you sure you want to shutdown?"; echo $?
zenity --entry --title "Window title" --text "entry" 
       --forms  
zenity --list --checklist --text "list"   #  not 
zenity --notification --text "notification"    not 
zenity --question --title "Title" --text="<span background=\"red\">This is a test text.</span>"
zenity --list --width 500 --height 500 --column 'Wallpapers' $(ls) | xargs xsetbg -center -smooth -fullscreen
zenity --text-info --title="Background Reading" --html --url="https://www.google.com"
zenity --width=600 --height=300 --text-info --title="Records" --filename=trans1.txt --editable ... > abcd0.txt
zenity --list --text "Fill every row, and mark all rows before hitting 'OK'" --column "title" --print-column=2 --multiple --column "value" --editable "name" "(please override)" "host" "" "ip" ""


--icon-name -> https://specifications.freedesktop.org/icon-naming-spec/latest/ar01s04.html
  https://icons8.com/icon/15624/yad

zenity --info --text "<span font-family=\"impact\">essai de polices</span>"
zenity --error --text='Icon As It Is' --window-icon=/home/ --icon-name='call-start' --no-wrap
zenity --error --text='Icon As It Is' --window-icon=/home/ --icon-name= --no-wrap
zenity --height=400 --width=400 --icon-name="/home/letien/Downloads/icon.png" --info --title "Quiz " --text "ABC"
zenity --entry --title="Add your name" --text="Enter your name" --entry-text="Your name"
frmaddr=$(echo $frmdata | awk 'BEGIN {FS="|" } { print $1 }')
frmname=$(echo $frmdata | awk 'BEGIN {FS="|" } { print $2 }')

menu=("first option" "second option" "third option")
answer=`zenity --list --column=Menu "${menu[@]}" --height 170`

  dialog --backtitle "Dialog - Form sample" \
 --form " Form Test - use [up] [down] to select input field " 21 70 18 \
 "Network-ID:" 2 2 "" 2 15 20 0\
 "Subnet Mask:" 4 2 "" 4 15 20 0\


exec 3>&1
result=$(dialog --title "Choose action from menu" 21 70 18 \
       --menu "\n        Use arrows - UP/DOWN \n  \
       Press [Enter] to select\n" 20 40 10 \
       "I"       "Installation" \
       "S"       "Check system" \
       "X"       "eXit" 2>&1 1>&3);




#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# SHOW NAME VARIABLE VARIABLE 

  zenity --question --title "Title" --width=500 --height=300 \
   --text="<span font=\"17\" foreground=\"red\" >$str0</span>"
  # --text="<span foreground=\"red\" >$str0</span>"
  # --text="<span  background=\"red\">$str0</span>"
   --ok-label="CALL" --cancel-label="NO" \

zenity --info --title "Title" --width=500 --height=300 \
   --text="<span font=\"17\" color=\"blue\"  ><b>$varexp01  </b></span><span font=\"25\" color=\"green\" ><b> INSTALLED  </b></span>"

#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


  ans=$(zenity --info --title 'Choose!' \
      --text 'Choose A or B or C' \
      --ok-label A \
      --extra-button B --extra-button C \
      --timeout 3)
  rc=$?
  echo "${rc}-${ans}"


sleep 5 ; exit


 zenity --text-info \
       --title="License" \
       --filename=linux_inst.sh\
       --checkbox="I read and accept the terms."



 zenity --width=800 --height=10  --warning --text='<span font="17" foreground="red">Copy from https://github.com/StefanMirchev/myrepo -> Code</span>' --title="HDD Check"

 (
 echo "33"; echo "# 1/3 done" ; sleep 2; \
 echo "66"; echo "# 2/3 done" ; sleep 2; \
 echo "100";echo "# Finished"  \
  ) | zenity --progress --title="3 step test"


( for i in `seq 1 100`; do echo $i; echo "# $i";  sleep 1; done ) | zenity --progress


 show_cpu_temp.sh - Progress Dialog to show CPU temperature
 ----------

ans=$(zenity  --list  --text "Is linux.byexamples.com helpful?" --radiolist  --column "Pick" --column "Opinion" TRUE Amazing FALSE Average FALSE "Difficult to follow" FALSE "Not helpful"); echo $ans

------------

 echo
 "Press [CTRL+C] to stop..."
 (
 while :; do
  echo "# $(sensors | grep CPU)"
  sensors | grep CPU | awk '{print substr($2,2,4) }'
  sleep 2
 done ) | zenity --progress --title="CPU Temperature" 


array=(a b c d e)
value=$(zenity --entry --title "Window title" --text "${array[@]}" --text "Insert your choice.")


P1=$(zenity --forms --text "Employment Information" \
--title= "Employment Information" \
--add-entry="Employee Full name" \
--add-entry="Employee Username" \
--add-calendar="Date of Birth"\
--add-list="Select Department" \
--list-values="HUMAN RESOURCE|FINANCE|SALES|INFOTECH|LOGISTICS" \
--add-password="Password:" \
--add-combo="Select Education" \
--combo-values="Grade 12|Diploma|Adv. Diploma|Graduate|Masters" \
--separator=: >> emplist.txt)

P2=$(zenity --list --checklist  \
--title="Technicial Certifications" \
 --text="Select cerifications achieved:" \
 --column="Acquired" \
 --column="Certifications" FALSE "RHCSA" FALSE "RHCSE" FALSE "MCSA" FALSE "CCNA" FALSE "CCNP" FALSE "ITIL" FALSE "PMP" >> emplist.txt)


zenity --info --width 500 --height 500  --text \
"<span color=\"blue\"><b>How are you?</b></span>\n \
<span><i>Very</i> <u>well</u>, <s>and</s> <b>you</b>?</span>\n \
<span color=\"red\">Another</span> <span color=\"green\">color</span> <span color=\"blue\">test</span>\n \
<span font-family=\"serif\">Test</span> \
<span font-family=\"sans\">your</span> \
<span font-family=\"mono\">fonts</span>" 

zenity --info --width=800 --height=100 --text \
'<span color=\"blue\" font="22"><b>Certificat expired - 15.01.‎2023г. 2:00:00 </b> </span>\n \
 <span color=\"blue\" font="15"><b>1.Payment before 15.01.‎2023г. 2:00:00 </b> </span> \
 <span color=\"green\" font="15">2. Download and write on sim card after 15.01.‎2023г. 2:00:00</span>\n \
 <span color=\"red\" >NO PROBLEM</span>\n \
 \n<b>(it is also blue)</b>'


zenity --info --text "
<span color=\"red\">red</span>
<span color=\"green\">green</span>
<span color=\"blue\">blue</span>
<span color=\"yellow\">yellow</span>
<span color=\"magenta\">magenta</span>
<span color=\"white\">white</span>
<span color=\"black\">black</span>
<span color=\"gray\">gray</span>
<span color=\"lightblue\">lightblue</span>
<span color=\"lightgray\">lightgray</span>"

zenity --info --text "
<span font-family=\"Arial\">essai de polices</span>
<span font-family=\"sans-serif\">essai de polices</span>
<span font-family=\"Helvetica\">essai de polices</span>
<span font-family=\"impact\">essai de polices</span>
<span font-family=\"sans\">essai de polices</span>
<span font-family=\"webdings\">essai de polices</span>"

zenity --info --text "
<b>gras</b>
<big>grand</big>
<i>italique</i>
<s>barré</s>
<sub>indice</sub>
<sup>exposant</sup>
<small>petit</small>
<tt>espace entre les lettres</tt>
<u>souligné</u>"

zenity --info --text 'Normal <big>Big <big>Bigger</big></big>'

zenity --forms --title="Question" --add-entry="Question" &
sleep 1
window="$(xdotool search --name 'Question')"
xdotool windowactivate "$window"
xdotool type 'some text'





------------------ nachalo --------------------------------------------
cansel_toets=1
escape_toets=255
HEIGHT=0
WIDTH=0

toon_uitkomst() {
   dialog --title "$1" \
    --no-collapse \
    --ok-label "keer terug" \
    --msgbox "$uitkomst" 0 0
}

while true; do
 exec 3>&1
 selectie1=$(dialog \
   --backtitle "Computer Architectuur" \
   --title "Menu" \
   --clear \
   --cancel-label "Exit" \
   --menu "Kies 1 van volgende opties: \n (gebruikt UP en DOWN voor keuze ENTER voor te kiezen)" $HEIGHT $WIDTH 4 \
   "1" "Toon Proccesoren en cores" \
   "2" "Toon geheugen" \
   "3" "Toon USB-poorten" \
   "4" "Toon huidige belasting" \
   2>&1 1>&3)
 exit_status=$?
 exec 3>&-
 case $exit_status in
   $cansel_toets)
     clear 
     echo "Script is beëindigt"
     exit
     ;;
   $escape_toets)
     clear
     echo " Programma gesopt" >&2
     exit 1
     ;;
 esac
 case $selectie1 in
   0 )
      clear
      echo "Script is beëindigt"
      ;;
   1 )
     uitkomst=$(lscpu)
     toon_uitkomst "Proccesoren en cores :"
     ;;
   2 )
     exec 3>&1
     selectie2=$(dialog \
     --backtitle "Computer Architectuur" \
     --title "Geheugen" \
     --clear \
     --cancel-label "keer terug" \
     --menu "Kies voor RAM(1) of ROM(2):" $HEIGHT $WIDTH 4 \
     "1" "Toon harde schijf info" \
     "2" "Toon RAM geheugen" \
     2>&1 1<&3)
     exit_status2=$?
     exec 3>&-
       case $exit_status2 in
         $cansel_toets )
     clear
     echo "Script is beëindigt"
     exit
     ;;
   $escape_toets )
     ;;
   esac
   case $selectie2 in
     0 )
       clear
       echo "Script is beëindigt"
       ;;
     1 )
       uitkomst=$(lsblk)
       toon_uitkomst "Harde schijven :"
       ;;
     2 )
       uitkomst=$(free -m)
             toon_uitkomst "RAM in MB :"
       ;;
          esac
        ;;
      3 )
        uitkomst=$(lsusb)
  toon_uitkomst "Aangesloten USB-poorten :"
  ;;
      4 )
        uitkomst=$(uptime)
  toon_uitkomst "uptime van de server"
  ;;
   esac
done

---------------krai ---------------------------------------

----------------------------------------------------------

Input csv

$> cat data.csv

Mumbai,India
Chicago,USA
London,UK
New York,USA


cat data.csv | \
awk -F ',' '{
    print NR; # Print Record Number 
    for(i=1;i<=NF;i++){
        print $i; # Print Each Column separeted by Default EOL
    }
}' | \
zenity --list \
--title="Title" \
--column="Index" --column="City" --column="Country" \
--print-column=2

--------------------------------kray -------------------------




--add-entry into variable
--------------begin--------------------------------------
output=$(zenity --forms --title="Metadata field edit" --text="Metadata to create or update" --separator="," --add-combo "Metafield" --combo-values "URL|Author|Comment|Contributors|Copyright|CreateDate|EMail|Keywords|ModifyDate|OriginalDate|Phone|References|Software|Title|Address|City|Country|GPS|PostalCode|State|Altitude|Bearing|DateTime|Distance|Heading|Latitude|Longitude|Satellites|Speed" --add-entry="Metadata")
accepted=$?
if ((accepted != 0)); then
    echo "Something's wrong"
    exit 1
fi
metafield=$(gawk -F, '{ print $1 }'<<<$output)
metadata=$(gawk -F, '{ print $2 }'<<<$output)
exiftool -P -overwrite_original -$metafield=$metadata $1
---------------end -------------------------------------

--------------begin--------------------------------------
OUTPUT=$(zenity --forms --title="Add Friend" --text="Enter Multicast address" --separator="," --add-entry="IP address" --add-entry="PORT")
accepted=$?
if ((accepted != 0)); then
    echo "something went wrong"
    exit 1
fi

ip=$(awk -F, '{print $1}' <<<$OUTPUT)
port=$(awk -F, '{print $2}' <<<$OUTPUT)
---------------end -------------------------------------

begin ----------------------------------------------------------------
#!/bin/bash
# Name:iconfind.sh
# benötigt: sudo apt install rox-filer + sudo apt-get install libimage-exiftool-perl perl-doc 
#
function close_exit(){
    kill -s SIGUSR1 $YAD_PID
}
export -f close_exit
#
export fd=/home/achim/bin/icons
export TMPFILE=/tmp/yadvalues
#
function savevalues(){ 
echo -e "IMGNAME=\"$2\"\nIMGSIZE=$3\nIMGPATH=\"$4\"" > $TMPFILE 
}
export -f savevalues
#
function showinfo(){ 
source $TMPFILE ; exiv2   "$IMGPATH" 2>/dev/null 
exiftool $IMGPATH > /tmp/meta.txt 
GTK_THEME="gtk-3.0" yad --text-info --center --title=" Detailinformationen" --width=850 --height=600 \
--borders=15 --fixed --window-icon=$fd/Gnome-Dialog-Information-16.png --back=gainsboro \
--fore=black < /tmp/meta.txt fontname="Monospace 12" --button=" Schließen!$fd/Gnome-Process-Stop-32.png":1
}
export -f showinfo
#
function showinrox(){
source $TMPFILE ; rox -s  "$IMGPATH"  
}
export -f showinrox
#
function copypath(){ 
source $TMPFILE ; echo -n "$IMGPATH" | xclip -i -selection clipboard  
}
export -f copypath
#
SEP=";"

for f in /usr/share/icons/*/*/*/*.png; do     
     size=$(grep  -o "[0-9]\+x[0-9]\+" <<<"${f}")
     if [[ "$size" == "" ]]
     then
                   continue
     fi
#
     if [[ "$size" == "256" ]]
     then
                   continue
     fi
#
     if [[ "$size" == "512" ]]
     then
                   continue
     fi
#
     if [[ "$size" == "256x256" ]]
     then
                   continue
     fi
#
     if [[ "$size" == "512x512" ]]
     then
                   continue
     fi
#

printf "%s\n%s\n%s\n%s\n" "$f" "${f##*/}" "${size##*'x'}" "$f"
done | GTK_THEME="gtk-3.0" yad --list --geometry=1500x500 \
--wrap-width=300 \
--wrap-height=36 \
--window-icon="$fd/Gnome-System-Search-32.png" \
--title="  Icon-Finder" --center --borders=15 --fixed \
--select-action='bash -c "savevalues %s"' \
--column=icon:IMG \
--column=name \
--column=size: \
--column=path \
--button=" Info!$fd/Gnome-Dialog-Information-32.png":'bash -c "showinfo"' \
--button=" Zeige Standort!$fd/locale32.png":'bash -c "showinrox"' \
--button=" Pfad kopieren!$fd/copy32.png":'bash -c "copypath"' \
--button=" Beenden!$fd/Gnome-Process-Stop-32.png":1

  ac=$(echo $?)                 # Exit-Code auswerten
  
  if [[ $ac == 1 ]] || [[ $ac == 9 ]] || [[ $ac == 252 ]]; then # Taste Abbrechen gedrückt || Skript-Ende mit [X] || Skript-Ende mit [Esc]
  bash -c close_exit &>/dev/null
  exit
  fi
exit
end  ----------------------------------------------------------------


yad --list --column=text --column=@fore@ \
--column=@font@ " big red font" "green"  "Monospace 20" \
 "normal blue font" "brown" "Monospace 20"