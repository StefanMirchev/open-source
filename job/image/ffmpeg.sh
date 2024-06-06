#!/bin/bash
# ttf -> https://www.1001freefonts.com/search.php?q=&d=0&page=2/
#         https://freefontsdownload.net/

rm -f 011.mp4 011.mp3 011.avi 011.jpg 011.gif dxctechnology.jpg ; sleep 1 

in0=~/Videos/01.mp4

text0="text='Stack Overflow'"
text0="textfile=aaa.txt"
text0="Светът си става все по-хубав и по-хубав въпреки всичко! Благословени сме земляните с всеки дарен ни ден на тази невероятна планета! Весели Коледни и Новогодишни празници! "
text0="ЧЕСТИТА НОВАТА 2022 ГОДИНА С ПОЖЕЛАНИЕ ДА МАХНЕМ МАСКИТЕ И ВЪРНЕМ ВЕЛИКОЛЕПИЕТО НА УСМИВКИТЕ И ЗВУЧНОСТТА НА ЖИВОТА СИ КАКТО Е В ТАЗИ ПРЕКРАСНА ПЕСЕН!                                  ®CM"
text0="ЧЕСТИТА"
text0="Сутрин кът са видя в огледалото го олигавям от целувки"
# text0="ЧЕСТИТА ОСМИ МАРТ ПО ЖЕЛАВАМ ТИ МНОГО ВЕСЛ ПЗНИК НАЗДРАВЕ!                                                                     
#                                                                          ®cм"

# text0="It is the path of the output video file which will be generateed"



draw0="drawtext=text=$text0:fontfile=ttf/Foo.ttf"
draw0="drawtext=text=$text0:fontfile=ttf/SchoolBook-Bold-Cyrillic_39689.ttf"
#  draw0="drawtext=text=$text0:fontfile=ttf/FreeSerif.ttf"

font0="fontcolor=red:fontsize=40"       # red
font0="fontcolor=ffcc00:fontsize=40"    # gold
font0="fontcolor=white:fontsize=40"     # white

coor0="x=(w-text_w)/2:y=(h-text_h)/2"    # fix text
coor1="y=h-line_h-10:x=w-(t-4.5)*w/5.5"  #  Scrolling text
coor2="x=min(4*(tw\+10)-(abs(4-2*(t-2.5)))*(tw+10)-tw\,10):y=h-th-130"        #  Scrolling text
coor3="x=w-tw-10:y=h-th-10"
coor4="y=h-line_h-10:x=w-mod(max(t-4.5\,0)*(w+tw)/5.5\,(w+tw))"
coor5="x='if(gt(x\,-tw),w-mod(4*n\,w+tw)\,w)'"  # vere sloly speed
coor6="x='(w-text_w)/2+20:y=h-40*t'"   # botton - up
coor7="x=100:y=x/dar:enable=lt(mod(t\,3)\,1):text='blink'"   # botton - up

code0="-codec:a copy 011.mp4" 


#  Top left: x=0:y=0 (with 10 pixel padding x=10:y=10)
#  Top center: x=(w-text_w)/2:y=0 (with 10 px padding x=(w-text_w)/2:y=10)
#  Top right: x=w-tw:y=0 (with 10 px padding: x=w-tw-10:y=10)
#  Centered: x=(w-text_w)/2:y=(h-text_h)/2
#  Bottom left: x=0:y=h-th (with 10 px padding: x=10:y=h-th-10)
#  Bottom center: x=(w-text_w)/2:y=h-th (with 10 px padding: x=(w-text_w)/2:y=h-th-10)
#  Bottom right: x=w-tw:y=h-th (with 10 px padding: x=w-tw-10:y=h-th-10)

 
# 1. Show text
  #  between 0-10 seconds:
  #  shad0="shadowx=1:shadowy=1"
  #  time0="enable='gte(t,3)'"
  #  time0="enable='between(t,0,10)'" 
  #  ffmpeg -i 01.mp4 -vf "$draw0:$coor1:$font0:$shad0:$box0:$time0" $code0
#   between 5-10 seconds:
   # shad0="shadowx=2:shadowy=2"
   # box0="box=1:boxcolor=black@0.5:boxborderw=5"
   # time0="enable='between(t,5,20)'"

   # ffmpeg -i 01.mp4 -vf "$draw0:$coor1:$font0:$shad0:$box0:$time0" $code0

