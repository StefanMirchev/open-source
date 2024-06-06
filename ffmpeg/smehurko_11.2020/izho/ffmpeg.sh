#!/bin/bash
# ttf -> https://www.1001freefonts.com/search.php?q=&d=0&page=2/
#        https://freefontsdownload.net/
# Text on video -> 
#  ffmpeg https://stackoverflow.com/questions/17623676/text-on-video-ffmpeg

rm -f  011.mp4 011.avi 011.jpg 011.gif 011.png ; sleep 1 

pause(){
  # read -n1 -p " Press [Enter] key to continue..." 
  # while read -rsn1 k 
  # read   -p " Press [Enter] key to continue..." fackEnterKey
  ffplay -i  /home/kosy/work/ffmpeg/011.mp4
  zenity --info --no-wrap --text="Press OK key to continue" 
  rm -f  01.mp4 011.mp4 011.mp3 011.avi 011.jpg 011.gif 011.png ; sleep 1 
       }

 

 #  ffmpeg -i 01.jpg -vf scale=1450:1500 011.jpg
 # 1.Convert lansc to port and jpg to png
 #   for i in *.jpg ; do ffmpeg -i  "$i" -vf scale=1450:1500 "${i%.*}.jpg" ; done


 
 # 1. Duration 6 seconds
 #  ls *.png >ddd.txt
 # a) Portrait picture
 #  ffmpeg -framerate 1/6 -start_number 01 -i %2d.jpg  -r 30 -movflags +faststart 012.mp4
 #  sleep 5
 # b) Landscape pictu
 #  ffmpeg -framerate 1/6 -start_number 21 -i %2d.jpg  -vf scale=1200:1600 -r 30 -movflags +faststart 013.mp4
 # sleep 5

 # 2. jpg to mp4 

draw0="drawtext=fontfile=/home/$USER/work/ffmpeg/ttf/TIMCYRB.ttf"
draw0="drawtext=fontfile=/home/$USER/work/ffmpeg/ttf/TIMCYRI.ttf"
draw0="drawtext=fontfile=/home/$USER/work/ffmpeg/ttf/SchoolBook-Bold-Cyrillic_39689.ttf"  
shad0="shadowx=4:shadowy=4:borderw=2"
font0="fontcolor=#ffcc00:fontsize=60:bordercolor=white"
font7="fontcolor=red:fontsize=100:bordercolor=white"
coor1="x=(w-text_w)/2: y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2)"     # up to center
coor2="x=if(lt(t\,4)\,(-w+((3*w-tw)*t/8))\,(w-tw)/2): y=(h-100)/2"          # left to right
coor3="x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/10))\,(w-tw)/2): y=h/2"              # right to lrft
coor4="x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2)"   # dowun to center
coor5="x=(w-text_w)/2:y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2)"    # dowun to center
coor6="x=(w-text_w)/2:y=if(lt(t\,3)\,(-h+((3*h-1400)*t/6))\,(h-1400)/2)"    # up to center
coor7="x=(w-tw)/2:       y=h-t*135"                                         # dowun to up
coor8="x=(w-tw)/2:y=((h-th)-mod(3*n\,h+th+200))"                            # dowun to up
time1="enable='between(t,2.9,30)'"
time2="enable='between(t,3.5,30)'"
time3="enable='between(t,4.5,30)'"
time4="enable='between(t,5.5,30)'"
sound0="-i 01.mp3"
sound0=""


#ffmpeg  $sound0 -i 012.mp4 -vf "[in]\
#   $draw0 : text='ПРЕКРАСЕН !!!'                  :$shad0:$font7: $coor7: $time0  
# [out]" 011.mp4


 #  $draw0: text='Чести празник'                  :$shad0:$font0: $coor1: $time1, \
 #  $draw0: text='с пожелание за много настроение':$shad0:$font0: $coor2: $time2, \
 #  $draw0: text='от прекрасния летен'            :$shad0:$font0: $coor3: $time3, \
 #  $draw0: text='Бургас!'                        :$shad0:$font0: $coor4: $time4  \
 #  $draw0: text='ПРЕКРАСЕН !!!'                  :$shad0:$font0: $coor5: $time4  \
 #  $draw0: text='2020 ГОДИНА'                    :$shad0:$font0: $coor6: $time1  \
 #  $draw0: textfile=txt.txt                      :$shad0:$font0: $coor7: $time4  \
 #  $draw0: textfile=txt.txt                      :$shad0: $font7: $coor8: $time0 \
          #  txt.txt =     И ПО-ГОЛЕМ!
          #                И ПО-КРАСИВ!
          #                 И УМЕН!
          #                ПРЕКРАСЕН !!!'

 #  3. Merge  mp4
       # ffmpeg  -f concat -safe 0 -i 012.mp4 -i 013.mp4  -c copy 011.mp4
       # ffmpeg -safe 0 -f concat -i mp4.txt -c copy 011.mp4
       #  mp4.txt = file '012.mp4'
       #            file '013.mp4'
# ffmpeg -i 01.mp3 -f concat -safe 0 -i aaa.txt -c copy 011.mp4
sleep 3

  # ffplay -i  011.mp4 
    celluloid  011.mp4 
