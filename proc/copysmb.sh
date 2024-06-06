#!/bin/bash
  

myvar0="$1" ; sleep 1 ; fold0=${myvar0%/*} ; sleep 1 ; file0=${myvar0##*/} 
foldrem0=${fold0:10:30}
rm ~/work/proc/aaa.txt ; sleep 1
echo $1 |  xclip -sel clip


# yad --info --text $myvar0 



# !!!!!!!!!!!!!!!!!!!  NOT DELETE NOT DELETE NOT DELETE
# zenity --info --no-wrap --ok-label="Recepty" --extra-button=Cancel  --text="\
# <span color=\"\#00EE00\"   font=\"25\"><b>Variables </b></span>
# <span color=\"black\" font=\"15\"><b>myvar0 $myvar0</b></span>
# <span color=\"black\" font=\"15\"><b>fold0  $fold0</b></span>
# <span color=\"black\" font=\"15\"><b>file0  $file0</b></span>
# <span color=\"black\" font=\"15\"><b>(pwd) $(pwd)</b></span>
# <span color=\"black\" font=\"15\"><b>foldrem0 $foldrem0</b></span>"
# !!!!!!!!!!!!!!!!!!!  NOT DELETE NOT DELETE NOT DELETE

                  # ❗❗❗VERY IMPORTANT CREATE kosyshare and intershare -> Share 
                  #     from   /home/kosy/ -> inter as kosyshare
                  #     from   /home/inter/ -> inter as intershare  
                  #  cd /home/inter/Desktop     ;    scp bbb.txt kosy@192.168.0.206:/home/kosy/Deskto
                  #  scp /home/inter/Desktop/bbb.txt kosy@192.168.0.206:/home/kosy/Desktop
                  # WINDOWS -> C:\HLP\BAT\copysmb.bat
                   ❗❗❗

    case $USER in
            chef) cd $fold0  # ❗❗❗ NOT WIRK IF ALL NEXT ROW WITHOWT # !  ONLY ONE ROW ❗❗❗
                   if [ $(iwgetid -r) = A1_F277 ] ; then  # CHECK ONLY WIFI
                  # NOT smbclient -U inter%3 //192.168.0.207/home  --directory  /inter/Desktop -c "put $(echo $file0)" > ~/work/proc/aaa.txt
                     sshpass -p '3' scp $myvar0  inter@192.168.0.207:/home/inter/Desktop  > ~/work/proc/aaa.txt
                    # windows
                     echo 2 | smbclient -U KOSI //192.168.0.202/c --directory "/Users/KOSI/Desktop/" -c "put $(echo $file0)" > ~/work/proc/aaa.txt
                     echo 2 | smbclient -U STEF //192.168.0.203/c --directory "/Users/STEF/Desktop/" -c "put $(echo $file0)" > ~/work/proc/aaa.txt 
                     echo 2 | smbclient -U ACCO //192.168.0.209/c --directory "/Users/ACCO/Desktop/" -c "put $(echo $file0)" > ~/work/proc/aaa.txt
                  # Android 
                  #   echo android | smbclient -U android ftp://android@192.168.0.204:2221/A_LENOVO  --directory "/aaa " -c "put $(echo $file0)" > ~/work/proc/aaa.txt
                 else
                  # CHEFO
                    sshpass -p '3' scp $myvar0 inter@192.168.0.207:/home/inter/Desktop > ~/work/proc/aaa.txt 
                   # windows
                    echo 2 | smbclient -U ACCO //192.168.0.209/c --directory "/Users/ACCO/Desktop/" -c "put $(echo $file0)" > ~/work/proc/aaa.txt
                    echo 1 | smbclient -U acco@ //192.168.1.108/c  --directory "/Users/ACCO/Desktop/"  -c "put $(echo $file0)" > ~/work/proc/aaa.txt  
                 fi ;;  
            kosy) cd $fold0  # ❗❗❗ NOT WIRK IF ALL NEXT ROW WITHOWT # !  ONLY ONE ROW ❗❗❗
                   if [ $(iwgetid -r) = A1_F277 ] ; then  # CHECK ONLY WIFI
                  # NOT smbclient -U inter%3 //192.168.0.207/home  --directory  /inter/Desktop -c "put $(echo $file0)" > ~/work/proc/aaa.txt
                     sshpass -p '3' scp $myvar0  inter@192.168.0.207:/home/inter/Desktop  > ~/work/proc/aaa.txt
                    # windows
                     echo 2 | smbclient -U KOSI //192.168.0.202/c --directory "/Users/KOSI/Desktop/" -c "put $(echo $file0)" > ~/work/proc/aaa.txt
                     echo 2 | smbclient -U STEF //192.168.0.203/c --directory "/Users/STEF/Desktop/" -c "put $(echo $file0)" > ~/work/proc/aaa.txt 
                     echo 2 | smbclient -U ACCO //192.168.0.209/c --directory "/Users/ACCO/Desktop/" -c "put $(echo $file0)" > ~/work/proc/aaa.txt
                  # Android 
                  #   echo android | smbclient -U android ftp://android@192.168.0.204:2221/A_LENOVO  --directory "/aaa " -c "put $(echo $file0)" > ~/work/proc/aaa.txt
                 else
                  # CHEFO
                    sshpass -p '3' scp $myvar0 inter@192.168.0.207:/home/inter/Desktop > ~/work/proc/aaa.txt 
                   # windows
                    echo 2 | smbclient -U ACCO //192.168.0.209/c --directory "/Users/ACCO/Desktop/" -c "put $(echo $file0)" > ~/work/proc/aaa.txt
                    echo 1 | smbclient -U acco@ //192.168.1.108/c  --directory "/Users/ACCO/Desktop/"  -c "put $(echo $file0)" > ~/work/proc/aaa.txt  
                 fi ;;  
           inter) cd $fold0   #Transfer Files using SSH  Command Line 
                  # sshpass -p '1' scp $myvar0  kosy@192.168.1.106:/home/kosy/Desktop > ~/work/proc/aaa.txt ;;
                   sshpass -p '1' scp $myvar0  kosy@192.168.0.206:/home/kosy/Desktop > ~/work/proc/aaa.txt 
                   sshpass -p '2' scp $myvar0  chef@192.168.0.206:/home/chef/Desktop > ~/work/proc/aaa.txt ;;
            chef) pass0="2" ; $sl0 ;;            
     esac

  yad --text-info  --title "MESSAGE" --window-icon=/home/$USER/work/library/image/icon/message.ico \
--text="<span font='14' foreground='#DA2323'><b>Message from copy/paste proce</b></span>" --cente \
--borders=0  --geometry=500x200+500+100 --undecorated --visible=blink --timeout=8  \
    --filename=/home/kosy/work/proc/aaa.txt --editable  --fontname='serif 13' &
sleep 0.5
    yad --fixed  --title "FINIHS COPY" --no-buttons --geometry=10x-10+500+265 --timeout=5 --undecorated \
--gtkrc=/home/$USER/work/library/themes/red.css --borders=0 --skip-taskbar --text="\
<span color='red'  background='#58DCE7' font='14'><b>FINISH COPY</b></span>" 