# Text blink
#   ffmpeg -i 01.mp4 -vf "$draw0:$coor7:$font0:$shad0:$box0" $code0
 
 # leter down
 # ffmpeg -i 01.mp4 -vf "drawtext=fontfile=/path/to/font.ttf: text ='Test Line':fontcolor=red:fontsize=65:x=100: y=if(lt(t\,8)\,30*t\,240)" 011.mp4
 
 # leter  from left to right on fon
 #   ffmpeg -i 01.mp4 -vf "drawbox=y=ih-80:color=#ef2626@0.8:width=iw:height=80:t=fill,drawtext=text='This is a testing text example.':expansion=normal:y=h-line_h-20:x='if(eq(t\,0)\,w\,if(lt(x\,(0-tw))\,w\,x-4))':fontfile='Lora/Lora-Regular.ttf':fontcolor=white: fontsize=40" 011.mp4
 #   ffmpeg -i 01.mp4 -vf "drawbox=y=ih-80:color=#ef2626@0.8:width=iw:height=80:t=fill,drawtext=text='This is a testing text example.':expansion=normal:y=h-line_h-20:fontfile='Lora/Lora-Regular.ttf':fontcolor=white: fontsize=40" 011.mp4
    # !!!!!!!!   ffmpeg -i 01.mp4 -vf "drawtext=text=$text0:expansion=normal:y=h-line_h-20:x='if(eq(t\,0)\,w\,if(lt(x\,(0-tw))\,w\,x-4))':fontfile='Lora/Lora-Regular.ttf':fontcolor=white: fontsize=40" 011.mp4

 # Write one text
 # ffmpeg -i 01.mp4  -filter_complex "drawtext=fontfile=Lato-Light.ttf:text=$text0:fontsize=30:fontcolor=white:alpha='if(lt(t,2),0,if(lt(t,4),(t-2)/2,if(lt(t,11),1,if(lt(t,13),(2-(t-11))/2,0))))':x=(w-text_w)/2:y=h-th-20,pad=width=ceil(iw/2)*2:height=ceil(ih/2)*2" 011.mp4



# Write teft from left fro right color
#  ffmpeg -i 01.mp4 -vf "[in]drawtext=fontfile=/path/to/font.ttf: text='First Line':fontcolor=red: fontsize=40: x=(w-text_w)/2:y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2):enable='between(t,2.9,50)', \
#  drawtext=fontfile=/path/to/font.ttf:text='Second Line': fontcolor=yellow: fontsize=30:x=if(lt(t\,4)\,(-w+((3*w-tw)*t/8))\,(w-tw)/2): y=(h-100)/2:enable='between(t,3.5,50)', \
#  drawtext=fontfile=/path/to/font.ttf: text='Third Line': fontcolor=blue: fontsize=50:x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/10))\,(w-tw)/2): y=h/2:enable='between(t,4.5,50)', \
#  drawtext=fontfile=/path/to/font.ttf: text='Fourth Line': fontcolor=black:fontsize=20: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2):enable='between(t,5.5,50)'[out]" 011.mp4
#
#  ffmpeg -i 01.mp4 -vf "[in] \
#  drawtext=fontfile=/path/to/font.ttf:text='First Line' :fontcolor=red   :fontsize=30:x=(w-text_w)/2:y=if(lt(t\,3)\,(-h+ ((3*h-200)*t/6)) \,(h-200)/2):enable='between(t,0.5,50)', \
#  drawtext=fontfile=/path/to/font.ttf:text='Second Line':fontcolor=yellow:fontsize=30:x=if(lt(t\,4)\,(-w+((3*w-tw)*t/8))  \,(w-tw)/2): y=(h-100)/2    :enable='between(t,3.5,50)', \
#  drawtext=fontfile=/path/to/font.ttf:text='Third Line ':fontcolor=blue  :fontsize=30:x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/10))\,(w-tw)/2): y=h/2          :enable='between(t,4.5,50)', \
# [out]" 011.mp4

