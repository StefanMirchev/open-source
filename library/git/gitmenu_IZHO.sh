#!/bin/bash


  user0="n" ;  pass0="n"
  sl0="sleep 1.0" ;   clip0="xclip -sel clip" ;   scv0="xdotool key Shift+Ctrl+v"  ; 
  backs0="xdotool key BackSpace" ;  return0="xdotool key Return" 
  chnterm0="sleep 0.5 ; xdotool keydown alt key Tab ; sleep 0.5 ; xdotool keyup alt"
  b1=''
  bran0='' ; mousx=1000 ; mousy=350 ; app0=0 ; choice1=0
  subl0=~/work/library/sublime/sublime-text.sh 
  proc0=git ; export varexp01=$proc0 ;  ~/work/proc/checkproc.sh  ; sleep 0.2 
  subl0=~/work/library/sublime/sublime-text.sh 
  brows0="/opt/chromium/chrome-wrapper  --new-window" 

show_menus() {
sp0=$(perl -E 'say " " x 8')   fo0="'$' '$'"
app0=$(yad --list --title="GitHubMenu" --column="" --undecorated --no-headers  --no-buttons  \
--separator=""  --gtkrc=/home/$USER/work/library/themes/yellow01.css  \
--text="<span font='13' background='#06989A' foreground='white'>$sp0  Git Hub $sp0</span>" \
--window-icon=/home/$USER/work/library/image/icon/menu.ico --search-column=1 --geometry=290x435+2+600 \
--column=@fore@ --column=@back@ --column=@font@ \
'0. Exit                      ' $fo0 'sans 11' \
'1. Install, Token, SSH       ' $fo0 'sans 11' \
'2. Log in                    ' $fo0 'sans 11' \
'3. Manual Commands Examples  ' $fo0 'sans 11' \
'4. Create /delete repository ' $fo0 'sans 11' \
'5. Clone                     ' $fo0 'sans 11' \
'6. Status                    ' $fo0 'sans 11' \
'7. Checkout ⮕ write branch  ' $fo0 'sans 11' \
'8. Add + commit -m           ' $fo0 'sans 11' \
'11. Edit b123 branch         ' $fo0 'sans 11' \
'12. Read only master branch  ' $fo0 'sans 11' \
'14. Difftool - b123 master   ' $fo0 'sans 11' \
'15. Mergetool master from b12' $fo0 'sans 11' \
'16. cd ~/work/git/myrepo     ' $fo0 'sans 11' \
'17. History repository       ' $fo0 'sans 11' \
'18. gitk                     ' 'white' '#06989A' 'sans 11' 
    )
          }


    read_options(){
#     currentbranch ; sleep 0.2 ;  mouseset  
case ${app0%.*} in 
0) sleep 0.5; wmctrl -c "SubMenu" ; sleep 1.0 ; wmctrl -c "GitHubMenu" ; sleep 0.5  ; exit ; sleep 0.5 ;;    
1) sleep 0.1 ; ~/work/proc/termin.sh ; wmctrl -r "TerminalInstall"  -e 1,300,10,1100,200 ; sleep 1 ; edi0=''
    while true
         do        
