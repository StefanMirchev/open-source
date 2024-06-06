#!/bin/bash


  xy=$(xrandr |awk '$0 ~ "*" {print $1}')
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2) 
  KX_0=$(printf %.3f\\n $(echo "(($X0/37.5))" | bc -l )) 
  KY_0=$(printf %.3f\\n $(echo "(($Y0/30.5))" | bc -l ))
  X1=$(printf %.0f\\n $(echo "(($X0-(8.5*$KX_0))*0.001)" | bc -l ))
  Y1=$(printf %.0f\\n $(echo "(($Y0-(6*$KY_0))*0.95)" | bc -l ))
  X4=$(printf %.0f\\n $(echo "(($X0-(4*$KX_0))*0.13)" | bc -l ))
  Y4=$(printf %.0f\\n $(echo "(($Y0-(4  *$KY_0))*0.96)" | bc -l ))
  #X4=$(printf %.0f\\n $(echo "($X1*175)" | bc -l ))
  #Y4=$(printf %.0f\\n $(echo "($Y1*100)" | bc -l ))


  X9=$(printf %.0f\\n $(echo "(($X0-(4   *$KX_0))*0.001)" | bc -l ))
  Y9=$(printf %.0f\\n $(echo "(($Y0-(4   *$KY_0))*0.001)" | bc -l ))



  case $USER in  kosy) pass0=1 ;; inter) pass0=3 ;; chef) pass0=2 ;; esac 
   proc0='' ; shfile0='' ;  runterm0='' ; titl0='' ; geom0='' ; st0=1
   subl0=/home/$USER/work/library/sublime/sublime-text.sh
   brows0=/home/$USER/work/proc/browser.sh  ; export brs00=0
 

 sl0="sleep 1.0" ;   clip0="xclip -sel clip" ;   scv0="xdotool key Shift+Ctrl+v" 
 backs0="xdotool key BackSpace" ;  return0="xdotool key Return" ;   q0="xdotool key q" 
 all0='$clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0'

 cell0="celluloid %U " 
 if  [ -d "/home/$USER/.config/sublime-text/Local" ];  then rm -r /home/$USER/.config/sublime-text/Local ; else  echo '' ; fi 
 subl0="/opt/sublime_text/sublime_text -n "
 subl1="wmctrl -r "~/work/proc/aaa.txt" -e 12,400,150,1300,700"
 play0='ffplay -i -autoexit -nodisp'
 trem0="gnome-terminal --" 


sleep 0.5 # not delete next 4 rows
 if [ $(wmctrl -l | grep 'gitHubMenu"' 2>&1 | wc -l) -ge 1 ] ; then exit  ; fi
 if [ `ps aux | grep -i "gitmenu.sh" | grep -v "grep" | wc -l` -ge 4 ] ; then exit ; fi
 

stepdown() { sleep 1 ; for (( i = 0 ; i < $st0; ++i )); do xdotool key Down  ; done
             wmctrl -a Terminal ; }

userpass() {
        sleep 0.5 ; echo $user0 | xclip -sel clip &
        yad --info --title="User" --undecorated --no-headers --separator="" \
        --geometry=10x-10-$X9-$Y9  --button="❌":1 --timeout=0 \
        --text="<span font='18' background='green' foreground='white'> USER </span>" \
        --window-icon=/home/$USER/work/library/image/icon/usepas.ico

        sleep 0.5 ; echo $pass0 | xclip -sel clip &
        yad --info --title="Pass" --undecorated --no-headers --separator="" \
        --geometry=10x-10-$X9-$Y9  --button="❌":1 --timeout=0 \
        --text="<span font='18' background='red' foreground='white'> PASS </span>" \
        --window-icon=/home/$USER/work/library/image/icon/usepas.ico  
            }