# fmpeg -i 01.mp4 -vf "drawtext=fontfile=/path/to/font.ttf:text='Stack Overflow':fontcolor=white:fontsize=24:box=1:boxcolor=black@0.5:boxborderw=5:x=(w-text_w)/2:y=(h-text_h)/2:enable='between(t,5,10)'" -codec:a copy 011.mp4


# Write teft from left from right color
# ffmpeg -i 01.mp4 -vf "[in]drawtext=fontfile=/path/to/font.ttf: text='First Line': fontcolor=red: fontsize=40: x=(w-text_w)/2: y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2): enable='between(t,2.9,50)',drawtext=fontfile=/path/to/font.ttf: text='Second Line': fontcolor=yellow: fontsize=30: x=if(lt(t\,4)\,(-w+((3*w-tw)*t/8))\,(w-tw)/2): y=(h-100)/2:enable='between(t,3.5,50)' ,drawtext=fontfile=/path/to/font.ttf: text='Third Line': fontcolor=blue: fontsize=50: x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/10))\,(w-tw)/2): y=h/2:enable='between(t,4.5,50)', drawtext=fontfile=/path/to/font.ttf: text='Fourth Line': fontcolor=black: fontsize=20: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2): enable='between(t,5.5,50)'[out]" 011.mp4
# ffmpeg -i 01.mp4 -vf "[in]\
# drawtext=fontfile=/path/to/font.ttf: text='First Line':  fontcolor=red:    fontsize=60: x=(w-text_w)/2: y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2):   enable='between(t,2.9,50)', \
# drawtext=fontfile=/path/to/font.ttf: text='Second Line': fontcolor=yellow: fontsize=60: x=if(lt(t\,4)\,(-w+((3*w-tw)*t/8))\,(w-tw)/2): y=(h-100)/2:        enable='between(t,3.5,50)', \
# drawtext=fontfile=/path/to/font.ttf: text='Third Line':  fontcolor=blue:   fontsize=60: x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/10))\,(w-tw)/2): y=h/2:            enable='between(t,4.5,50)', \
# drawtext=fontfile=/path/to/font.ttf: text='Fourth Line': fontcolor=black:  fontsize=60: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2): enable='between(t,5.5,50)'[out]" 011.mp4

# Write teft from left from right color from down up
#  ffmpeg -i 01.mp4 -vf "[in]\
#  drawtext=fontfile=/path/to/font.ttf: text='First ': fontcolor=red:    fontsize=60: x=(w-text_w)/2: y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2):   enable='between(t,2.9,50)', \
#  drawtext=fontfile=/path/to/font.ttf: text='Second': fontcolor=yellow: fontsize=60: x=if(lt(t\,4)\,(-w + ((3*w-tw)*t/12)) \,(w-tw)/12): y=(h-100)/2:        enable='between(t,3.5,50)', \
#  drawtext=fontfile=/path/to/font.ttf: text='Third ': fontcolor=blue:   fontsize=60: x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/10))\,(w-tw)/2): y=h/2:            enable='between(t,4.5,50)', \
#  drawtext=fontfile=/path/to/font.ttf: text='Fourth': fontcolor=black:  fontsize=60: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2): enable='between(t,5.5,50)'[out]" 011.mp4



# Write teft from left from right color from down up
# ffmpeg -i 01.mp4 -vf "[in]\
# drawtext=fontfile=/path/to/font.ttf: text='First ': fontcolor=red:    fontsize=60: x=(w-text_w)/2: y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2):   enable='between(t,2.9,50)', \
# drawtext=fontfile=/path/to/font.ttf: text='Second': fontcolor=yellow: fontsize=60: x=if(lt(t\,4)\,(-w + ((3*w-tw)*t/12)) \,(w-tw)/12): y=(h-100)/2:        enable='between(t,3.5,50)', \
# drawtext=fontfile=/path/to/font.ttf: text='Third ': fontcolor=blue:   fontsize=60: x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/12))\,(w-tw)/12): y=h/2:            enable='between(t,4.5,50)', \
# drawtext=fontfile=/path/to/font.ttf: text='Fourth': fontcolor=black:  fontsize=60: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2): enable='between(t,5.5,50)'[out]" 011.mp4