sp0=$(perl -E 'say " " x 35')   fo0="'$' '$'" ; rc0=9 
app0=$(yad --list --title="Install" --column="" --no-headers   --separator=""  \
$edi0 --text-align=center  --gtkrc=/home/$USER/work/library/themes/green02.css  \
--text="<span font='12' background='#DEC27B' foreground='black'>$sp0 Install, Token, SSH   $sp0</span>" \
--button="Edit ON":2 --button="Edit OFF":3 --button="❌":1 \
--window-icon=/home/$USER/work/library/image/icon/install.ico --search-column=1 --geometry=1030x400+360+700 \
--column=@fore@ --column=@back@ --column=@font@ \
'❗ Click only over row begin ❱❱❱ then whill execute in Terminal.❗                            ' $fo0 'sans 13' \
'1. Inastall git ⮕  git version 2.25.1                                                         ' $fo0 'sans 12' \
'❱❱❱: sudo apt-get update  sudo apt-get install git-all :                                      ' $fo0 'sans 12' \
'❱❱❱: cp ~/work/library/git/gitconfig  ~/.gitconfig :                                          ' $fo0 'sans 12' \
'   Log in ⮕ Menu ⮕ 2 ⮕ Log in                                                               ' $fo0 'sans 12' \
'2. Create Personal Access Token (PAT) on GitHub /only after Log in ⮕ Menu ⮕ 2 ⮕ Log in/     ' $fo0 'sans 12' \
'   Click on right your account picture ⮕ Scrooll to Settings ⮕  In left right scroll to      ' $fo0 'sans 12' \
'   Developer Settings ⮕ Personal Access Token ⮕ Fine-grained token (Beta) ⮕                 ' $fo0 'sans 12' \
'   Generate a personal access token (Give your password) ⮕ Token name ⮕ work ⮕              ' $fo0 'sans 12' \
'   Expiration ⮕ 08/31/2024 ⮕ Description ⮕ Expires on 31/08/2024 ⮕                          ' $fo0 'sans 12' \
'   Public Repositories (read-only)  ⮕ Permissions ⮕ Account permissions                      ' $fo0 'sans 12' \
'   ⮕ not touch ⮕ Overview ⮕ not touch ⮕  click Generate token                               ' $fo0 'sans 12' \
'   ⮕ copy ⮕                                                                                  ' $fo0 'sans 12' \
' ' $fo0 'sans 12' \
'   ⮕ Open with sublime_text ~/.gitconfig ⮕ paste token                                      ' $fo0 'sans 12' \
'3.  GitHub pages                                                                              ' $fo0 'sans 13' \
'  - Log in GitHub:                                                                            ' $fo0 'sans 12' \
'   https://github.com/settings/connections/applications/Iv1.00d5b33fffc873a2;                 ' $fo0 'sans 12' \
'  - Github Applications:                                                                      ' $fo0 'sans 12' \
'   https://github.com/join;                                                                   ' $fo0 'sans 12' \
'  - Explore /chat:                                                                            ' $fo0 'sans 12' \
'   https://github.com/explore;  Stefan Mirchev github Explore /chat                           ' $fo0 'sans 12' \
'4. If not install ⮕ gitk ⮕  sudo apt-get update   sudo apt-get install gitk                 ' $fo0 'sans 12' \
'5. Only reas no install                                                                       ' $fo0 'sans 12' \
'    - API is the acronym for Application Programming Interface, which is a software           ' $fo0 'sans 12' \
'    intermediary that allows two applications to talk to each other. Each time you            ' $fo0 'sans 12' \
'    use an app like Facebook, send an instant message, or check the weather on your           ' $fo0 'sans 12' \
'    phone, youre using an AP                                                                  ' $fo0 'sans 12' \
'   -- OAuth (Open Authorization [1] [2]) is an open standard for access delegation,           ' $fo0 'sans 12' \
'   commonly used as a way for Internet users to grant websites or applications access         ' $fo0 'sans 12' \
'   to their information on other websites but without giving them the passwords.              ' $fo0 'sans 12' \
'   This mechanism is used by companies such as Amazon, [5] Google, Facebook, Microsoft,       ' $fo0 'sans 12' \
'   and Twitter to allow users to share information about their accounts with third-party      ' $fo0 'sans 12' \
'   applications or websites. "                                                                ' 'black' '#DEC27B' 'sans 12'
    )
               rc0=$?
   case $rc0 in
    1) sleep 0.5 ; wmctrl -c "TerminalInstall"  ;  wmctrl -c "Terminal"  ; sleep 0.5  ; exit ; sleep 0.5 ;;
    2) edi0=--editable ;;
    3) edi0= ;;
  0) if [ "${app0:0:3}"="❱❱❱" ] ; then
          sleep 2 ; echo " $(echo $app0 | cut -d':' -f2) " | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; fi ;;
   esac
        done &  ;;
2) web0=" https://github.com/settings/connections/applications/Iv1.00d5b33fffc873a2" ; $brows0 $web0 > /dev/null 2>&1  &
   sleep 5 ; wmctrl -r "Chromium"  -e 1,400,50,1000,350 ; sleep 0.2 ; edi0=''
   user0="si.mirchev@gmail.com";  pass0="0987abcdl234" ; submenu  ;;