sp0=$(perl -E 'say " " x 7')   fo0="'$' '$'"
show_menus() {
app0=$(yad --list --title="GitHubMenu" --column="" --undecorated --no-headers \
--no-buttons  --separator="" --borders=4 --search-column=1 --geometry=307x208+$X1+$Y1 \
--text="<span font='13.5' background='#06989A' foreground='white'>$sp0  Git HubU $sp0</span>"  \
--window-icon=/home/$USER/work/library/image/icon/github.ico --select-action="bash -c on_click" \
--gtkrc=/home/$USER/work/library/themes/yellow01.css \
--column=@fore@ --column=@back@ --column=@font@ \
'0. Exit                      ' $fo0 'sans 12' \
'1. Install, Token, SSH       ' $fo0 'sans 12' \
'2. Log in                    ' $fo0 'sans 12' \
'3. Manual, Examples          ' $fo0 'sans 12' \
'4. Create, delete, clone repo' $fo0 'sans 12' \
'5. Commands                  ' 'white' '#06989A' 'sans 12'
    )
#        rc0=$?
         } 

   read_options(){  
       case ${app0%.*} in 
         0) sleep 0.5; wmctrl -c "gitHubMenu" ; sleep 1.0 ;  killall gitmenu.sh ;  sleep 0.5  ; exit ; sleep 0.5  ;;
         1) submenu & ;;
         2) submenu & ;;
         3) submenu & ;;
         4) submenu & ;;
         5) submenu & ;;  
       esac
           }

   runshfile(){
         # yad --info --text="111" --no-wrap 
 aa0=$(ls -l $proc0 | cut -c1-10)
 export varexp00=$proc0
        #  yad --info --text=" a111" --no-wrap 
 if [ "$aa0" = "-rwxr--r--" ] ; then  ~/work/proc/unluck.sh  ; sleep 0.2 ;  export varexp00=''; fi

  if [ -z "$(pgrep $shfile0 2>&1)" ] ; then  echo ; else  killall $shfile0 ; fi
  if ! [ -z "$(1=1)" ] ; then  
 #     yad --info --text="333   $shfile0"
     killall $shfile0 
     fi
 
 # yad --info --text="c 1111" --no-wrap 
  if [ "$runterm0" = "t" ] ; then  $trem0 $proc0 
    # yad --info --text=" d1111" --no-wrap 
 else nohup $proc0  > /dev/null 2>&1  ; fi  # NOT RUN xdotool key Return 
   #  yad --info --text="e 1111" --no-wrap 
runterm0='' &
           }

  submenu(){
  echo ; tire0=$(perl -E 'say "_" x 36') ; sp0=$(perl -E 'say " " x 5')
    case ${app0%.*} in    # sibmenu begin
       1) 🌸 ; sleep 0.1 ; ~/work/proc/termin.sh ; sleep 1   
          while true
         do  stepdown &
