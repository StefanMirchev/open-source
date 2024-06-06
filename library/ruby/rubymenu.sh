#!/bin/bash

  xy=$(xrandr |awk '$0 ~ "*" {print $1}')
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2) 
  KX_0=$(printf %.3f\\n $(echo "(($X0/37.5))" | bc -l )) 
  KY_0=$(printf %.3f\\n $(echo "(($Y0/30.5))" | bc -l ))
  X1=$(printf %.0f\\n $(echo "(($X0-(13*$KX_0))*0.4)" | bc -l ))
  Y1=$(printf %.0f\\n $(echo "(($Y0-(6 *$KY_0))*0.02)" | bc -l ))
  X2=$(printf %.0f\\n $(echo "(($X0-(3 *$KX_0))*0.01)" | bc -l ))
  Y2=$(printf %.0f\\n $(echo "(($Y0-(21*$KY_0))*0.001)" | bc -l ))
  X9=$(printf %.0f\\n $(echo "(($X0-(4   *$KX_0))*0.001)" | bc -l ))
  Y9=$(printf %.0f\\n $(echo "(($Y0-(4   *$KY_0))*0.001)" | bc -l ))


  sl0="sleep 1.0" ;   clip0="xclip -sel clip" ;   scv0="xdotool key Shift+Ctrl+v"  ; 
  backs0="xdotool key BackSpace" ;  return0="xdotool key Return" ; user0='n'
  chnterm0="sleep 0.5 ; xdotool keydown alt key Tab ; sleep 0.5 ; xdotool keyup alt"
  all0='$clip0 ; $sl0 ; $scv0 ; $sl0 ; $backs0 '
  b1='' ; bran0='' ; mousx=1000 ; mousy=350 ; app0=0 ; choice1=0 ; st0=0
  subl0=~/work/library/sublime/sublime-text.sh 
  brows0=/home/$USER/work/proc/browser.sh  


 cell0="celluloid %U " 
 play0='ffplay -i -autoexit -nodisp'

  if [ $(wmctrl -l | grep 'Ruby' 2>&1 | wc -l) -ge 1 ] ; then exit  ; fi
  if [ `ps aux | grep -i "rubymenu.sh" | grep -v "grep" | wc -l` -ge 4 ] ; then exit ; fi

stepdown() { sleep 1 ; for (( i = 0 ; i < $st0; ++i )); do xdotool key Down  ; done
             sleep 1 ;  wmctrl -a Terminal ; }
 export -f stepdow

sp0=$(perl -E 'say " " x 4')   fo0="'$' '$'"
show_menus() {
app0=$(yad --list --title="Ruby" --column="" --undecorated --no-headers  --no-buttons  --separator="" --borders=4 \
--text="<span font='15' background='#AF5F5F' foreground='white'>        R U B Y        </span>" --select-action="bash -c on_click" \
--window-icon=/home/$USER/work/library/image/icon/menu.ico --search-column=1 --geometry=307x237+2+795 \
--gtkrc=/home/$USER/work/library/themes/yellow.css \
--column=@fore@ --column=@back@ --column=@font@ \
'0. Exit                       ' $fo0 'sans 12' \
'1. Menual                     ' $fo0 'sans 12' \
'2. Install Ruby  Rails        ' $fo0 'sans 12' \
'3. UnInstall  Ruby Rails      ' $fo0 'sans 12' \
'4. Examples                   ' $fo0 'sans 12' \
'5. Online Run Ruby - Replit   ' $fo0 'sans 12' \
'6. Rails                      ' 'white' '#AF5F5F' 'sans 12'
    )
          }
# wmctrl -c "Ruby" ; killall rubymenu.sh ; 
   read_options(){  
       case ${app0%.*} in 
         0) sleep 0.5 ; wmctrl -c "SubMenu" ;  wmctrl -c "Ruby"  ; exit ; sleep 0.5 ;;
         1) 🌸 ; xreader ~/work/library/ruby/menual.pdf  & ;;
         2) 🌸 ; sleep 0.1 ; ~/work/proc/termin.sh ; sleep 1  
          while true
         do  stepdown &  
