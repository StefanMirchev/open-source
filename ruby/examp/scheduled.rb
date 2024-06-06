  #  eog /home/kosy/.wine/dosdevices/c:/__PLAM-C/HLP/IMAGE/Payment_01.jpg
  #   eog /home/kosy/.wine/dosdevices/c:/__PLAM-C/PHOTO-02/FAMILY/2020/ALEN/11.2020/11.jpg 
  # celluloid /home/kosy/.wine/dosdevices/c:/DISC/HLP/SOUND/SuperLoudSMS.mp3 
  #  eog /home/kosy/.wine/dosdevices/c:/__PLAM-C/PHOTO-02/FAMILY/2020/ALEN/11.2020/11.jpg
     fork { exec("eog /home/kosy/.wine/dosdevices/c:/__PLAM-C/PHOTO-02/FAMILY/2020/ALEN/11.2020/11.jpg") }
    
 #   system("pactl set-sink-volume 0 -5dB")
 #   system("pactl set-sink-volume 0 -15%")
 #    fork { exec("celluloid /home/kosy/.wine/dosdevices/c:/DISC/HLP/SOUND/SuperLoudSMS.mp3") }
#    sleep 5
#    fork  { exec ("killall celluloid") }
#    pactl set-sink-volume 0 0dB
#    system("pactl set-sink-volume 0  100%")