sp0=$(perl -E 'say " " x 35')   fo0="'$' '$'" ; rc0=9 
app0=$(yad --list --title="Install" --undecorated --column="" --no-headers  --separator="" \
$edi0 --text-align=center  --gtkrc=/home/$USER/work/library/themes/green02.css  \
--text="<span font='12' background='#DEC27B' foreground='black'>$sp0 Install, Token, SSH   $sp0</span>" \
--button="Edit ON":2 --button="Edit OFF":3 --button="❌":1 --geometry=1030x400+360+700 \
--window-icon=/home/$USER/work/library/image/icon/install.ico --search-column=1  \
--column=@fore@ --column=@back@ --column=@font@ \
'❗ Click only over row with  ^                                                                 ^^ 1' 'black' '#DEC27B' 'Monospace 13' \
'I. Inastall git ->  git version 2.25.1                                                         ^^ 2' 'white' '#756060' 'Monospace 13' \
' a)^ case $USER in  kosy) pass0=1 ;; inter) pass0=3 ;; chef) pass0=2 ;; esac                   ^^ 3' 'black' '#DEC27B' 'Monospace 13' \
' b)^ echo $pass0 | sudo -S apt-get update                                                      ^^ 4' 'black' '#DEC27B' 'Monospace 13' \
' c)^ echo $pass0 | sudo -S apt-get install git-all                                             ^^ 5' 'black' '#DEC27B' 'Monospace 13' \
' d)^ cp ~/work/library/git/gitconfig  ~/.gitconfig                                             ^^ 6' 'black' '#DEC27B' 'Monospace 13' \
'   Log in -> Menu -> 2 -> Log in                                                               ^^ 7' 'black' '#DEC27B' 'Monospace 13' \
'II. Create Personal Access Token (PAT) on gitHub /only after Log in -> Menu -> 2 -> Log in/    ^^ 8' 'white' '#756060' 'Monospace 13' \
'   Click on right your account picture -> Scrooll to Settings ->  In left right scroll to      ^^ 9' 'black' '#DEC27B' 'Monospace 13' \
'   Developer Settings -> Personal Access Token -> Fine-grained token (Beta) ->                 ^^10' 'black' '#DEC27B' 'Monospace 13' \
'   Generate a personal access token (Give your password) -> Token name -> work ->              ^^11' 'black' '#DEC27B' 'Monospace 13' \
'   Expiration -> 08/31/2024 -> Description -> Expires on 31/08/2024 ->                         ^^12' 'black' '#DEC27B' 'Monospace 13' \
'   Public Repositories (read-only)  -> Permissions -> Account permissions                      ^^13' 'black' '#DEC27B' 'Monospace 13' \
'   -> not touch -> Overview -> not touch ->  click Generate token                              ^^14' 'black' '#DEC27B' 'Monospace 13' \
'   -> copy ->                                                                                  ^^15' 'black' '#DEC27B' 'Monospace 13' \
'                                                                                            ^^16' 'black' '#DEC27B' 'Monospace 13' \
'   -> Open with sublime_text ~/.gitconfig -> paste token                                       ^^17' 'black' '#DEC27B' 'Monospace 13' \
'    In -> token = paste -> github_pat_11AQX7XOQ0sq92dNtWpqB7......                             ^^18' 'black' '#DEC27B' 'Monospace 13' \
'III. SSH keys                                                                                  ^^19' 'white' '#756060' 'Monospace 13' \
'    1.Add github SSH Keys ->  /home/$USER/.ssh/id_rsa.pub                                      ^^20' 'black' '#DEC27B' 'Monospace 13' \
' a)^export web00=" https://github.com/settings/keys"; export brs00=1; ~/work/proc/browser.sh   ^^21' 'black' '#DEC27B' 'Monospace 13' \
' b)^ cat ~/.ssh/id_rsa.pub  | xclip -sel clip                                                  ^^22' 'black' '#DEC27B' 'Monospace 13' \
'   2. if show  @         WARNING: UNPROTECTED PRIVATE KEY FILE! @  it is because after         ^^23' 'black' '#DEC27B' 'Monospace 13' \
' a)^ ls -l /home/$USER/.ssh/id_rsa                                                             ^^24' 'black' '#DEC27B' 'Monospace 13' \
'  Result -> -rw-rw-rw- 1 inter inter  565 Sep 29  2023 id_rsa.pub                              ^^25' 'black' '#DEC27B' 'Monospace 13' \
'  Exequte ->                                                                                   ^^26' 'black' '#DEC27B' 'Monospace 13' \
' b)^ chmod 0400 /home/$USER/.ssh/id_rsa                                                        ^^27' 'black' '#DEC27B' 'Monospace 13' \
'or ^ chown $USER:$USER /home/$USER/.ssh/id_rsa                                                 ^^28' 'black' '#DEC27B' 'Monospace 13' \
' c)^ ls -l /home/$USER/.ssh/id_rsa                                                             ^^29' 'black' '#DEC27B' 'Monospace 13' \
'  if ok result -> -r-------- 1 user1 user1 2590 Oct 10 06:56 /home/inter/.ssh/id_rs            ^^30' 'black' '#DEC27B' 'Monospace 13' \
'IV. Only reas no install                                                                       ^^31' 'white' '#756060' 'Monospace 13' \
'    - API is the acronym for Application Programming Interface, which is a software            ^^32' 'black' '#DEC27B' 'Monospace 13' \
'    intermediary that allows two applications to talk to each other. Each time you             ^^33' 'black' '#DEC27B' 'Monospace 13' \
'    use an app like Facebook, send an instant message, or check the weather on your            ^^34' 'black' '#DEC27B' 'Monospace 13' \
'    phone, youre using an AP                                                                   ^^35' 'black' '#DEC27B' 'Monospace 13' \
'   -- OAuth (Open Authorization [1] [2]) is an open standard for access delegation,            ^^36' 'black' '#DEC27B' 'Monospace 13' \
'   commonly used as a way for Internet users to grant websites or applications access          ^^37' 'black' '#DEC27B' 'Monospace 13' \
'   to their information on other websites but without giving them the passwords.               ^^38' 'black' '#DEC27B' 'Monospace 13' \
'   This mechanism is used by companies such as Amazon, [5] Google, Facebook, Microsoft,        ^^39' 'black' '#DEC27B' 'Monospace 13' \
'   and Twitter to allow users to share information about their accounts with third-party       ^^40' 'black' '#DEC27B' 'Monospace 13' \
'   applications or websites.                                                                   ^^41' 'black' '#DEC27B' 'Monospace 13'
    )
               rc0=$?
   case $rc0 in
    1) sleep 0.5 ; wmctrl -c "TerminalInstall"  ;  wmctrl -c "Terminal"  ; sleep 0.5  ; exit ; sleep 0.5 ;;
    2) edi0=--editable ;;
    3) edi0= ;;
    0) clear  ; app1=$(echo $app0 | cut -d'^' -f2)  
  if [ ${app0:3:1} = ^ ] ; then
      st0=$(echo $app0 | cut -d'^' -f4) 
      sleep 0.5 ; echo "$app1 " | eval $all0  
  else 
      st0=$(echo $app0 | cut -d'^' -f3) 
  fi  
    ;; 
    esac
   done & ;; 
       2) 🌸 ; user0="si.mirchev@gmail.com";  pass0="0987abcdl234" 
            sleep 0.3 ; choice1=$(yad --fixed --list --title="SubMenu" --column="" --undecorated --no-headers \
           --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --timeout=7 \
           --no-buttons  --separator=""  --geometry=126x157+$X4+$Y4  \
          --window-icon=/home/$USER/work/library/image/icon/menu1.ico --search-column=1  \
          --text="<span font='11' background='#FFDB00' foreground='black'>   Sub Menu   </span>"\
           --column=@fore@ --column=@back@ --column=@font@ \
             '0. Exit         ' $fo0 'sans 11' \
             '1. Log in       ' $fo0 'sans 11' \
             '2. Applications ' $fo0 'sans 11' \
             '3. Explore /chat' $fo0 'sans 11' \
             '4. Repositories' 'black' '#FFDB00' 'sans 11'
                 )
            case ${choice1%.*} in
              0) wmctrl -c  SubMenu ;;
              1) 💧; export web00=" https://github.com/settings/connections/applications/Iv1.00d5b33fffc873a2" ; $brows0 & 
                  sleep 5 ; wmctrl -r "Chromium"  -e 1,400,50,1000,350 ;  userpass  & ;; 
              2) 💧; export web00=" https://github.com/join " ; $brows0 & 
                   sleep 5 ; wmctrl -r "Chromium"  -e 1,400,50,1000,350 ; userpass & ;;  
              3) 💧; export web00=" https://github.com/explore" ; $brows0 & 
                   sleep 5 ; wmctrl -r "Chromium"  -e 1,400,50,1000,350 ; userpass & ;;
              4) 💧; export web00=" https://github.com/StefanMirchev" ; $brows0 & 
                   sleep 5 ; wmctrl -r "Chromium"  -e 1,400,50,1000,350 ; userpass & ;;
            esac
      ;;     # xplore /chat:    Stefan Mirchev github Explore /ch
       3)  🌸 ;  sleep 0.3 ; choice1=$(yad --fixed --list --title="SubMenu" --column="" --undecorated --no-headers \
           --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --timeout=7 \
           --no-buttons  --separator=""  --geometry=126x132+$X4+$Y4  \
          --window-icon=/home/$USER/work/library/image/icon/menu1.ico --search-column=1  \
          --text="<span font='11' background='#FFDB00' foreground='black'>   Sub Menu   </span>"\
           --column=@fore@ --column=@back@ --column=@font@ \
             '0. Exit         ' $fo0 'sans 11' \
             '1. Menual       ' $fo0 'sans 11' \
             '2. Examples     ' $fo0 'sans 11' \
             '                ' 'black' '#FFDB00' 'sans 11'
                 )
            case ${choice1%.*} in
              0) wmctrl -c  SubMenu ;;
              1) xreader ~/work/library/git/progit_v2.1.51.pdf > /dev/null 2>&1 & ;;
              2) libreoffice --writer ~/work/library/git/examples.doc > /dev/null 2>&1 & ;;
            esac  ;; 
       4) 🌸 ;  export web00=" https://github.com/StefanMirchev?tab=repositories" ; $brows0 & 
                user0="accounting";  pass0="0987abcdl234" ;  userpass &
                sleep 0.1 ; ~/work/proc/termin.sh ; sleep 1   
          while true
         do   stepdown & 