# Write teft from left from right color
#  ffmpeg -i 01.mp4 -vf "[in]\
#  drawtext=fontfile=/path/to/font.ttf: text='First ': fontcolor=red:    fontsize=60: x=(w-text_w)/2: y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2):   enable='between(t,2.9,50)', \
#  drawtext=fontfile=/path/to/font.ttf: text='Second': fontcolor=yellow: fontsize=60: x=if(lt(t\,4)\,(-w + ((3*w-tw)*t/12)) \,(w-tw)/12): y=(h-100)/2:        enable='between(t,3.5,50)', \
#  drawtext=fontfile=/path/to/font.ttf: text='Third ': fontcolor=blue:   fontsize=60: x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/1))\,(w-tw)/1): y=h/2:            enable='between(t,4.5,50)', \
#  drawtext=fontfile=/path/to/font.ttf: text='Fourth': fontcolor=black:  fontsize=60: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2): enable='between(t,5.5,50)'[out]" 011.mp4


# Write teft from left from right color
# ffmpeg -i 01.mp4 -vf "[in]\
# drawtext=fontfile=/path/to/font.ttf: text='First ': fontcolor=red:    fontsize=60: x=(w-text_w)/2: y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2):   enable='between(t,2.9,50)', \
# drawtext=fontfile=/path/to/font.ttf: text='Second': fontcolor=yellow: fontsize=60: x=if(lt(t\,4)\,(-w + ((3*w-tw)*t/12))\,(w-tw)/12): y=(h-100)/2:        enable='between(t,3.5,50)', \
# drawtext=fontfile=/path/to/font.ttf: text='Third ': fontcolor=blue:   fontsize=60: x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/10))\,(w-tw)/1.5): y=h/2:            enable='between(t,4.5,50)', \
# drawtext=fontfile=/path/to/font.ttf: text='Fourth': fontcolor=black:  fontsize=60: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2): enable='between(t,5.5,50)'[out]" 011.mp4


# Write teft from left from right color
# ffmpeg -i 01.mp4 -vf "[in]\
# drawtext=fontfile=/path/to/font.ttf: text='First ': fontcolor=red:    fontsize=60: x=(w-text_w)/2: y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2):   enable='between(t,2.9,50)', \
# drawtext=fontfile=/path/to/font.ttf: text='Second': fontcolor=yellow: fontsize=60: x=if(lt(t\,4)\,(-w + ((3*w-tw)*t/12))\,(w-tw)/12): y=(h-100)/2:        enable='between(t,3.5,50)', \
# drawtext=fontfile=/path/to/font.ttf: text='Third ': fontcolor=blue:   fontsize=60: x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/12))\,(w-tw)/1.2): y=h/2:            enable='between(t,4.5,50)', \
# drawtext=fontfile=/path/to/font.ttf: text='Fourth': fontcolor=black:  fontsize=60: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2): enable='between(t,5.5,50)'[out]" 011.mp4


# draw0="drawtext=$text0:fontfile=/ttf/foo.ttf"
 # ffmpeg -i 01.mp4 -vf "$draw0:y=h-line_h-10:x=w-(t-4.5)*w/5.5:fontcolor=white:fontsize=40:shadowx=2:shadowy=2" 011.mp4
     #          draw0="drawtext=fontfile=/ttf/foo.ttf"
# 2.  From to -to position duration 20 sec
 #    ffmpeg -i Andre.mp4 -ss 00 -to 40  .... -ss 60 -to 80 -c copy 011.mp4
    
# rm -f  111.avi ; sleep  1; ffmpeg -i abc.avi -ss 00:00:00.000 -t 00:00:06.000  111.avi
   # ffmpeg -i abc.avi -ss 00:00:06.390 -t 00:00:05.740  112.avi
   # ffmpeg -i aaa.mp4 -ss 00:00:00.000 -t 00:05:30.000  112.mp4
   # ffmpeg -i aaa.mp4 -ss 00:05:30.000 -t 00:05:00.000  113.mp4
   # ffmpeg -i aaa.mp4 -ss 00:10:30.000 -t 00:05:30.000  114.mp4
   # ffmpeg -i aaa.mp4 -ss 00:07:21.000 -t 00:02:27.000  115.mp4
   # ffmpeg -i aaa.mp4 -ss 00:09:48.000 -t 00:02:27.000  116.mp4
   # ffmpeg -i aaa.mp4 -ss 00:12:15.000 -t 00:01:25.000  117.mp4