3) submenu & ;;
4) reposi & ;;     
5) user0="si.mirchev@gmail.com";  pass0="0987abcdl234" ; submenu & ;;
#6) chnterm  ; echo "git status"       | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; \
#   $return0 & ;;
#7) chnterm  ; sleep 0.5 ; echo "git checkout "    | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0  & ;;
#8)  mousx=1000 ; mousy=1000 ; sleep 0.5 ; mouseset ; 
#   echo "ggit add . git commit -m '01'" | $clip0 ; $sl0 ; $scv0 ;cd ~/work/git ; $backs0 ; $return & ;; 
#9) ;;
#10) ;;
#11) chnterm ; currentbranc
#echo 'git checkout b123  ' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0  ; 
#echo '$edi index.html    ' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0  & ;;
#       12) chnterm
#echo 'git checkout master' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0  ; 
#echo '$edi index.html '    | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0  & ;;   
##    echo "git branch -a"           | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0 & ;;
#14) cd ~/work/git/myrepo  ;  currentbranch & 
#     
#     # a1check0=$(git checkout b123) > /dev/null 2>&1 
#      git checkout b123 > /dev/null 2>&1 
#      a1=$(git log -1 b123 --pretty=format:'%h')
#      zenity --info  --no-wrap  --title='' --text 111 $a1
#
#     # b1check0=$(git checkout master) > /dev/null 2>&1 
#      git checkout master > /dev/null 2>&1 
#      b1=$(git log -1 master --not b123 --pretty=format:'%h')
#      zenity --info  --no-wrap  --title='' --text 222 '$b1 ' 
#      echo & ;;
#
#
#
#
##  echo 'git checkout b123  ' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0  ; 
##  echo 'a1=$(git log -5 --skip 0 --pretty=format:"%h")' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0  ;  
##  echo 'git checkout master' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0  ; 
##  echo 'b1=$(git log -5 --skip 0 --pretty=format:"%h")' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0  ; 
##  echo 'git difftool $a1 $b1 & '    | $clip0 ;  $sl0 ; $scv0 ; $sl0 ; $return0 & 
## # zenity --info --title="Difftool" --no-wrap --text="  $a1 $b1     "  
## echo 'zenity --info  --no-wrap  --title='Difftool' --text="<span font='13' foreground='blue' > \
## <b>What doed Program:                               
## 1 Checkout b123  , master   \t
## 2 Git log last commits b123 to a1 , master to b1  \t
## 3 Git difftool $a1 $b1 - compare last commits </b> </span>" > /dev/null 2>&1 & ' \
## | $clip0 ;  $sl0 ; $scv0 ; $sl0 ; $return0  & ;;
#
#15) chnterm  
##echo 'git checkout b123  ' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0  ; 
##echo 'git status b123    ' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0  ; 
# echo 'git checkout master' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0  ; 
##echo 'git status         ' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0  ; 
# echo 'git mergetool b123'  & ;;   
#16) chnterm 
# gnome-terminal --geometry=130x10+280+780 ; $sl0 & 
# echo 'cd ~/work/git/' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0 & 
# echo 'cd ~/work/git/myrepo' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0 & 
# echo $chnterm0 | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0  &  ;;
# 
#17) # chnterm 
#     cd ~/work/git/myrepo
#     bran0=$(git branch -a)
#     ab0=$(git log -5 --pretty=format:'%C(auto)%h  %an  %ad %s-%C(auto)%d%Creset' --date=format:'%Y-%m-%d %H:%M:%S')
#
#     a1=$(git log -1 b123 --pretty=format:'%h')
#     a1check0=$(git checkout b123) > /dev/null 2>&1 
#     a1check1=$(git checkout b123 2>&1 >/dev/null)
#     # zenity --info  --no-wrap  --title='' --text 111  $a1check0
#     a1commi0=$(git log -5 b123 --pretty=format:'%C(auto)%h  %an  %ad %s-%C(auto)%d%Creset' --date=format:'%Y-%m-%d %H:%M:%S')
#     a1ls0=$(ls)
#     a1stat0=$(git status)
#     git status >     ~/work/aaa.txt
#     sed -i 's/"/ /g' ~/work/aaa.txt
#     sed -i "s/'/ /g" ~/work/aaa.txt
#     sed -i "s/</ /g" ~/work/aaa.txt
#     sed -i "s/>/ /g" ~/work/aaa.txt
#     a1stat0=`cat     ~/work/aaa.txt`
#    
#     git show --raw --pretty=format:'%h' $a1 >     ~/work/aaa.txt
#     sed -i 's/"/ /g' ~/work/aaa.txt
#     sed -i "s/'/ /g" ~/work/aaa.txt
#     sed -i "s/</ /g" ~/work/aaa.txt
#     sed -i "s/>/ /g" ~/work/aaa.txt
#     a1show0=`cat     ~/work/aaa.txt`
#     
#   
#
#     b1=$(git log -1 master --not b123 --pretty=format:'%h')
#     b1check0=$(git checkout master) > /dev/null 2>&1 
#     b1check1=$(git checkout master 2>&1 >/dev/null) > /dev/null 2>&1 
#    # zenity --info  --no-wrap  --title='' --text 222  
#     b1commi0=$(git log -5 master --not b123 --pretty=format:'%C(auto)%h  %an  %ad %s-%C(auto)%d%Creset' --date=format:'%Y-%m-%d %H:%M:%S')
#     b1ls0=$(ls)
#     git status >     ~/work/aaa.txt
#     sed -i 's/"/ /g' ~/work/aaa.txt
#     sed -i "s/'/ /g" ~/work/aaa.txt
#     sed -i "s/</ /g" ~/work/aaa.txt
#     sed -i "s/>/ /g" ~/work/aaa.txt
#     b1stat0=`cat     ~/work/aaa.txt`
#
#     git show --raw --pretty=format:'%h' $b1   >  ~/work/aaa.txt
#     sed -i 's/"/ /g' ~/work/aaa.txt
#     sed -i "s/'/ /g" ~/work/aaa.txt
#     sed -i "s/</ /g" ~/work/aaa.txt
#     sed -i "s/>/ /g" ~/work/aaa.txt
#     b1show0=`cat     ~/work/aaa.txt`
#     rm ~/work/aaa.txt
#
#    # b1=$(git log -5 --not b123 --pretty=format:'%C(auto)%h  %an  %ad %s-%C(auto)%d%Creset' --date=format:'%Y-%m-%d %H:%M:%S')
##  git log -5 b123 --not master --pretty=format:'%C(auto)%h  %an  %ad %s-%C(auto)%d%Creset' --date=format:'%Y-%m-%d %H:%M:%S'
## echo "git log -5 --pretty=format:'%C(auto)%h  %an  %ad %s-%C(auto)%d%Creset' --date=format:'%Y-%m-%d %H:%M:%S'" \
##| $clip0 ;  $sl0 ; $scv0 ; $sl0 ; $return0 
# 
# 
#zenity --info  --no-wrap  --title='History Repository 1' --text \
#"<span font='13' foreground='black'><b> $(perl -E 'say " " x 40') History Repository 1</b></span> \t
# <span font='13' foreground='black'><b>1. git branch -a ⮕ All Branches a1+b1</b></span> \t
# <span font='13' foreground='red'><b>$bran0</b></span> \t
# <span font='13' foreground='black'><b>2. git log ⮕ Last 5 commits  master + b123</b></span> \t
# <span font='13' foreground='green'><b>$ab0</b></span> \t
#
# <span font='13' foreground='black'><b>3. Master</b></span> \t
# <span font='13' foreground='black'><b>-checkout master </b></span> \t
# <span font='13' foreground='yellow' background='red'><b>$b1check0</b></span> \t
# <span font='13' foreground='yellow' background='red'><b>$b1check1</b></span> \t
# <span font='13' foreground='black'><b>-git log ⮕ Last 5 commit to b1</b></span> \t
# <span font='13' foreground='green'><b>$b1commi0</b></span> \t  
# <span font='13' foreground='black'><b>-ls ⮕ Containt </b></span> \t
# <span font='13' foreground='blue'><b>$b1ls0</b></span> \t  
#
# <span font='13' foreground='black'><b>4. Branch b123 </b></span> \t
# <span font='13' foreground='black'><b>-checkout b123 </b></span> \t
# <span font='13' foreground='yellow' background='red' ><b>$a1check0</b></span> \t 
# <span font='13' foreground='yellow' background='red' ><b>$a1check1</b></span> \t 
# <span font='13' foreground='black'><b>-git log ⮕ Last 5 commits to a1</b></span> \t
# <span font='13' foreground='green'><b>$a1commi0</b></span> \t 
# <span font='13' foreground='black'><b> -ls⮕Containt - </b></span> \t
# <span font='13' foreground='blue'><b>$a1ls0</b></span>"  \t &
# sleep 0.5 ; wmctrl -r "History Repository 1"  -e 1,14,14,0,0 ; sleep 0.2 &
#
#sleep 1
#
# 
#zenity --info  --no-wrap  --title='History Repository 2' --text \
#"<span font='13' foreground='black'><b>$(perl -E 'say " " x 20') History Repository 2 </b></span> \t
# <span><b></b></span> \t
# <span font='13' foreground='black'><b>1.Master ⮕ git status master</b></span> \t
# <span font='13' foreground='purple'><b>$b1stat0</b></span> \t
# <span><b></b></span> \t
# <span font='13' foreground='black'><b>2.b123 ⮕ git status b123</b></span> \t
# <span font='13' foreground='purple'><b>$a1stat0</b></span>" \t  & 
#
#sleep 1
#
#zenity --info  --no-wrap  --title='History Repository 3' --text \
#"<span font='13' foreground='black'><b>$(perl -E 'say " " x 20') History Repository 3 </b></span> \t
# <span><b></b></span> \t
# <span font='13' foreground='black'><b>1.Master ⮕ git show --raw last commit</b></span> \t
# <span font='13' foreground='brown'><b>$b1show0</b></span> \t
# <span><b></b></span> \t
# <span font='13' foreground='black'><b>2.b123 ⮕ git show --raw last commit</b></span> \t
# <span font='13' foreground='brown'><b>$a1show0</b></span>" \t &
#  sleep 0.5 ; wmctrl -r "History Repository 3"  -e 1,900,700,0,0 ; sleep 0.2 & ;;
#
#
## <span font='13' foreground='black'><b>5 Git difftool $a1 $b1 - compare last commits </b></span>" > /dev/null 2>&1   & ;;
## --no-wrap
## echo 'zenity --info  --no-wrap  --title='Difftool' --text \
## "<span font='13' foreground='black'><b>          History Repository</b></span> \t 
##  <span font='13' foreground='black'><b>1 All Branches</b></span> \t
##  <span font='13' foreground='red'><b> $bran0 </b></span> \t
##  <span font='13' foreground='blue'><b>2 Last 5 commits b123 to a1</b></span> \t
##  <span font='13' foreground='blue'><b>$a1 </b></span> \t
##  <span font='13' foreground='blue'><b>3 Last 5 master to b1</b></span> \t
##  <span font='13' foreground='blue'><b>3 Git difftool $a1 $b1 - compare last commits </b></span>" > /dev/null 2>&1 & ' \
## | $clip0 ;  $sl0 ; $scv0 ; $sl0 ; $return0  & ;;
#
# 
#
#18) chnterm ; echo 'gitk &' | $clip0 ;  $sl0 ; $scv0 ; $sl0 ; $return0 & ;; 


       esac
           }   


