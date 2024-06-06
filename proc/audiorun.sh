
cell0="celluloid " 
vlc0=" /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/vlc --file-forwarding org.videolan.VLC \
--started-from-file @@u %U @"


pacmd set-sink-volume 0 10000 ; sleep 1 ;  $cell0 $1  &
 case $USER in  kosy) sleep 5 ;; inter) sleep 5 ;;  chef) sleep 10 ;;  esac
 pacmd set-sink-volume 0 41000 ; sleep 1