sp0=$(perl -E 'say " " x 36')   fo0="'$' '$'" ; rc0=9 
app0=$(yad --list --title="Install" --undecorated --column="" --no-headers  --separator="" \
$edi0 --text-align=center  --gtkrc=/home/$USER/work/library/themes/green02.css  \
--text="<span font='12' background='#DEC27B' foreground='black'>$sp0  CREATE REPOSITORY  $sp0</span>" \
--button="Edit ON":2 --button="Edit OFF":3 --button="❌":1 --geometry=1030x400+360+700 \
--window-icon=/home/$USER/work/library/image/icon/install.ico --search-column=1  \
--column=@fore@ --column=@back@ --column=@font@ \
'I. Create new Repository                                                                      ^^ 1' 'white' '#756060' 'Monospace 13' \
'1. Create remote repository  -> accounting  open-source                                                  ^^ 2' 'black' '#DEC27B' 'Monospace 13' \
'    login  Main menu  -> 2 / 4  si.mirchev@gmail.com   0987abcdl234                           ^^ 3' 'black' '#DEC27B' 'Monospace 13' \
'    New->  name* -> Private -> NOT check box README.md -> Create repository                   ^^ 4' 'black' '#DEC27B' 'Monospace 13' \
' 2. Create local repository                                                                   ^^ 5' 'black' '#DEC27B' 'Monospace 13' \
' a)^ repo0=open-source ; mkdir ~/work/git/$repo0                                              ^^ 6' 'black' '#DEC27B' 'Monospace 13' \
' b)^ repo0=open-source ; cd ~/work/git/$repo0 ; ed=~/work/library/sublime/sublime-text.sh     ^^ 7' 'black' '#DEC27B' 'Monospace 13' \
' c)^ touch README.md                                                                          ^^ 8' 'black' '#DEC27B' 'Monospace 13' \
' d)^ echo "# $repo0" >> README.md                                                             ^^ 9' 'black' '#DEC27B' 'Monospace 13' \
' e)^ git init                                                                                 ^^10' 'black' '#DEC27B' 'Monospace 13' \
' f)^ git add README.md                                                                        ^^11' 'black' '#DEC27B' 'Monospace 13' \
' g)^ git add README.md  ; git commit -m " create $repo0 "                                     ^^12' 'black' '#DEC27B' 'Monospace 13' \
' h)^ git branch -M master  ^ designation as master branch                                      ^13' 'black' '#DEC27B' 'Monospace 13' \
' 3.  Connect remote with locala repository  ❗ ONLY VIA SSH ❗                                ^^14' 'black' '#DEC27B' 'Monospace 13' \
'     Never connect via https://github.com/StefanMirchev/$repo0.git                            ^^15' 'red'   '#DEC27B' 'Monospace bold 13' \
' a)^ git remote add origin git@github.com:StefanMirchev/$repo0.git                            ^^16' 'black' '#DEC27B' 'Monospace 13' \
' b)^ git push -u origin master                                                                ^^17' 'black' '#DEC27B' 'Monospace 13' \
'II. Delete Repository                                                                         ^^18' 'white' '#756060' 'Monospace 13' \
'  In delete repository -> /⋯/-> Settings -> Danger Zone -> Delete this repsitory              ^^19' 'black' '#DEC27B' 'Monospace 13' \
'  Click on-> | want to delete this repository ->                                              ^^20' 'black' '#DEC27B' 'Monospace 13' \
'  Click on-> | have read and understand these effects                                         ^^21' 'black' '#DEC27B' 'Monospace 13' \
'  Copy -> StefanMirchev/desktop -> paste in red rectangle StefanMirchev/desktop               ^^22' 'black' '#DEC27B' 'Monospace 13' \
'  Delete this repository -> pass -> 0987abcdl234 -> Confirm                                   ^^23' 'black' '#DEC27B' 'Monospace 14' \
'III. Clone Download master branch on PC  ❗ ONLY VIA SSH ❗                                   ^^24' 'white' '#756060' 'Monospace  13' \
' 1) Menu 2/4 _> Click over name repoitorie -> Click over -> SSH -> Code                       ^^25' 'black' '#DEC27B' 'Monospace  13' \
'    Copy like ->  git@github.com:StefanMirchev/accounting.git                                 ^^26' 'black' '#DEC27B' 'Monospace  13' \
' a)^ repo0=open-source ; cd ~/work/git/&repo0 ; ed=~/work/library/sublime/sublime-text.sh      ^^27' 'black' '#DEC27B' 'Monospace  13' \
' b)^ git clone git@github.com:StefanMirchev/$repo0.git                                    ^^28' 'black' '#DEC27B' 'Monospace  13' \
' c)^ ls ~/work/git                                                                            ^^29' 'black' '#DEC27B' 'Monospace  13' \
' d)^ cd ~/work/git                                                                            ^^30' 'black' '#DEC27B' 'Monospace  13' \
' 2. if show  @         WARNING: UNPROTECTED PRIVATE KEY FILE! @  it is because after          ^^31' 'black' '#DEC27B' 'Monospace 13' \
' a)^ ls -l /home/$USER/.ssh/id_rsa                                                            ^^32' 'black' '#DEC27B' 'Monospace 13' \
'  Result -> -rw-rw-rw- 1 inter inter  565 Sep 29  2023 id_rsa.pub                             ^^33' 'black' '#DEC27B' 'Monospace 13' \
'  Exequte ->                                                                                  ^^34' 'black' '#DEC27B' 'Monospace 13' \
' b)^ chmod 0400 /home/$USER/.ssh/id_rsa                                                       ^^35' 'black' '#DEC27B' 'Monospace 13' \
'or ^ chown $USER:$USER /home/$USER/.ssh/id_rsa                                                ^^36' 'black' '#DEC27B' 'Monospace 13' \
' c)^ ls -l /home/$USER/.ssh/id_rsa                                                            ^^37' 'black' '#DEC27B' 'Monospace 13' \
'  if ok result -> -r-------- 1 user1 user1 2590 Oct 10 06:56 /home/inter/.ssh/id_rs           ^^38' 'black' '#DEC27B' 'Monospace 13' \


    )
               rc0=$?
   case $rc0 in
    1) sleep 0.5 ; wmctrl -c "TerminalInstall"  ;  wmctrl -c "Terminal"  ; sleep 0.5  ; exit ; sleep 0.5 ;;
    2) edi0=--editable ;;
    3) edi0= ;;
    0) clear  ; app1=$(echo $app0 | cut -d'^' -f2)  

  if [ ${app0:3:1} = ^ ] ; then
      st0=$(echo $app0 | cut -d'^' -f4) 
      sleep 0.5 ; echo "$app1 " | eval $all0  
  else 
      st0=$(echo $app0 | cut -d'^' -f3) 
  fi  
    ;; 
    esac
   done & ;; 
        5) 🌸 ;  sleep 0.1 ; ~/work/proc/termin.sh ; sleep 1  
       
 while true
         do   
         stepdown &                                      