sp0=$(perl -E 'say " " x 20')   fo0="'$' '$'" ; rc0=9 
app0=$(yad --list --title="SubMenu" --column="" --no-headers  --undecorated  --separator=""  \
$edi0 --text-align=center  --gtkrc=/home/$USER/work/library/themes/green02.css  \
--text="<span font='12' background='#DEC27B' foreground='black'>$sp0 Install  Ruby  $sp0</span>" \
--button="Edit ON":2 --button="Edit OFF":3 --button="❌":1 \
--window-icon=/home/$USER/work/library/image/icon/install.ico --search-column=1 --geometry=620x330+320+660 \
--column=@fore@ --column=@back@ --column=@font@ \
' 1.^ sudo apt update                                     ^ 1' $fo0 'Monospace 13' \
' 2.^ sudo apt install ruby-full                          ^ 2' $fo0 'Monospace 13' \
' 3.^ ruby --version                                      ^ 3' $fo0 'Monospace 13' \
' 4.^ sudo apt install irb                                ^ 4' $fo0 'Monospace 13' \
' 5.^ sudo gem install rails                              ^ 5' $fo0 'Monospace 13' \
' 6.^ cd ~/work/ruby                                      ^ 6' $fo0 'Monospace 13' \
' 7:^ rails new blog                                      ^ 7' $fo0 'Monospace 13' \
' 8.^ bin/rails server                                    ^ 8' $fo0 'Monospace 13' \
' 9.^ firefox  http://127.0.0.1:3000                      ^ 9' 'black' '#DEC27B' 'Monospace 13'
    )
               rc0=$?

   case $rc0 in
    1) sleep 0.5 ; wmctrl -c "TerminalInstall"  ;  wmctrl -c "Terminal"  ; sleep 0.5  ; exit ; sleep 0.5 ;;
    2) edi0=--editable ;;
    3) edi0= ;;
    0) clear  ; app1=$(echo $app0 | cut -d'^' -f2)  
  if [ ${app0:3:1} = ^ ] ; then
      st0=$(echo $app0 | cut -d'^' -f3) 
      sleep 0.5 ; echo "$app1 " | eval $all0  
  else 
      st0=$(echo $app0 | cut -d'^' -f2) 
  fi 
    ;; 
    esac
   done & ;; 

         3)🌸 ; sleep 0.1 ; ~/work/proc/termin.sh ; sleep 1  
          while true
         do   stepdown &   
sp0=$(perl -E 'say " " x 19')   fo0="'$' '$'" ; rc0=9 
app0=$(yad --list --title="SubMenu" --column="" --no-headers  --undecorated  --separator=""  \
$edi0 --text-align=center  --gtkrc=/home/$USER/work/library/themes/green02.css  \
--text="<span font='12' background='#DEC27B' foreground='black'>$sp0 Uninstall  Ruby  $sp0</span>" \
--button="Edit ON":2 --button="Edit OFF":3 --button="❌":1 --geometry=620x190+320-1 \
--window-icon=/home/$USER/work/library/image/icon/install.ico --search-column=1  \
--column=@fore@ --column=@back@ --column=@font@ \
' 1.^ sudo gem uninstall rails -v 7.0.4                          ^ 1' $fo0 'Monospace 13' \
' 2.^ sudo apt-get remove --purge rub                            ^ 2' $fo0 'Monospace 13' \
' 3.^ sudo apt-get autoremove ruby                               ^ 3' $fo0 'Monospace 13' \
' 4.^ sudo rm -r /var/lib/gems                                   ^ 4' 'black' '#DEC27B' 'Monospace 13'
    )
               rc0=$?
   case $rc0 in
    1) sleep 0.5 ; wmctrl -c "TerminalInstall"  ;  wmctrl -c "Terminal"  ; sleep 0.5  ; exit ; sleep 0.5 ;;
    2) edi0=--editable ;;
    3) edi0= ;;
    0) clear  ; app1=$(echo $app0 | cut -d'^' -f2)  
  if [ ${app0:3:1} = ^ ] ; then
      st0=$(echo $app0 | cut -d'^' -f3) 
      sleep 0.5 ; echo "$app1 " | eval $all0  
  else 
      st0=$(echo $app0 | cut -d'^' -f2) 
  fi 
    ;; 
    esac
   done & ;; 
         4) 🌸 ; libreoffice --writer ~/work/library/ruby/examples.docx & ;; 
         5) 🌸 ; sleep 0.3 ; aa0=$(wmctrl -l | grep 'SubMenu' 2>&1 | wc -l)
# ~/work/proc/coordinate.sh 
if [ $aa0 -eq 0 ]; then 
 yad --fixed --title="SubMenu" --selectable-labels  --geometry=10x-10-$X1-$Y1 \
--no-icon --no-buttons \
--gtkrc=/home/$USER/work/library/themes/yellow01.css --text="\
<span color='black' font='13'> 1. https://replit.com/@simirchev/INVOICE                 </span>
<span color='black' font='13'> 2. Login -> si.mirchev@abv.bg aa11bb22                   </span>
<span color='black' font='13'> 3. My Repls -> Recent Repls -> INVOICE                   </span>
<span color='black' font='13'> 4. Under ▀◼ - Settings -> Themes -> Light /after login/  </span>
<span color='black' font='13'>          ▀                                               </span> 
<span color='black' font='13'> 5. ︙ -> File upload                                     </span>" &
 xdotool mousemove $(expr $X1 + 100) $(expr $Y0 - $Y1 - 100) ; sleep 0.5 ; xdotool click 1  
