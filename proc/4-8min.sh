 #  vlc0=" /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/vlc --file-forwarding org.videolan.VLC --started-from-file @@u %U @"; echo '' ; sleep 0.1 ;
 #  vlc0="/usr/bin/vlc --started-from-file" ; echo '' ; sleep 0.1 6
# awk '{ if (NR == 504) print "volume=80"; else print $0}' ~/.config/smplayer/smplayer.ini > ~/.config/smplayer/smplayer0.ini
# sleep 0.5 ; rm ~/.config/smplayer/smplayer.ini ; sleep 2 ; mv ~/.config/smplayer/smplayer0.ini ~/.config/smplayer/smplayer.ini
   pactl set-default-sink 'alsa_output.pci-0000_03_00.6.analog-stereo.equalizer' ; sleep 0.2
   vol0=80; pactl set-sink-volume 0 $vol0% ; sleep 1

   #  case $USER in
   #         #  kosy)  vlc0=" /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=/app/bin/vlc --file-forwarding org.videolan.VLC --started-from-file @@u %U @"; echo '' ; sleep 0.1 ;;
   #         #  kosy)  vlc0=" /usr/bin/vlc --started-from-file %U "; echo '' ; sleep 0.1 ;;
   #           kosy)  vlc0=" /usr/bin/vlc --started-from-file"; echo '' ; sleep 0.1 ;;
   #          inter)  ;;
   #           chef)  vlc0="/usr/bin/vlc --started-from-file" ; echo '' ; sleep 0.1 ;;    
   #  esac     
   smplayer -close-at-end ~/Music/8Minute.avi &
#  /bin/ffplay -i  ~/Music/8Minute.avi &
# ffplay -i ~/Music/8Minute.avi 
# sleep 11
# killall smplayer
 sleep 5