# currentbranch(){
#    sleep 1
#    cd ~/work/git/myrepo > /dev/null 2>&1
#    wmctrl -c "Branch" ; sleep 0.3
#     zenity --info  --width 190 --height 3 --title "Branch" --text \
#    "<span font='13' foreground='black'><b>Current branch</b></span> \t
#    <span font='13' foreground='black'><b> *</b></span> \
#    <span font='15' foreground='red'><b>$(git branch --show-current)</b></span>" &
#    sleep 0.5 ; wmctrl -r "Branch"  -e 1,4,850,190,3 ; sleep 0.2  
#    # sleep 0.5 ; xdotool keydown alt key Tab ; sleep 0.5 ; xdotool keyup alt ; $return0 
# if [ `git branch --list myrepo` ];  then
#     zenity --info  --width 190 --height 3  --text "Yes branch myrepo"
# else 
#     zenity --info  --width 190 --height 3  --text "NO branch myrepo"
# fi ;  sleep 1
#
#                } 

   pause(){
  # read -n1 -p " Press [Enter] key to continue..." 
  # while read -rsn1 k 
  read   -p " Press [Enter] key to continue..." fackEnterKey
       }
  chnterm(){ 
  #  sleep 4 ; xdotool key Alt+Tab ; sleep 3
    sleep 0.5 ; xdotool keydown alt key Tab ; sleep 0.5 ; xdotool keyup alt ; $return0
            } 

  mouseset(){ 
            sleep 0.5 ; xdotool mousemove  $mousx $mousy ; xdotool click 1 ; sleep 0.5 
            }