fi 
    user0="si.mirchev@gmail.com";  pass0="divalza0" 
    export web00=" https://replit.com/@StefanMirchev/CoordinatedCanineConnections#main.rb" ; $brows0  &
    userpass  ;; 
         6) 🌸 ; sleep 0.1 ; ~/work/proc/termin.sh ; sleep 1  
          while true
         do   stepdown &   
sp0=$(perl -E 'say " " x 20')   fo0="'$' '$'" ; rc0=9 
app0=$(yad --list --title="SubMenu" --column="" --no-headers  --undecorated  --separator=""  \
$edi0 --text-align=center  --gtkrc=/home/$USER/work/library/themes/green02.css  \
--text="<span font='12' background='#DEC27B' foreground='black'>$sp0  Install Rails $sp0</span>" \
--button="Edit ON":2 --button="Edit OFF":3 --button="❌":1 --geometry=620x159+320-1 \
--window-icon=/home/$USER/work/library/image/icon/install.ico --search-column=1  \
--column=@fore@ --column=@back@ --column=@font@ \
' 1.^ cd ~/work/ruby/blog   bin/rails serve                          ^ 1' $fo0 'Monospace 13' \
' 2.^ $brows0  http://127.0.0.1:3000                                 ^ 2' $fo0 'Monospace 13' \
' 3.^ sudo rm -r /var/lib/gems                                       ^ 3' $fo0 'Monospace 13' \
'                                                                    ^ 0' 'black' '#DEC27B' 'Monospace 13'
    )
               rc0=$?
   case $rc0 in
    1) sleep 0.5 ; wmctrl -c "SubMenu" ; wmctrl -c "TerminalInstall"  ;  wmctrl -c "Terminal"  ; sleep 0.5  ; exit ; sleep 0.5 ;;
    2) edi0=--editable ;;
    3) edi0= ;;
    0) clear  ; app1=$(echo $app0 | cut -d'^' -f2)  
  if [ ${app0:3:1} = ^ ] ; then
      st0=$(echo $app0 | cut -d'^' -f3) 
      sleep 0.5 ; echo "$app1 " | eval $all0  
  else 
      st0=$(echo $app0 | cut -d'^' -f2) 
  fi 
    ;; 
    esac
   done &   
yad --fixed --title="SubMenu" --column="" --separator="" --borders=4  \
--select-action="bash -c on_click"  --search-column=1 --geometry=616x157+320+450 \
--text="<span font='11' background='white' foreground='black'> \
1. Generate new controller ⮕ rails g controller posts      
Result:                                                      
      create  app/controllers/posts_controller.rb            
      invoke  erb                                            
      create  app/views/posts                                
      invoke  test_unit                                      
      create  test/controllers/posts_controller_test.rb      
      invoke  helper                                         
      create  app/helpers/posts_helper.rb                    
      invoke  test_unit                                      
2. In file ⮕ app/controllers/posts_controller.rb include new
        def index                                            
        def                                                  
3. Create app/views/posts/index.html.erb and include ne</span>" &
   ;; 


esac
          }   # read_options


 userpass() {
      coord_f
     sleep 0.5
     if ! [ $user0 = n ] ; then 
        sleep 0.5 ; echo $user0 | xclip -sel clip &
        yad --info --title="User" --undecorated --no-headers --separator="" \
        --geometry=10x-10-$X9-$Y9  --button="❌":1 --timeout=0 \
        --text="<span font='18' background='green' foreground='white'> USER </span>" \
        --window-icon=/home/$USER/work/library/image/icon/usepas.ico
        # sleep 3 ; xdotool key Ctrl+v ; sleep 1
     fi

     if ! [ $user0 = n ] ; then
        sleep 0.5 ; echo $pass0 | xclip -sel clip &
        yad --info --title="Pass" --undecorated --no-headers --separator="" \
        --geometry=10x-10-$X9-$Y9  --button="❌":1 --timeout=0 \
        --text="<span font='18' background='red' foreground='white'> PASS </span>" \
        --window-icon=/home/$USER/work/library/image/icon/usepas.ico  
        # sleep 3 ; xdotool key Ctrl+v ; sleep 1
     fi
            }  ; export -f  userpass 



     while true
        do          
          #  clear ; show_menus ; read_options ; show_menus ; printf $col0  
            show_menus ; read_options 
          #  sleep 2 ; exit
        done