# 3.  How to do I convert an animated gif to an mp4 or mv4 on the command line?
#     ffmpeg -i animated.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" video.mp4
# 4.1  gif + Audio = mp4 
      #  ffmpeg -i 01.mp3 -ignore_loop 0 -i 01.gif -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -shortest -strict -2 -c:v libx264 -threads 4 -c:a aac -b:a 192k -pix_fmt yuv420p -shortest 011.mp4
# 4.2  gif to mp4
      # ffmpeg -i 01.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2"  011.mp4
# 4.3 .jpg+mp3
      # ffmpeg -loop 1 -i papa.jpg -i 01.mp3 -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest 01.mp4
# 5.  jpg to gif
      # ffmpeg -f image2 -framerate 8 -i out_%03d.jpg out.gif  
# 6.  mp4 to jpg
      #  ffmpeg -i 01.mp4 -qscale:v 2 %03d.jpg
# 7   gif to jpg gpg
      #  ffmpeg -i wonder2.gif -y -s 174x96 -pix_fmt yuvj420p OUT.JPG
      #    ffmpeg -i mylogo.gif -y  -pix_fmt yuvj420p mylogo.jpg
      #  ffmpeg -i wonder2.gif  -y -hide_banner out%d.png
# 8. remove sound fro .mp4 
      # ffmpeg -i 01.mp4 -an 011.mp4
# 9. .mp4 to mp3
      #  ffmpeg -i 01.mp4 011.mp3
      #  ffmpeg -i 01.mp4 -vn 011.mp3
# 10. Volume min
      # ffmpeg -i 01.mp4 -af "volume=-15dB" -c:v copy -c:a aac -b:a 192k 011.mp4
# 11.  Sumary .avi
      # ffmpeg -i 111.avi  -i 112.avi -i 113.avi \
      # filter_complex "[0:v] [0:a] [1:v] [1:a] [2:v] [2:a] 
      # concat=n=3:v=1:a=1 [vv] [aa]" \
      # -map "[vv]" -map "[aa]" 011.avi
      # ffmpeg -i 111.avi -i 112.avi -i 113.avi -c 011.avi
# 12. Resuze image ,  transperance -> -pix_fmt rgba
      # ffmpeg -i tran.png -pix_fmt rgba -vf scale=205:205 011.png
      # ffmpeg -i mylogo0.jpg -pix_fmt rgba -vf scale=50:50 011.png
# 13 Covert mov to mp4
      # ffmpeg -i input.mov -qscale 0 output.mp4
#  14 Combine jpg to mp4 
    #  a=1 ; for i in IMG_*.jpg; do  new=$(printf "%03d.jpg" "$a") ; mv -i -- "$i" "$new" ; a=$((a+1)) ; done ; sleep 2
    # ffmpeg -y -framerate 1/2 -start_number 1  -i %3d.jpg -vf scale=720:756 -c:v libx264 -r 10 -pix_fmt yuv420p videos.mp4
    # ffmpeg -y -framerate 1/2 -start_number 1  -i %3d.jpg videos.mp4

# 1II. FFPLAY
# 1.  ffmpeg -i ~/Music/8Minute.avi -af "equalizer=f=1000:width_type=h:width=200:g=-10" 011.avi
# 2.  ffmpeg -i video.avi -vf subtitles=subtitle.srt out.avi
#     ffmpeg -i ~/Music/8Minute.avi -af "equalizer=f=440:width_type=o:width=2:g=5" 013.avi
#  ffmpeg -i ~/Music/8Minute.avi -af "equalizer=f=10000:width_type=h:width=2000:g=-10" 016.avi
 # ffmpeg -i ~/Music/8Minute.avi -af "equalizer=f=10000:width_type=h:width=2000:g=-50" 017.avi
# ffmpeg -i  ~/Music/8Minute.avi  -af equalizer=frequency=11000:width=1200:width_type=h:gain=-10,equalizer=frequency=18000:width=11000:width_type=h:gain=-5 013.avi
# ffmpeg -i ~/Music/8Minute.avi -af equalizer=frequency=1000:width=200:width_type=h:gain=-10,equalizer=frequency=8000:width=1000:width_type=h:gain=-5 014.avi

 # * Doctor