sp0=$(perl -E 'say " " x 42')   fo0="'$' '$'" ; rc0=9 
app0=$(yad --list --title="PHP_commands" --undecorated --column="" --no-headers --separator="" \
$edi0 --text-align=center  --gtkrc=/home/$USER/work/library/themes/green02.css  \
--text="<span font='12' background='#DEC27B' foreground='black'>$sp0 Commands $sp0</span>" \
--button="Edit ON":2 --button="Edit OFF":3 --button="❌":1 --geometry=1030x600+315+600 \
--window-icon=/home/$USER/work/library/image/icon/install.ico --search-column=1 \
--column=@fore@ --column=@back@ --column=@font@ \
"I. Add file/folder to stage /tracked/ -> git add ->  git commit -m '   ' -> git status        ^^ 1" 'white' '#756060' 'Monospace 13' \
"   git commit -m -> avoid opening the editor to edit your commit message, in '   '            ^^ 2" 'white' '#756060' 'Monospace 13' \
'   git add . = git commit -а                                                                  ^^ 3' 'black' '#DEC27B' 'Monospace 13' \
' a)^ repo0=open-source ; cd ~/work/git/$repo0  ; ed=~/work/library/sublime/sublime-text.sh                    ^^ 4' 'black' '#DEC27B' 'Monospace 13' \
' b)^ touch a.a  ^ create a.a                                                                   ^ 5' 'black' '#DEC27B' 'Monospace 13' \
' c)^ git status ^ displays the state of the working directory and the staging area             ^ 6' 'black' '#DEC27B' 'Monospace 13' \
' d)^ git add a.a ^ new files -> add to stage /tracking /index                                  ^ 7' 'black' '#DEC27B' 'Monospace 13' \
' f)^ git restore a.a --staged ^❗retoere /unstage /tracking  /back add/ -> lost all changes!!! ^ 8' 'black' '#DEC27B' 'Monospace 13' \
' g)^ git reset a.a            ^❗or retoere /unstage /untracking  /back add/                   ^ 9' 'black' '#DEC27B' 'Monospace 13' \
' h)^ git rm --cached a.a      ^❗or retoere /unstage /untracking  /back add/                   ^10' 'black' '#DEC27B' 'Monospace 13' \
' i)^ rm a.a ^ ❗retoere /unstage /untracking  /back add/ -> second time delete file            ^11' 'black' '#DEC27B' 'Monospace 13' \
'II.  Git commit ->  Never git commit before git add                                           ^^12' 'white' '#756060' 'Monospace 13' \
' a)^ git commit -m "reas" ^ What changes                                                       ^13' 'black' '#DEC27B' 'Monospace 13' \
' b)^ git log ^ Show history of commits in this repo -> Press q                                 ^14' 'black' '#DEC27B' 'Monospace 13' \
' c)^ git log --pretty=format:"%C(auto)-%h  %an  %ad %s-%C(auto)%d%Creset"                     ^^15' 'black' '#DEC27B' 'Monospace 13' \
' d)^ git log --pretty=format:"%C(auto)-%H  %an  %ad %s-%C(auto)%d%Creset"                     ^^16' 'black' '#DEC27B' 'Monospace 13' \
' e)^ git show --raw 8db3d959e3e6cbd51c1cb1e66c506e8b71f2db4a  ^ show containt commit           ^17' 'black' '#DEC27B' 'Monospace 13' \
' f)^ echo "# $repo0" >> a.a  ^ edit a.a                                                    ^18' 'black' '#DEC27B' 'Monospace 13' \
' g)^ cat a.a ^ read a.a                                                                        ^19' 'black' '#DEC27B' 'Monospace 13' \
' h)^ git reset --hard ^ Restores changes to last commit /stage/                                ^20' 'black' '#DEC27B' 'Monospace 13' \
'III.  Git branch                                                                              ^^21' 'white' '#756060' 'Monospace 13' \
' a)^ git branch a01   ^ create branch a01                                                      ^22' 'black' '#DEC27B' 'Monospace 13' \
' b)^ git branch       ^ show all locala branch -> in green with * curren t                     ^23' 'black' '#DEC27B' 'Monospace 13' \
' c)^ git branch -a    ^ show all branch, in red remote branch                                  ^24' 'black' '#DEC27B' 'Monospace 13' \
'     Before switching branch  git status must be -> working tree clean                         ^25' 'black' '#DEC27B' 'Monospace 13' \
' d)^ git checkout a01 ^ Switched to branch a01                                                 ^26' 'black' '#DEC27B' 'Monospace 13' \
' e)^ git branch -d a01 ^ Delete branch only after merge                                        ^27' 'black' '#DEC27B' 'Monospace 13' \
' f)^ git branch -D a01 ^ Delete the branch in any case, without merge branch                   ^28' 'black' '#DEC27B' 'Monospace 13' \
'IV. Git diff  difftool  merge  mergetool                                                      ^^29' 'white' '#756060' 'Monospace 13' \
' Before exequte commands IV. go to master branch.                                             ^^30' 'red'   '#DEC27B' 'Monospace bold 13' \
' a)^ git checkout master                                                                      ^^31' 'black' '#DEC27B' 'Monospace 13' \
' b)^ git diff --staged            ^ after git add                                              ^32' 'black' '#DEC27B' 'Monospace 13' \
' c)  git diff d3c88c5 73a46b8       NOT USE  between tow commit                               ^^33' 'black' '#DEC27B' 'Monospace 13' \
' d)^ git difftool db16792 cb13cc9 ^ must be install Beyond Compare                             ^34' 'black' '#DEC27B' 'Monospace 13' \
' d)^ git difftool remotes/origin/master a01 -- a.a ^ tow branches                              ^35' 'black' '#DEC27B' 'Monospace 13' \
' d)^ git difftool origin/master -- a.a ^ remote and local branch                               ^36' 'black' '#DEC27B' 'Monospace 13' \
' e)^ git merge a01                ^ merge from branch a01                                      ^37' 'black' '#DEC27B' 'Monospace 13' \
' f)^ git merge cb13cc9            ^ merge from commit cb13cc9                                  ^38' 'black' '#DEC27B' 'Monospace 13' \
' g)^ git mergetool                ^ ❗work ONLY after git merge❗                              ^39' 'black' '#DEC27B' 'Monospace 13' \
' g)^ git branch --no-merged       ^  check branch no merge                                     ^40' 'black' '#DEC27B' 'Monospace 13' \
' V. Git fetch git pull  ->  git pull = git fetch + git merge                                  ^^41' 'white' '#756060' 'Monospace 13' \
' a)^ git remote show origin  ^ origin -> name remote server/repo View a remote repository      ^42' 'black' '#DEC27B' 'Monospace 13' \
' b)  git fetch   NOT USE                                                                       ^43' 'black' '#DEC27B' 'Monospace 13' \
' c)^ git pull   ^ git pull = git fetch + git merge locala from remote branch                   ^44' 'black' '#DEC27B' 'Monospace 13' \
' VI. Git Push                                                                                 ^^45' 'white' '#756060' 'Monospace 13' \
'     Git Push never make merge in remote server/repo                                          ^^46' 'red'   '#DEC27B' 'Monospace bold 13' \
'     The option -u is for ＂set upstream＂. It configures the local branch                     ^^47' 'red'   '#DEC27B' 'Monospace bold 13' \
'     to track the remote branch. You do not need to use it more than once.                    ^^48' 'red'   '#DEC27B' 'Monospace bold 13' \
'     Never push file containt SSH key toke -> gitmenu.sh , gitconfig and others               ^^49' 'red'   '#DEC27B' 'Monospace bold 13' \
' a)^ git push -u origin master                                                                ^^50' 'black' '#DEC27B' 'Monospace 13' \
' b)^ git push -u origin master/invo03                                                         ^^51' 'black' '#DEC27B' 'Monospace 13' \
'VII Finish                                                                                    ^^52' 'white' '#756060' 'Monospace 13' \
' b)^ git reset --hard HEAD~1  ^ Delete last kommit                                             ^53' 'black' '#DEC27B' 'Monospace 13' \
'VIII Finish                                                                                   ^^54' 'white' '#756060' 'Monospace 13' \
' a)^ git checkout  ^                                                                           ^55' 'black' '#DEC27B' 'Monospace 13' \
' ● ● = unmodified                                                                             ^^56' 'black' '#DEC27B' 'Monospace 13' \
'M = modified                                                                                  ^^57' 'black' '#DEC27B' 'Monospace 13' \
'T = file type changed (regular file, symbolic link or submodule)                              ^^58' 'black' '#DEC27B' 'Monospace 13' \
'A = added                                                                                     ^^59' 'black' '#DEC27B' 'Monospace 13' \
'D = deleted                                                                                   ^^60' 'black' '#DEC27B' 'Monospace 13' \
'R = renamed                                                                                   ^^61' 'black' '#DEC27B' 'Monospace 13' \
'C = copied (if config option status.renames is set to "copies")                               ^^62' 'black' '#DEC27B' 'Monospace 13' \
'U = updated but unmerged                                                                      ^^63' 'black' '#DEC27B' 'Monospace 13' \
    )
               rc0=$?
   case $rc0 in
    1) sleep 0.5 ; wmctrl -c "TerminalInstall"  ;  wmctrl -c "Terminal"  ; sleep 0.5  ; exit ; sleep 0.5 ;;
    2) edi0=--editable ;;
    3) edi0= ;;
    0) clear  ; app1=$(echo $app0 | cut -d'^' -f2)  

  if [ ${app0:3:1} = ^ ] ; then
      st0=$(echo $app0 | cut -d'^' -f4) 
      sleep 0.5 ; echo "$app1 " | eval $all0  
  else 
      st0=$(echo $app0 | cut -d'^' -f3) 
  fi  
   #   yad --imfo --text "dddddddddddddddddd  $st0 "

    ;; 
    esac
   done & ;;

       7)  🌸 ;;

    esac # sibmenu end
      }
 
     while true
        do          
          #  clear ; show_menus ; read_options ; show_menus ; printf $col0  
            show_menus ; read_options 
          #  sleep 2 ; exit
        done


######################### F U  N  C  T  I O  n  #########################################

#echo '$edi index.html    ' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0  & ;;




 