reposi(){
echo "
I. Online
     1. login   si.mirchev@gmail.com   0987abcdl234
         New→ Repository name* → Private → check box README.md ⮕ Create repository
         mkdir myrepo
         cd myrepo
     2. Delete Repository
       In delete repository click on settings tab.
       Goto •Danger Zone•  block.
       Click on •Delete this repository• button.
       Type the repository name (that you wants to delete)
       Now click •I understand the consequences, delete this repository• button
       !!! NEVER  NEVER FROM LOCAL MASHINE ⮕ next row  NEVER 
     1. Create a new repository on the command line
        mkdir myrepo
        cd myrepo
        touch README.md and copy/past any file → index.html  
        git init
        git add README.md  / git add .
        git commit -m 'first commit'
        git branch -M master
        git remote add origin git@github.com:StefanMirchev/myrepo.git
        git push -u origin master
     2. Push an existing repository from the command line
        git remote add origin git@github.com:StefanMirchev/myrepo.git
        git branch -M master
        git push -u origin master !!!!!!!!
" > ~/work/proc/aaa.txt
value=`cat ~/work/proc/aaa.txt`
yad --text-info --title="" --text="<b>Create /delete repository</b>"  --button="❌":1 \
--geometry=1000x550+600+435 --fore="balck"  --mouse  --back="#78A1AB"  --fontname='Sans 13' \
--text-align=center --filename=/home/inter/work/proc/aaa.txt
        }




 ## !!!gnome-terminal --geometry=130x10+280+780 ; $sl0 & 
 ## !!!echo 'cd ~/work/git/' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0 & 
 ## !!!echo 'cd ~/work/git/myrepo' | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0 & 
 ## !!!currentbranch
 ## !!!echo $chnterm0 | $clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 ; $sl0 ; $return0  &
 

