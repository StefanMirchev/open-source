#!/bin/bash



  
     case $USER in  kosy) pass0=1 ;; inter) pass0=3 ;; chef) pass0=2 ;; esac


    clear 
    cd ~/work/library/bookmarks
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0  sudo chmod ugo+rwx "$f" 
      done 

    cd ~/work/library/bookmarks/browser
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done
        
    cd ~/work/library/bookmarks/chef
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done
       
    cd ~/work/library/bookmarks/inter
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done
      
    cd ~/work/library/bookmarks/kosy
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done
             
    cd ~/work/library/themes
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done
          
    cd ~/work/library/themes/beyond/gtk-3.0
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done
             
    cd ~/work/library/themes/cloud/gtk-3.0
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done
             
    cd ~/work/library/themes/example/gtk-3.0
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done
    
    cd ~/work/library/themes/examples/gtk-3.0
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done
        
    cd ~/work/library/themes/phonebook/gtk-3.0
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done
           
    cd ~/work/library/themes/phonebook/gtk-3.0
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done
        
    cd ~/work/library/themes/recepty/gtk-3.0
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done
     
    cd ~/work/library/themes/timers/gtk-3.0
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done
          
    cd ~/work/library/themes/unlock/gtk-3.0
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done
          
    cd ~/.kort
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done

    cd ~/work/linux
    # clear ;  ls -l
     for f in *.* ; do
         n=$(( n+1 )) ; echo "$f" 
         sshpass -p $pass0 sudo chmod ugo+rwx "$f" 
     done
 yad --fixed --info  --title "FINIHS MESSAGE" --no-buttons --geometry=10x-10+$X2+$Y2 --timeout=6 \
 --gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --skip-taskbar --undecorated  \
 --text="<span color='black'  background='#58DCE7' font='14'><b>FINISH Unluck Files</b></span>" 