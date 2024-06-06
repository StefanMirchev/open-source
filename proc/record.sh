#! /bin/bash


  # sudo apt-get install pavucontrol 
  # VIDEO RECORDER IN ~/work/ffmpeg/ffmpeg.sh
  clear 
 mkdir ~/Music/records

 rm ~/Music/records/011.mp3  ; sleep 2
 echo 1 ;  arecord -vv -f cd ~/Music/records/011.mp3 &
 yad --text "Ìake a recording on ~/Music/records/011.mp3 "  ; sleep 1 ; smplayer  ~/Music/records/011.mp3 
 rm ~/Music/records/011.mp3  ;exit 

# echo 2 ;  arecord -vv -f cd ~/Music/records/011.mp3 ;  yad --text "2" 
# smplayer  ~/Music/records/011.mp3 ; exit 
 