pause(){
  # read -n1 -p " Press [Enter] key to continue..." 
  # while read -rsn1 k 
  read   -p " Press [Enter] key to continue..." fackEnterKey
       }
  chnterm(){ 
  #  sleep 4 ; xdotool key Alt+Tab ; sleep 3
    sleep 0.5 ; xdotool keydown alt key Tab ; sleep 0.5 ; xdotool keyup alt ; $return0
            } 

  mouseset(){ 
            sleep 0.5 ; xdotool mousemove  $mousx $mousy ; xdotool click 1 ; sleep 0.5 
            }

  com01(){ 
sleep 0.1 ; ~/work/proc/termin.sh ; wmctrl -r "TerminalInstall"  -e 1,300,10,1100,200 ; sleep 1 

 while true
         do        
sp0=$(perl -E 'say " " x 29')   fo0="'$' '$'" ; rc0=9
app0=$(yad --list --title="COMMANDS" --column="" --undecorated --no-headers   --separator=""  \
$edi0 --text-align=center \
--text="<span font='15' background='#06989A' foreground='white'>$sp0 COMMANDS $sp0</span>" \
--button="Edit ON":2 --button="Edit OFF":3 --button="❌":1 \
--window-icon=/home/$USER/work/library/image/icon/install.ico --search-column=1 --geometry=890x700+300+500 \
--column=@fore@ --column=@back@ --column=@font@ \
'Menu 5    Monospace Regular  https://www.git-tower.com/learn/git/faq/git-diff            ' $fo0 'sans 12' \
'   !!!!!!!!!!!!!!!!!!!!  VERY VERY VERY VERY IMPORTANT !!!!!!!!!  gitk !!!!!!!!!!!!!!    ' $fo0 'sans 12' \
'I.  GitHub work in next 5 steps:                                                         ' $fo0 'sans 12' \
'1. DOWNLOAD MASTER BRANCH ⮕                                                             ' $fo0 'sans 12' \
'  Copy from GitHub - Code  git clone git@github.com:StefanMirchev/desktop.git            ' $fo0 'sans 12' \
'2.CREATE NEW BRANCH ⮕                                                                   ' $fo0 'sans 12' \
'  git branch b123 _create new branch - branch b123 is all the same branch from create    ' $fo0 'sans 12' \
'3.WORK ONLY IN BRANCH b123 -AND WE ARE ONLY THERE                                        ' $fo0 'sans 12' \
'4. EDIT INDEX.HTML  ⮕ $ed index.html                                                    ' $fo0 'sans 12' \
'A. BEFORE ADD. / COMMIT                                                                  ' $fo0 'sans 12' \
'a) AFTER FILE CHANGES, CHECKOUT TO ANOTHER BRANCH IS NOT ALLOW BEFORE ADD /COMMIT        ' $fo0 'sans 12' \
'b) Beyond Compare = BC                                                                   ' $fo0 'sans 12' \
'c) git difftool                                                                          ' $fo0 'sans 12' \
'● git difftool = git difftool b123 ⮕ showes index.html in left side BC form master      ' $fo0 'sans 12' \
'●  branch and b123 branch in right side BC                                               ' $fo0 'sans 12' \
'●  UNNECESSARY COMMANDS :                                                                ' $fo0 'sans 12' \
'( git difftool b123 master ⮕ showes index.html form master branch in left side BC       ' $fo0 'sans 12' \
'  git difftool master b123 ⮕ showes index.html form master branch in right side BC      ' $fo0 'sans 12' \
'  git difftool master ⮕ showes index.html form b123 branch in right side BC  )          ' $fo0 'sans 12' \
'd) git mergetool                                                                         ' $fo0 'sans 12' \
'● git merge ⮕ Already up-to-date ⮕ means that all the changes from the branch you’re   ' $fo0 'sans 12' \
'  trying to merge have already been merged to the branch you’re currently on.            ' $fo0 'sans 12' \
'4.!!!    All CHANGES IN BRANC B123 FINISH WITH GID ADD AND GIT COMMIT -M '' ALL !!!      ' $fo0 'sans 12' \
'5.MERGE CHANGE IN MASTER FROM loc-b123                                                   ' $fo0 'sans 12' \
'II.                              C O M M A N D S                                         ' $fo0 'sans 12' \
'Copy from GitHub - Code /examples/ ⮕ git@github.com:StefanMirchev/myrepo.git            ' $fo0 'sans 12' \
'cd ~/work/git                                                                            ' $fo0 'sans 12' \
'git clone ⮕ /examples/                                                                  ' $fo0 'sans 12' \
'ls ~/work/git ⮕ List branch                                                             ' $fo0 'sans 12' \
'cd ~/work/git/ ⮕ Choice branch                                                          ' $fo0 'sans 12' \
'user  ⮕ si.mirchev@gmail.com   (not more this pass ⮕  0987abcdl234  0987aBcDl234)      ' $fo0 'sans 12' \
'token ⮕                                                                          ' $fo0 'sans 12' \
'Repositories →New→ Repository name* → Private → Create repository                        ' $fo0 'sans 12' \
'mkdir myrepo                                                                             ' $fo0 'sans 12' \
'cd myrepo                                                                                ' $fo0 'sans 12' \
'git init ⮕ creates a new Git repository /directory/                                     ' $fo0 'sans 12' \
'copy/past any file → index.html                                                          ' $fo0 'sans 12' \
'git status ⮕ displays the state of the working directory and the staging area           ' $fo0 'sans 12' \
'git add index.html ⮕ track /index/ new files ⮕ send  /save/ in stage / tracking        ' $fo0 'sans 12' \
'git add . = git commit -а                                                                ' $fo0 'sans 12' \
'git reset unstage file                                                                   ' $fo0 'sans 12' \
'git rm --cached README.md    rm  README.md ⮕ delete file from branch /untracking        ' $fo0 'sans 12' \
'git add invoice.rb ⮕ track /index/ new files ⮕ send  /save/ in stage                   ' $fo0 'sans 12' \
'git restore invoice.rb --staged ⮕ returns back - git add invoice.rb                     ' $fo0 'sans 12' \
'!!!!!!  YOU DELETE THE FILE ONLY THROUGH GIT AND IN NO OTHER WAY  !!!!!                  ' $fo0 'sans 12' \
'git rm index.html -before git add index.html / git rm f index.html - after git add       ' $fo0 'sans 12' \
'mv index_LOCAL_924548.html a.htm  ⮕ if can not delete rename file and then del          ' $fo0 'sans 12' \
'!!!  Never git commit before git add !!!                                                 ' $fo0 'sans 12' \
'git status ⮕ the current state of the staging will be recorded in the history           ' $fo0 'sans 12' \
'git status ⮕ displays the state of the working directory and the staging area           ' $fo0 'sans 12' \
'index.html examples ⮕ push changes to Git repository                                    ' $fo0 'sans 12' \
'if not work see ⮕ Menu 2/3                                                              ' $fo0 'sans 12' \
'git commit -m ●examples● ⮕ before edit index.html                                       ' $fo0 'sans 12' \
'git show --raw 8db3d959e3e6cbd51c1cb1e66c506e8b71f2db4a - show containt commit           ' $fo0 'sans 12' \
'git log - history of commits in this repo                                                ' $fo0 'sans 12' \
'!!! Show all commit shortly ⮕                                                           ' $fo0 'sans 12' \
'git log --pretty=format:●%C(auto)-%h%x09%an%x09%ad%x09%s-%C(auto)%d%Creset●              ' $fo0 'sans 12' \
'git log --pretty=format:●%C(auto)-%h  %an  %ad %s-%C(auto)%d%Creset●                     ' $fo0 'sans 12' \
'             --date=format:●%Y-%m-%d %H:%M:%S●                                           ' $fo0 'sans 12' \
'!!! Show all commit shortly ⮕  git log --pretty=format:●%H %an %ad● --date=short        ' $fo0 'sans 12' \
'Some edit in   ⮕  $ed index.html                                                        ' $fo0 'sans 12' \
'git branch ⮕ show all branch                                                            ' $fo0 'sans 12' \
'git rev-parse --abbrev-ref HEAD show / git branch --show-current ⮕ current branch       ' $fo0 'sans 12' \
'git branch b123 _create new branch - branch b123 is all the same branch from create      ' $fo0 'sans 12' \
'git checkout b123 ⮕ change branch - *b123 go in branch b123                             ' $fo0 'sans 12' \
'git branch -d b123 ⮕ if not merge not be delete because - all work will be lost         ' $fo0 'sans 12' \
'git branch -D b123 ⮕ will be delete branch                                              ' $fo0 'sans 12' \
'!!! Staged think as clipboard for all branches                                           ' $fo0 'sans 12' \
'!!! On folder myrepo with git checkout b123/master set files to last commit in branch    ' $fo0 'sans 12' \
'!!! must be in branch into merge from b123 see down steps:                               ' $fo0 'sans 12' \
'git checkout master ⮕ git marge b123                                                    ' $fo0 'sans 12' \
'git branch -a ⮕ show all branch, in red remote branch                                   ' $fo0 'sans 12' \
'git diff / git difftool - work only  git difftool wit Beyond Compare                     ' $fo0 'sans 12' \
'!!!  Beyond Compare not given information about path where the objects are located-=     ' $fo0 'sans 12' \
' = LEFT IS A BRANCH WHERE WE ARE - RIGHT IS FILE ON LOCAL MASHINE OR MASTER !!!          ' $fo0 'sans 12' \
'!!! BEFORE MAKE ⮕ GIT MARGETOOL ⮕ GO TO MASTER BRANCH ⮕ GIT CHECKOWUT MASTER !!!      ' $fo0 'sans 12' \
'git checkout   return:                                                                   ' $fo0 'sans 12' \
' ● ● = unmodified                                                                        ' $fo0 'sans 12' \
'M = modified                                                                             ' $fo0 'sans 12' \
'T = file type changed (regular file, symbolic link or submodule)                         ' $fo0 'sans 12' \
'A = added                                                                                ' $fo0 'sans 12' \
'D = deleted                                                                              ' $fo0 'sans 12' \
'R = renamed                                                                              ' $fo0 'sans 12' \
'C = copied (if config option status.renames is set to "copies")                          ' $fo0 'sans 12' \
'U = updated but unmerged                                                                 ' $fo0 'sans 12' \
'git checkout master README.md -copy file README.md from master to b123                   ' $fo0 'sans 12' \
' token                                          ' 'white' '#06989A' 'sans 12'
    )
               rc0=$?
   case $rc0 in
    1) sleep 0.5 ; wmctrl -c "TerminalInstall"  ;  wmctrl -c "Commands"  ; sleep 0.5  ; exit ; sleep 0.5 ;;
    2) edi0=--editable ;;
    3) edi0= ;;
    0) echo " ${app0%:*} " | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ;;
   esac
        done
           }