#  rm ~/work/library/image/hlp/doctor_01.JPG ; sleep 1
#  a00="/home/kosy/work/library/image/hlp/doctor_00.jpg"
#  a01="/home/kosy/work/library/image/hlp/doctor_01.jpg"
#  ffmpeg -i $a00 -vf " \
#  drawtext=fontfile=/home/kosy/work/ffmpeg/ttf/bp-mono/BPmonoBold.ttf:text=' Wednesday ':fontcolor=#E90DD7:fontsize=25:x=10:y=10:, \
#  drawtext=fontfile=/home/kosy/work/ffmpeg/ttf/arial/arial.ttf:text='31.08.2022':fontcolor=black:fontsize=25:x=10:y=35:, \
#  drawtext=fontfile=/path/to/OpenSans.ttf:text='15.40 hours':fontcolor=black:fontsize=25 :x=10:y=60:, \
#  drawtext=fontfile=/path/to/OpenSans.ttf:text='Mo  We  Fr 08-13':fontcolor=black:fontsize=22: \
#  x=10:y=565::, \
#  drawtext=fontfile=/path/to/OpenSans.ttf:text='Tu   Th   15-19':fontcolor=black:
#   fontsize=22:  x=40:y=600:" -y $a01
#   pqiv -c -c -i ~/work/library/image/hlp/doctor_01.jpg &
  
  * A1
#  rm ~/work/library/image/hlp/A1.jpg ; sleep 1
#  a00="/home/kosy/work/library/image/hlp/A1_00.jpg"
#  a01="/home/kosy/work/library/image/hlp/A1.jpg"
#  ffmpeg -i $a00 -vf " \
#  drawtext=fontfile=/home/kosy/work/ffmpeg/ttf/arial/arial.ttf:text='14.07.2024':
#  fontcolor=black:fontsize=32:x=45:y=175: " -y $a01
#  pqiv -c -c -i ~/work/library/image/hlp/A1.jpg &
#
#  sleep 15


  # KITCHEN 
  
 #  box0="box=1:boxcolor=white@1.0:boxborderw=15:"
 #  rm ~/work/library/image/hlp/smehurko_01.jpg ; sleep 1
#   a00="/home/kosy/work/library/image/hlp/smehurko.jpg"
# #  a01="/home/kosy/work/library/image/hlp/smehurko_01.jpg"
#  ffmpeg -i $a00 -vf "drawbox=y=ih-120:color=white@0.9:width=iw:height=120:t=fill, \
#  drawtext=text='This is a testing text example.':expansion=normal:y=h-line_h-20: \
#  fontfile='Lora/Lora-Regular.ttf':fontcolor=black: fontsize=40" 011.mp4
 


 #  ffmpeg -i $a00 -vf " \
 #  drawtext=fontfile=/home/kosy/work/ffmpeg/ttf/arial/arial.ttf:text='23.05.2022': \
 #  fontcolor=#0BB429:fontsize=52:x=100:y=1400: $box0" -y $a01
 #  pqiv -c -c -i ~/work/library/image/hlp/smehurko_01.jpg &


# Draw box
# ffmpeg -i 01.jpg -vf "drawbox=x=10:y=20:w=200:h=60:color=red@0.5" -y 011.jpg

# Resize image
# ffmpeg -i 01.jpg -vf scale="'if(gt(a,1/1),320,-1)':'if(gt(a,1/1),-1,240)'" 011.jpg
 ffmpeg -i 02.png -vf scale=70:20 01.png

# Square 
# ffmpeg -i 01.jpg -vf drawbox=x=100:y=100:w=100:h=100:c=red 011.jpg
# ffmpeg -i 01.jpg -filter:v drawbox=x=10:y=10:w=100:h=100:color=0xFFFFFF:t=fill -q:v 3 -f image2 011.jpg
# ffmpeg -i 01.jpg -filter:v drawbox=x=10:y=10:w=100:h=100:color=white:t=fill -q:v 3 -f image2 011.jpg
# ffmpeg -i 01.jpg -vf "drawbox=0:0:100-0:100-0:c=black@0.9:t=fill" 011.jpg


 #   ffplay -i  011.jpg
#  ffplay -i  /home/kosy/work/ffmpeg/014.avi
#  ffplay -i ~/Music/8Minute.avi 
    # pix $a01
 