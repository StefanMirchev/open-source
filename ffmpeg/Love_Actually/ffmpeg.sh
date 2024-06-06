#!/bin/bash


clear 
# x0='Dido - Here with me.opus'
x0='The Beach Boys - God only knows'
# yad --info --text "  $x0   "


● 22 Convert opus to mp3  remove picture remove image "-map 0:a" 
   clear 
  # ffmpeg -y -i "Dido - Here with me.opus" -ab 320k  -map 0:a -map_metadata 0:s:a:0 -id3v2_version 3 011.mp3
 #ffmpeg -y -i  "$x0" -ab 320k  -map 0:a -map_metadata 0:s:a:0 -id3v2_version 3 $x0.mp3
  ffmpeg -y -i  "$x0.opus" -ab 320k  -map 0:a -map_metadata 0:s:a:0 -id3v2_version 3 "$x0.mp3"


# ffplay -i  011.mp4
#   pqiv 011.gif
#  ffplay -i  ~/work/ffmpeg/014.avi

#  ffplay -i ~/Music/8Minute.avi 
    # pix $a01
 