#reposi(){
#echo "
#I. Online
#1. login   si.mirchev@gmail.com   0987abcdl234
#New→ Repository name* → Private → check box README.md ⮕ Create repository
#mkdir myrepo
#cd myrepo
#2. Delete Repository
#In delete repository click on settings tab.
#Goto •Danger Zone•  block.
#Click on •Delete this repository• button.
#Type the repository name (that you wants to delete)
#Now click •I understand the consequences, delete this repository• button
#!!! NEVER  NEVER FROM LOCAL MASHINE ⮕ next row  NEVER 
#1.Create a new repository on the command line
#mkdir myrepo
#cd myrepo
#touch README.md and copy/past any file → index.html  
#git init
#git add README.md  / git add .
#git commit -m 'first commit'
#git branch -M master
#git remote add origin git@github.com:StefanMirchev/myrepo.git
#git push -u origin master
#2.Push an existing repository from the command line
#git remote add origin git@github.com:StefanMirchev/myrepo.git
#git branch -M master
#git push -u origin master !!!!!!!!
#
#" > ~/work/proc/aaa.txt
#   $subl0  ~/work/proc/aaa.txt > /dev/null 2>&1
#        }
# 290x570+2+500
  submenu(){
   echo ; tire0=$(perl -E 'say "_" x 36') ; sp0=$(perl -E 'say " " x 5')  
    case ${app0%.*} in
             2) sleep 0.5
           if ! [ $user0 = n ] ; then 
              sleep 0.5 ; echo $user0 | xclip -sel clip &
              yad --info --title="User" --undecorated --no-headers --separator="" \
              --geometry=100x100+5+900 --button="❌":1 \
              --text="<span font='18' background='green' foreground='white'> USER </span>" \
              --window-icon=/home/$USER/work/library/image/icon/usepas.ico  
           fi
     if ! [ $user0 = n ] ; then
        sleep 0.5 ; echo $pass0 | xclip -sel clip &
        yad --info --title="Pass" --undecorated --no-headers --separator="" \
        --geometry=100x100+5+900 --button="❌":1 \
        --text="<span font='18' background='red' foreground='white'> PASS </span>" \
        --window-icon=/home/$USER/work/library/image/icon/usepas.ico  
     fi  & ;;
           3) sleep 0.3 ; choice1=$(yad --list --title="SubMenu" --column="" --undecorated --no-headers \
                --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 \
                 --no-buttons  --separator=""  --geometry=126x132+160+845  \
                --window-icon=/home/$USER/work/library/image/icon/menu1.ico --search-column=1  \
                --text="<span font='11' background='#FFDB00' foreground='black'>  Sub Menu  </span>" \
                 --column=@fore@ --column=@back@ --column=@font@ \
                  '0. Exit'      $fo0 'sans 11' \
                    '1. Menual   ' 'black' '#FFDB00' 'sans 11' \
                    '2. Command  ' 'black' '#FFDB00' 'sans 11' \
                    '3. Examples ' 'black' '#FFDB00' 'sans 11' 
                    )

             case ${choice1%.*} in
               0) wmctrl -c  SubMenu ;;
               1) xreader ~/work/library/git/progit_v2.1.51.pdf > /dev/null 2>&1 & ;;  
               2) com01  & ;;
               3) libreoffice --writer ~/work/library/git/examples.doc > /dev/null 2>&1 & ;;
             esac & ;; 

         5) sleep 0.1 ; ~/work/proc/termin.sh ; wmctrl -r "TerminalInstall"  -e 1,300,10,1100,200 ; sleep 1 

 while true
         do        
sp0=$(perl -E 'say " " x 19')   fo0="'$' '$'" ; rc0=9
app0=$(yad --list --title="CLONE" --column="" --undecorated --no-headers   --separator=""  \
$edi0 --text-align=center \
--text="<span font='15' background='#06989A' foreground='white'>$sp0 CLONE $sp0 \
Not forget creat ssh key - menu 2            </span>" --button="Edit ON":2 --button="Edit OFF":3 --button="❌":1 \
--window-icon=/home/$USER/work/library/image/icon/install.ico --search-column=1 --geometry=610x300+300+800 \
--column=@fore@ --column=@back@ --column=@font@ \
':Copy from GitHub - Code /examples/                               ' $fo0 'sans 12' \
'git git@github.com:StefanMirchev/myrepo.git:                      ' $fo0 'sans 12' \
'cd ~/work/git:                                                    ' $fo0 'sans 12' \
'git clone - git@github.com:StefanMirchev/myrepo.git               ' $fo0 'sans 12' \
'ls ~/work/git: List branch                                        ' $fo0 'sans 12' \
'cd ~/work/git/:  Choice branch                                    ' $fo0 'sans 12' \
'user ⮕ si.mirchev@gmail.com (not more this pass  0987abcdl234):  ' $fo0 'sans 12' \
'..............................            token                   ' 'white' '#06989A' 'sans 12'
    )

               rc0=$?

   case $rc0 in
    1) sleep 0.5 ; wmctrl -c "TerminalInstall"  ;  wmctrl -c "Clone"  ; sleep 0.5  ; exit ; sleep 0.5 ;;
    2) edi0=--editable ;;
    3) edi0= ;;
    0) echo " ${app0%:*} " | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ;;
    0) echo " ${app0%:*} " | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ;;
   esac
        done
#          8) read -p "Press w-Weath c-Calen m-Webcam choice:" choice1 
#             case $choice1 in 
#                w)   web0=" https://weawow.com/c9140786" ; $brows0 $web0 > /dev/null 2>&1 & ;;  
#                c)  sleep 2
#                   case $USER in
#                         kosy) gnome-terminal --geometry=40x10+2000+800 -- ~/work/proc/calendar.sh ; $sl0 ;;
#                        inter) gnome-terminal --geometry=40x10+2000+800 -- ~/work/proc/calendar.sh ; $sl0 ;; 
#                        chefo) gnome-terminal --geometry=40x10+2000+800 -- ~/work/proc/calendar.sh ; $sl0 ;; 
#                   esac  & ;; 
#                m) nohup ~/work/proc/weather.sh & ;; 
#             esac  ;;  
#         12) read -p " Clean - c Kill-k  choice: " choice1
#             case $choice1 in
#                c) gnome-terminal ; echo 'pkexec bleachbit'  | $clip0 ; $sl0 ; $scv0  ; $sl0 ; $backs0 ; $sl0 ; $return0 ;;   
#                k) zenity --width=500 --height=5 --title='KEY' --info \
#        --text='<span font="12" foreground="black"> 
#          Kill processes ;  </span>' & 
#        ~/work/linux/kill.sh > /dev/null 2>&1  ; sleep 2 ; killall zenity ;;
#             esac  ;;
      esac
      }


     while true
         do        
            show_menus ; read_options
          #  clear ; currentbranch  ; show_menus ; read_options ; show_menus ; printf $col0   & 
          #  sleep 2 ; exit   ; currentbranch
        done