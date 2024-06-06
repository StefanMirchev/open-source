#!/bin/bash


 ❗❗❗ BE CAREFUL WITH COMMA ‚‚‚‚‚‚‚‚‚‚‚‚‚‚‚‚‚‚‚‚‚ ❗❗❗
 
# ttf -> https://www.1001freefonts.com/search.php?q=&d=0&page=2/
#        https://freefontsdownload.net/
# Text on video -> 
# Musick for children
# 1. https://taketones.com/genres/kids  si_mirchev@abv.bg di or with 0
# 2  https://www.chosic.com/free-music/children/
# 3  https://pixabay.com/music/search/genre/happy%20childrens%20tunes/
# 4  https://www.ashamaluevmusic.com/epic-music
# 5  https://mixkit.co/free-stock-music/children/

# rm -f 011.mp4 011.mp3 011.avi 011.jpg 011.gif 011.png ; sleep 1 
# rm -f 011.mp4  ; sleep 1 


    
   # ffmpeg -y -i ho_pech.png -vf "scale=151:153"  aa.png
   # ffmpeg -y -i aa.png -vf "colorkey=white:0.3:0.0" bb.png
    ffmpeg -y -i bb.png -vf "rotate=5*PI/180"  01.png
    ffmpeg -y -i bb.png -vf "rotate=33*PI/180"  02.png
    ffmpeg -y -i bb.png -vf "rotate=85*PI/180"  03.png
    ffmpeg -y -i bb.png -vf "rotate=115*PI/180"  04.png
    ffmpeg -y -i bb.png -vf "rotate=180*PI/180"  05.png
    ffmpeg -y -i bb.png -vf "rotate=-80*PI/180"  06.png




exit

pause(){
  # read -n1 -p " Press [Enter] key to continue..." 
  # while read -rsn1 k 
  # read   -p " Press [Enter] key to continue..." fackEnterKey
  ffplay -i  ~/work/ffmpeg/011.mp4
  zenity --info --no-wrap --text="Press OK key to continue" 
  rm -f 011.mp4 011.mp3 011.avi 011.jpg 011.gif 011.png ; sleep 1 
       }


in0=~/Videos/01.mp4

text0="text='Stack Overflow'"
text0="textfile=aaa.txt"
text0="Светът си става все по-хубав и по-хубав въпреки всичко! Благословени сме земляните с всеки дарен ни ден на тази невероятна планета! Весели Коледни и Новогодишни празници! "
text0="ЧЕСТИТА НОВАТА 2022 ГОДИНА С ПОЖЕЛАНИЕ ДА МАХНЕМ МАСКИТЕ И ВЪРНЕМ ВЕЛИКОЛЕПИЕТО НА УСМИВКИТЕ И ЗВУЧНОСТТА НА ЖИВОТА СИ КАКТО Е В ТАЗИ ПРЕКРАСНА ПЕСЕН!                                  ®CM"
text0="ЧЕСТИТА"
text0="Сутрин кът са видя в огледалото го олигавям от целувки"
# text0="Честит 8-ми Март, Ани ПО ЖЕЛАВАМ ТИ МНОГО ВЕСЛ ПЗНИК НАЗДРАВЕ!                                                                     

#                                                                          ®cм"

# text0="It is the path of the output video file which will be generateed"



draw0="drawtext=text=$text0:fontfile=~/work/ffmpeg/ttf/Foo.ttf"
draw0="drawtext=text=$text0:fontfile=~/work/ffmpeg/ttf/SchoolBook-Bold-Cyrillic_39689.ttf"
#  draw0="drawtext=text=$text0:fontfile=~/work/ffmpeg/ttf/FreeSerif.ttf"

font0="fontcolor=red:fontsize=40"       # red
font1="fontcolor=ffcc00:fontsize=40"    # gold
font0="fontcolor=white:fontsize=40"     # white

coor0="x=(w-text_w)/2:y=(h-text_h)/2"    # fix text
coor1="y=h-line_h-10:x=w-(t-4.5)*w/5.5"  #  Scrolling text  speed -> (t-4.5)*w/5.5
coor2="x=min(4*(tw\+10)-(abs(4-2*(t-2.5)))*(tw+10)-tw\,10):y=h-th-130"        #  Scrolling text
coor3="x=w-tw-10:y=h-th-10"
coor4="y=h-line_h-10:x=w-mod(max(t-4.5\,0)*(w+tw)/5.5\,(w+tw))"
coor5="x='if(gt(x\,-tw),w-mod(4*n\,w+tw)\,w)'"  # vere sloly speed
coor6="x='(w-text_w)/2+20:y=h-40*t'"   # botton - up
coor7="x=100:y=x/dar:enable=lt(mod(t\,3)\,1):text='blink'"   # botton - up

code0="-codec:a copy 011.mp4" 

# echo 'aaaaaaaaaaaaaaaaaaaaaaaa' ; sleep 3

#  Top left: x=0:y=0 (with 10 pixel padding x=10:y=10)
#  Top center: x=(w-text_w)/2:y=0 (with 10 px padding x=(w-text_w)/2:y=10)
#  Top right: x=w-tw:y=0 (with 10 px padding: x=w-tw-10:y=10)
#  Centered: x=(w-text_w)/2:y=(h-text_h)/2
#  Bottom left: x=0:y=h-th (with 10 px padding: x=10:y=h-th-10)
#  Bottom center: x=(w-text_w)/2:y=h-th (with 10 px padding: x=(w-text_w)/2:y=h-th-10)
#  Bottom right: x=w-tw:y=h-th (with 10 px padding: x=w-tw-10:y=h-th-10)

● 1. Show text from time to time
●   between 0-10 seconds:
  # draw0="drawtext=text=between 0-10 seconds:fontfile=~/work/ffmpeg/ttf/SchoolBook-Bold-Cyrillic_39689.ttf"
  # coor0="y=h-line_h-10:x=w-(t-4.5)*w/5.5" 
  # font0="fontcolor=ffcc00:fontsize=40"    # gold
  # shad0="shadowx=1:shadowy=1"
  # time0="enable='gte(t,0)'"
  # ffmpeg -i 01.mp4 -vf "$draw0:$coor0:$font0:$shad0:$time0"  011.mp4
  # ffplay -i 011.mp4
●  between 5-10 seconds:
   # draw0="drawtext=text=between 5-10 second:fontfile=~/work/ffmpeg/ttf/Foo.ttf"
   # coor0="y=h-line_h-10:x=w-(t-4.5)*w/5.5"  #  Scrolling text
   # font0="fontcolor=red:fontsize=40"       # red
   # shad0="shadowx=2:shadowy=2"
   # box0="box=1:boxcolor=black@0.5:boxborderw=5"
   # time0="enable='between(t,5,20)'"
   # ffmpeg -i 01.mp4 -vf "$draw0:$coor0:$font0:$shad0:$box0:$time0" $code0
   # ffplay -i 011.mp4

● 2. Show from down to Up
  #draw0="drawtext=fontfile=~/work/ffmpeg/ttf/tahoma.ttf:text=Scroll.txt"
  #font0="fontcolor=green:fontsize=40:bordercolor=white"
  #coor0="x=(w-text_w)/2+20:y=h-40*t"
  #bord0="borderw=2[txt];[orig]crop=iw:50:0:0[orig];[txt][orig]overlay" 
  #code0=" -c:v libx264 -y -preset ultrafast 011.mp4"
  #ffmpeg -i 01.mp4 -filter_complex  "[0]split[txt][orig];[txt]$draw0:$font0:$coor0:$bord0" $code0
  #ffplay -i 011.mp4

● 3. Speed show text
    #draw0="drawtext=fontfile=Futura.ttc:text='Ha Ha Ha'"
    #coor0="x=w-(100*t):y=((h)/2)"  #  Scrolling text
    #font0="fontcolor=#444444:fontsize=40"      
    #shad0="shadowx=2:shadowy=2"
    #box0="box=1:boxcolor=black@0.5:boxborderw=5"
    #code0=" -c:v libx264 -t 5 011.mp4"
    #ffmpeg -y -f lavfi -i color=c=black:s=800x450:d=125 -vf "[in]$draw0:$coor0:$font0[out]" -c:v libx264  -t 5 011.mp4
    #ffplay -i 011.mp4

● 4.  Text blink
   # draw0="drawtext=fontfile=Futura.ttc:text='blink'"
   # coor0="x=100:y=x/dar:enable=lt(mod(t\,3)\,1)"
   # font0="fontcolor=yellow:fontsize=40:bordercolor=white"      
   # shad0="shadowx=2:shadowy=2"
   # box0="box=1:boxcolor=black@0.5:boxborderw=5"
   # code0=" -c:v libx264 -t 5 011.mp4"
   # ffmpeg -i 01.mp4 -vf "$draw0:$coor0:$font0:$box0" $code0
   # ffplay -i 011.mp4

# 5. leter down
   # draw0="drawtext=fontfile=Futura.ttc:text='leter down'"
   # coor0="x=100:y=if(lt(t\,8)\,30*t\,240)"
   # font0="fontcolor=red:fontsize=65:bordercolor=white"      
   # shad0="shadowx=2:shadowy=2"
   # box0="box=1:boxcolor=black@0.5:boxborderw=5"
   # code0=" -c:v libx264 -t 5 011.mp4"
   # ffmpeg -i 01.mp4 -vf "$draw0:$coor0:$font0:$box0" $code0
   # ffplay -i 011.mp4


● 6. leter  from left to right on fon linebar
   ● repl text
     #draw0="drawtext=fontfile=~/work/ffmpeg/ttf/Lora-Regular.ttf:text='This is a testing text exampleS':expansion=normal"
     #coor0="y=h-line_h-20:x='if(eq(t\,0)\,w\,if(lt(x\,(0-tw))\,w\,x-4))'"
     #font0="fontcolor=white:fontsize=40"      
     #shad0="shadowx=2:shadowy=2"
     #box0="drawbox=y=ih-80:color=#ef2626@0.8:width=iw:height=80:t=fill"
     #code0=" -c:v libx264 -t 5 011.mp4"
     #ffmpeg -i 01.mp4 -vf "$box0,$draw0:$coor0:$font0" 011.mp4
     #ffplay -i 011.mp4
   ●  Late
    # draw0="drawtext=fontfile=~/work/ffmpeg/ttf/Lora-Regular.ttf:text='This is a testing text exampleS':expansion=normal"
    # coor0="y=h-line_h-20:x='if(eq(t\,0)\,w\,if(lt(x\,(0-tw))\,w\,x-4))'"
    # font0="fontcolor=white:fontsize=40"      
    # shad0="shadowx=2:shadowy=2"
    # box0="drawbox=y=ih-80:color=#ef2626@0.8:width=iw:height=80:t=fill"
    # code0=" -c:v libx264 -t 5 011.mp4"
    # ffmpeg -i 01.mp4 -vf "$draw0:$coor0:$font0" 011.mp4
    # ffplay -i 011.mp4


 ● Write one text  slow onset ❗❗❗
 #    draw0="drawtext=fontfile=~/work/ffmpeg/ttf/Lato-Light.ttf:text='This is a testing text exampleS'"
 #    coor0="x=(w-text_w)/2:y=h-th-20"
 #    font0="fontcolor=black:fontsize=30"
 #    alph0="alpha='if(lt(t,2),0,if(lt(t,4),(t-2)/2,if(lt(t,11),1,if(lt(t,13),(2-(t-11))/2,0))))'"
 #    code0=" -c:v libx264 -t 5 011.mp4"
 #  #  ffmpeg -i 01.mp4 -vf "$draw0:$coor0:$font0:$alph0" 011.mp4
 #     ffmpeg -i 01.mp4  -filter_complex "drawtext=fontfile=~/work/ffmpeg/ttf/Lato-Light.ttf:text='This is a testing text example.':fontsize=30:fontcolor=black:alpha='if(lt(t,2),0,if(lt(t,4),(t-2)/2,if(lt(t,11),1,if(lt(t,13),(2-(t-11))/2,0))))':x=(w-text_w)/2:y=h-th-20,pad=width=ceil(iw/2)*2:height=ceil(ih/2)*2" 011.mp4
 # ffplay -i 011.mp4


 #ffmpeg -i 01.mp4 -vf "drawbox=y=ih-80:color=#ef2626@0.8:width=iw:height=80:t=fill,drawtext=text='This is a testing text example.':expansion=normal:y=h-line_h-20:fontfile='~/work/ffmpeg/ttf/Lora/Lora-Regular.ttf':fontcolor=white: fontsize=40" 011.mp4
 #ffplay -i 011.mp4

 ● 7.  Multi tetx  *
 # ffmpeg -i 01.mp4 -vf "[in]drawtext=text='https://gist.github.com/': fontcolor=white: borderw=2: fontfile=Arial Black: fontsize=w*0.04: x=(w-text_w)-(w*0.04): y=(h-text_h)-(w*0.04): enable='between(t,0,6)',\
 # drawtext=text='https://github.com/Stylesproline': fontcolor=white: borderw=2: fontfile=Arial Black: fontsize=w*0.04: x=(w-text_w)/2: y=(h-text_h)/2: enable='between(t,7,8)',\
 # drawtext=text='Stack I': fontcolor=white: borderw=2: fontfile=Arial Black: fontsize=w*0.04: x=(w-text_w)/2: y=(h-text_h)/2: enable='between(t,9,10)'[out]" -codec:a copy 011.mp4


● 8
 ● Write text from left fro right color
 # ffmpeg -i 01.mp4 -vf "[in]drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='First Line':fontcolor=red: fontsize=40: x=(w-text_w)/2:y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2):enable='between(t,2.9,50)', \
 # drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf:text='Second Line': fontcolor=yellow: fontsize=30:x=if(lt(t\,4)\,(-w+((3*w-tw)*t/8))\,(w-tw)/2): y=(h-100)/2:enable='between(t,3.5,50)', \
 # drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Third Line': fontcolor=blue: fontsize=50:x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/10))\,(w-tw)/2): y=h/2:enable='between(t,4.5,50)', \
 # drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Fourth Line': fontcolor=black:fontsize=20: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2):enable='between(t,5.5,50)'[out]" 011.mp4


● 9 ??????????????????????????????????
#  ffmpeg -i 01.mp4 -vf "[in] \
#  drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf:text='First Line' :fontcolor=red   :fontsize=30:x=(w-text_w)/2:y=if(lt(t\,3)\,(-h+ ((3*h-200)*t/6)) \,(h-200)/2):enable='between(t,0.5,50)', \
#  drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf:text='Second Line':fontcolor=yellow:fontsize=30:x=if(lt(t\,4)\,(-w+((3*w-tw)*t/8))  \,(w-tw)/2): y=(h-100)/2    :enable='between(t,3.5,50)', \
#  drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf:text='Third Line ':fontcolor=blue  :fontsize=30:x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/10))\,(w-tw)/2): y=h/2          :enable='between(t,4.5,50)', \
# fmpeg -i 01.mp4 -vf "drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf:text='Stack Overflow':fontcolor=white:fontsize=24:box=1:boxcolor=black@0.5:boxborderw=5:x=(w-text_w)/2:y=(h-text_h)/2:enable='between(t,5,10)'" -codec:a copy 011.mp4


● 10.  Write text from left from right color
# ffmpeg -ignore_loop 0 -i 01.png -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -shortest -strict -2 -c:v libx264 -threads 4 -c:a aac -b:a 192k -pix_fmt yuv420p -shortest 01.mp4
# ffmpeg -i 01.mp4 -vf "[in]drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='First Line': fontcolor=red: fontsize=40: x=(w-text_w)/2: y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2): enable='between(t,2.9,50)',drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Second Line': fontcolor=yellow: fontsize=30: x=if(lt(t\,4)\,(-w+((3*w-tw)*t/8))\,(w-tw)/2): y=(h-100)/2:enable='between(t,3.5,50)' ,drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Third Line': fontcolor=blue: fontsize=50: x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/10))\,(w-tw)/2): y=h/2:enable='between(t,4.5,50)', drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Fourth Line': fontcolor=black: fontsize=20: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2): enable='between(t,5.5,50)'[out]" 011.mp4
 


● 8-m MART  2023
● 1. Convert jpg to png
#  for i in *.jpg ; do ffmpeg -i "$i" "${i%.*}.png" ; done
# rm *.jpg
# rm *.png
● 2. ❗❗❗ Rename all png files count number renum if picture mo of 99 ❗❗❗
  #  a=1 ; for i in *.png; do  new=$(printf "%02d.png" "$a") ; mv -i -- "$i" "$new" ; a=$((a+1)) ; done ; sleep 2
● 3. First  an last picture 
 # ffmpeg -y -i 09.mp4 -vf "[in]\
 # drawtext=fontfile=~/work/ffmpeg/ttf/FreeSerif.ttf: text='Чести празник'                  :shadowx=4:shadowy=4:fontcolor=#ffcc00:fontsize=43: x=(w-text_w)/2: y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2): enable='between(t,2.9,50)', \
 # drawtext=fontfile=~/work/ffmpeg/ttf/FreeSerif.ttf: text='с пожелание за много настроение':shadowx=4:shadowy=4:fontcolor=#ffcc00:fontsize=43: x=if(lt(t\,4)\,(-w+((3*w-tw)*t/8))\,(w-tw)/2): y=(h-100)/2: enable='between(t,3.5,50)', \
 # drawtext=fontfile=~/work/ffmpeg/ttf/FreeSerif.ttf: text='от прекрасния летен'            :shadowx=4:shadowy=4:fontcolor=#ffcc00:fontsize=43: x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/10))\,(w-tw)/2): y=h/2:  enable='between(t,4.5,50)', \
 # drawtext=fontfile=~/work/ffmpeg/ttf/FreeSerif.ttf: text='Бургас!'                        :shadowx=4:shadowy=4:fontcolor=#ffcc00:fontsize=43: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2): enable='between(t,5.5,50)'[out]" 011.mp4

● 4. Convert png in mp4 Duration 10 second every png file
  • all png in one file 
  # ffmpeg -y -framerate 1/10 -start_number 01 -i %02d.png -vf scale=630:440 -c:v libx264 -r 10 -pix_fmt yuv420p 011.mp4 #
  • pmg file by file  
  # ffmpeg -y -framerate 1/10 -i 01.png -vf scale=630:440 -c:v libx264 -r 10 -pix_fmt yuv420p 01.mp4 
● 5. Volume sound 

  • Duration
   # ffmpeg -y -i 01.mp3 -ss 00:00:00.000 -t 00:1:33.000  02.mp3
  • More quieter
   #   ffmpeg -y -i 02.mp3 -af 'volume=0.1' 03.mp3
 •   Fade out volume sound duration 90 sek
   #  ffmpeg -y -i 02.mp3 -af "afade=t=out:st=80:d=12" 04.mp3

● 6. Export all mp4 into aaa.txt
    # ls *.mp4 > aaa.txt       with fornata file '01.mp4'
● 7. Sumary mergin all mp4 with sound to one file
  #  ffmpeg -y -i 04.mp3  -f concat -safe 0 -i aaa.txt  -c copy 012.mp4
● 8.  If need convert vido format mp4 file. 
  # ffmpeg -y -i 012.mp4 -vf scale=720:756 -c:v libx264 -r 10 -pix_fmt yuv420p 013.mp4
  #  ffmpeg -y -i 020.mp4 -vf scale=720:756 -c:v libx264 -r 10 -pix_fmt yuv420p 021.mp4

● 9.  Text in mp4 
     # draw0="drawtext=fontfile=Lato-Light.ttf:text='Честито Рождество Христово!'"
     # draw1="drawtext=fontfile=Lato-Light.ttf:text='Морската градина'"
     # draw0="drawtext=fontfile=Lato-Light.ttf:text='Плаж мост и фар'"
     # draw0="drawtext=fontfile=Lato-Light.ttf:text='Фестивал на пясъчните скулптури'"
     # draw0="drawtext=fontfile=Lato-Light.ttf:text='Бъдещ морски център на Бургас'"
     # draw0="drawtext=fontfile=Lato-Light.ttf:text='Много много весел празник!'"
     #  coor0="x=(w-text_w)/2:y=h-th-10"
     #  font0="fontcolor=brown:fontsize=30"
     #  alph0="alpha='if(lt(t,2),0,if(lt(t,4),(t-2)/2,if(lt(t,11),1,if(lt(t,13),(2-(t-11))/2,0))))'"
     # ffmpeg -y -i 09.mp4 -vf "$draw0:$coor0:$font0:$alph0"  014.mp4


● Write text from left from right color from down up
#  ffmpeg -i 01.mp4 -vf "[in]\
#  drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='First ': fontcolor=red:    fontsize=60: x=(w-text_w)/2: y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2):   enable='between(t,2.9,50)', \
#  drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Second': fontcolor=yellow: fontsize=60: x=if(lt(t\,4)\,(-w + ((3*w-tw)*t/12)) \,(w-tw)/12): y=(h-100)/2:        enable='between(t,3.5,50)', \
#  drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Third ': fontcolor=blue:   fontsize=60: x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/10))\,(w-tw)/2): y=h/2:            enable='between(t,4.5,50)', \
#  drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Fourth': fontcolor=black:  fontsize=60: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2): enable='between(t,5.5,50)'[out]" 011.mp4


● Write text from left from right color from down up NO
# ffmpeg -i 01.mp4 -vf "[in]\
# drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='First ': fontcolor=red:    fontsize=60: x=(w-text_w)/2: y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2):   enable='between(t,2.9,50)', \
# drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Second': fontcolor=yellow: fontsize=60: x=if(lt(t\,4)\,(-w + ((3*w-tw)*t/12)) \,(w-tw)/12): y=(h-100)/2:   enable='between(t,3.5,50)', \
# drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Third ': fontcolor=blue:   fontsize=60: x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/12))\,(w-tw)/12): y=h/2:           enable='between(t,4.5,50)', \
# drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Fourth': fontcolor=black:  fontsize=60: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2): enable='between(t,5.5,50)'[out]" 011.mp4



● Write text from left from right color
#  ffmpeg -i 01.mp4 -vf "[in]\
#  drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='First ': fontcolor=red:    fontsize=60: x=(w-text_w)/2: y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2):   enable='between(t,2.9,50)', \
#  drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Second': fontcolor=yellow: fontsize=60: x=if(lt(t\,4)\,(-w + ((3*w-tw)*t/12)) \,(w-tw)/12): y=(h-100)/2:        enable='between(t,3.5,50)', \
#  drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Third ': fontcolor=blue:   fontsize=60: x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/1))\,(w-tw)/1): y=h/2:            enable='between(t,4.5,50)', \
#  drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Fourth': fontcolor=black:  fontsize=60: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2): enable='between(t,5.5,50)'[out]" 011.mp4
# ffplay -i 011.mp4

● Write text from left from right color
# ffmpeg -i 01.mp4 -vf "[in]\
# drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='First ': fontcolor=red:    fontsize=60: x=(w-text_w)/2: y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2):   enable='between(t,2.9,50)', \
# drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Second': fontcolor=yellow: fontsize=60: x=if(lt(t\,4)\,(-w + ((3*w-tw)*t/12))\,(w-tw)/12): y=(h-100)/2:        enable='between(t,3.5,50)', \
# drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Third ': fontcolor=blue:   fontsize=60: x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/10))\,(w-tw)/1.5): y=h/2:            enable='between(t,4.5,50)', \
# drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Fourth': fontcolor=black:  fontsize=60: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2): enable='between(t,5.5,50)'[out]" 011.mp4


● Write text from left from right color  NO
# ffmpeg -i 01.mp4 -vf "[in]\
# drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='First ': fontcolor=red:    fontsize=60: x=(w-text_w)/2: y=if(lt(t\,3)\,(-h+((3*h-200)*t/6))\,(h-200)/2):   enable='between(t,2.9,50)', \
# drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Second': fontcolor=yellow: fontsize=60: x=if(lt(t\,4)\,(-w + ((3*w-tw)*t/12))\,(w-tw)/12): y=(h-100)/2:        enable='between(t,3.5,50)', \
# drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Third ': fontcolor=blue:   fontsize=60: x=if(lt(t\,5)\,(2*w-((3*w+tw)*t/12))\,(w-tw)/1.2): y=h/2:            enable='between(t,4.5,50)', \
# drawtext=fontfile=~/work/ffmpeg/ttf/Foo.ttf: text='Fourth': fontcolor=black:  fontsize=60: x=(w-text_w)/2: y=if(lt(t\,6)\,(2*h-((3*h-100)*t/12))\,(h+100)/2): enable='between(t,5.5,50)'[out]" 011.mp4


● 2. Show from down to Up *
#  draw0="drawtext=fontfile=tahoma.ttf:text=Scroll.txt"
#  font0="fontcolor=green:fontsize=40:bordercolor=white"
#  coor0="x=(w-text_w)/2+20:y=h-40*t"
#  bord0="borderw=2[txt];[orig]crop=iw:50:0:0[orig];[txt][orig]overlay" 
#  code0=" -c:v libx264 -y -preset ultrafast 011.mp4"
#  ffmpeg -i 01.mp4 -filter_complex  "[0]split[txt][orig];[txt]$draw0:$font0:$coor0:$bord0" $code0
 

● 1-MART  Sumary mergin  gif mp3 to mp4
#  ffmpeg -i Danced.mp3 -ignore_loop 0 -i a_izho.gif -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -shortest -strict -2 -c:v libx264 -threads 4 -c:a aac -b:a 192k -pix_fmt yuv420p -shortest 01.mp4
 # proc(){
 # string1="Aма моля Ви се с присъщатата ми чувствителност и спонтанна емоционалност не трябва да злоупотребявате уважаеми!" 
 #  draw1="drawtext=text=$string1"
 #  font2="fontcolor=ffcc00:fontsize=40"
 #  font2="fontcolor=#F09512:fontsize=40"
 #  coor2="y=h-line_h-10 :  x=w-(t-4.5)*w/5.5"
 #  coor2="x=w-(150*t) : y=h-line_h-10"  #  Scrolling text speed -> x=w-(150*t) vere good
 #  code0="-codec:a copy $ime1.mp4"
 #  shad0="shadowx=2:shadowy=2"
 #
 #   ffmpeg -i 01.mp4 -vf "$draw1:$coor2:$font2:$shad0" $code0
 #  echo ~/work/ffmpeg/1march/congr/$ime1.mp4 >> ~/work/ffmpeg/1march/congr/aaa.txt
 #      }
 #
 #   ime0="Ани" ; ime1='011';  proc
 # yad --info --text "aaaa"


● Mitache2
# ffmpeg -i 01.mp3 -loop 1 -i 01.png -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -shortest -strict -2 -c:v libx264 -threads 4 -c:a aac -b:a 192k -pix_fmt yuv420p -shortest 01.mp4  # mitache1
# draw0="drawtext=fontfile=~/work/ffmpeg/ttf/tahoma.ttf:text=aaa.txt"
# draw0="drawtext=fontfile=~/work/ffmpeg/ttf/tahoma.ttf:textfile=aaa.txt"
# font0="fontcolor=red:fontsize=60:bordercolor=white"
# coor0="x=(w-tw)/2:       y=h-t*60"
#  coor0="x=(w-tw)/2:y=((h-th)-mod(3*n\,h+th+100))"  # 3 times
# bord0="borderw=2" 
# time0="enable='between(t,0,90)'"
# code0=" -c:v libx264 -y -preset ultrafast 011.mp4"
#  ffmpeg -i 01.mp4 -vf "$draw0: $coor0: $font0: $bord0: $time0"  $code0


# ffmpeg -i 01.mp4 -filter_complex  "[0]split[txt][orig];[txt]$draw0:$font0:$coor0:$bord0" $code0

●  Scrol Image slide 

● scroll bottom 
 #  ffmpeg -f lavfi -i color=black:d=355:s=480x600 -loop 1 -i "01.jpg" -filter_complex "
 # [1:v]scale=80:-2[fg]; \
 # [0:v][fg]overlay=x='W-min(t*W/5.5\,w+W):(H-h)/1'[v] \
 #  " -map "[v]" -t 00:00:30 011.mp4
 # ffplay -i 011.mp4


#ffmpeg -f lavfi -i "color=black:d=15:s=480x600[background]; movie=1.png[overlay]; [background][overlay]overlay='W-n:(H-h)/1' " 011.mp4
# ffmpeg -hide_banner -y -loop 1 -r 2 -i '1.png' -i '2.png' -t 30 -c:v libx264 -filter_complex "[1:v]scale=iw*2.2:ih*2.2[scaled_cen],[0:v][scaled_cen]overlay=(main_w-overlay_w)/3+(t*10):(main_h-overlay_h)/2,format=pix_fmts=yuv420p" -r 30 011.mp4
# ffmpeg -loop 1 -i 1.png -i 02.mp4 -filter_complex "[1]scale=128:96[inner];[0][inner]overlay=70:70:shortest=1[out]" -map "[out]" -map 1:a -c:a copy -y 011.mp4
# ffmpeg -i 02.mp4 -i 1.png -filter_complex "[0:v][1:v] overlay=25:25:enable='between(t,0,10)'" -pix_fmt yuv420p -c:a copy 011.mp4
# ffmpeg -i 02.mp4 -i 1.png -filter_complex "[0:v][1:v] overlay=(W-w)/2:(H-h)/2:enable='between(t,0,20)'" -pix_fmt yuv420p -c:a copy 011.mp4
# ffmpeg -loop 1 -i 1.png -loop 1 -i 2.png -loop 1 -i 3.png -filter_complex "nullsrc=size=480x600[v0];[0:v]trim=duration=5,scale=480x600,setpts=PTS-STARTPTS,split[v1a][v1b];[1:v]trim=duration=5,scale=480x600,setpts=PTS-STARTPTS,split[v2a][v2b];[2:v]trim=duration=5,scale=480x600,setpts=PTS-STARTPTS[v3];[v0][v1a]overlay=x='min(-w+(t*w/0.5)\,0)':shortest=1[vv0];[v1b][v2a]overlay=x='min(-w+(t*w/0.5)\,0)':shortest=1[vv1];[v2b][v3]overlay=x='min(-w+(t*w/0.5)\,0)':shortest=1[vv2];[vv0][vv1][vv2]concat=n=3:v=1:a=0 [video]" -map "[video]" 011.mp4
# ffmpeg -y  -i "02.mp4" -loop 1 -i 1.png -i 2.png -i 3.png -filter_complex "[1][2]overlay=x=0:y=H-h:eval=init[over];[over]drawtext=fontfile=~/work/ffmpeg/ttf/impact.ttf:fontsize=72:text='WANDERHOUSE- - SUGAR':x=(w-text_w)/2:y=(h-170-text_h):fontcolor=white:shadowy=2:shadowx=2:shadowcolor=black[text];[text][3] overlay=x='floor(if(lt(-W+(n)*0.248182258846,0), -W+(n)*0.248182258846))':y=H-h:format=yuv444" -shortest -acodec copy -vcodec libx264 -pix_fmt yuv420p -preset ultrafast -crf 10 011.mp4 -report
# ffmpeg -f lavfi -i "color=black:d=15:s=480x600[background];movie='1.png' [overlay];[background][overlay]overlay='W-n:(H-h)/1'" 011.mp4



 # ffmpeg -loop 1 -i 1.png -loop 1 -i 2.png -loop 1 -i 3.png -filter_complex \
 # "nullsrc=size=480x600[abc];\
 # [0:v]trim=duration=5,scale=480x600,setpts=PTS-STARTPTS,split[aaa][ddd];\
 # [1:v]trim=duration=5,scale=40x60,setpts=PTS-STARTPTS[ggg];\
 # [abc][aaa]overlay=x='W-min(t*W/0.5\,w+W)':shortest=1[eee];\
 # [ddd][ggg]overlay=x='W-min(t*W/5.5\,W)':shortest=1[eee];\
 # [eee][eee]concat=n=2:v=1:a=0 [video]" -map "[video]" 011.mp4

● scrol image from right to left
#ffmpeg -loop 1 -i 01.png -filter_complex \
#       "split=2[bg][slider];[bg]drawbox=c=black:t=fill[bg];\
#        [bg][slider]overlay=x='max(W-(w/4)*t,0)':y=0" -t 10 011.mp4



● zoom 
# ffmpeg -i 1.png -filter_complex  "zoompan=z='zoom+0.002':d=25*4:s=1280x800" -pix_fmt yuv420p -c:v libx264 011.mp4


 # draw0="drawtext=$text0:fontfile=~/work/ffmpeg/ttf/foo.ttf"
 # ffmpeg -i 01.mp4 -vf "$draw0:y=h-line_h-10:x=w-(t-4.5)*w/5.5:fontcolor=white:fontsize=40:shadowx=2:shadowy=2" 011.mp4
    #          draw0="drawtext=fontfile=~/work/ffmpeg/ttf/foo.ttf"
● 2. Duration from to -to position duration 20 sec cut 
   # ffmpeg -i Andre.mp4 -ss 00 -to 40  .... -ss 60 -to 80 -c copy 011.mp4
    
# rm -f  111.avi ; sleep  1; ffmpeg -i abc.avi -ss 00:00:00.000 -t 00:00:06.000  111.avi
   # ffmpeg -i abc.avi -ss 00:00:06.390 -t 00:00:05.740  112.avi
   # ffmpeg -i aaa.mp4 -ss 00:00:00.000 -t 00:05:30.000  112.mp4
   # ffmpeg -i aaa.mp4 -ss 00:05:30.000 -t 00:05:00.000  113.mp4
   # ffmpeg -i aaa.mp4 -ss 00:10:30.000 -t 00:05:30.000  114.mp4
   # ffmpeg -i aaa.mp4 -ss 00:07:21.000 -t 00:02:27.000  115.mp4
   # ffmpeg -i aaa.mp4 -ss 00:09:48.000 -t 00:02:27.000  116.mp4
   # ffmpeg -i aaa.mp4 -ss 00:12:15.000 -t 00:01:25.000  117.mp4
   # ffmpeg -i re.mp3 -ss 00:01:01.000 -t 00:01:00.000  117.mp3
   # ffmpeg -i Alfonse.mp4 -ss 00:10:23.000 -t 00:00:23.000  011.mp4


● 3.   gif to mp4 
# string1="Добре бе човек съжалявам!"
#  flags0=" -movflags faststart -pix_fmt yuv420p "
#  draw1="drawtext=text=$string1:fontfile=~/work/ffmpeg/ttf/foo.ttf"
#        drawtext=fontfile=~/work/ffmpeg/ttf/OpenSans.ttf:text='Stack Overflow'
#  font2="fontcolor=ffcc00:fontsize=30"
#  coor2="y=h-line_h-10 : x=w-(t-1.5)*w/1.5"
#  coor2="y=h-line_h-10:x=w-(t)*w/1.5"
#  coor2="y=h-line_h-0:x=w-(90*t)"
#  code0="-codec:a copy 011.gif"
#  code0="-vcodec libx264 -crf 25 011.mp4"
#  shad0="shadowx=2:shadowy=2"
#
#❗❗❗❗  OK FOR ANDROID 
## code0=" -vf scale=720:756 -c:v libx264 -r 10 -pix_fmt yuv420p 011.mp4" 
## code0=" -pix_fmt yuv420p -shortest 011.mp4"  
##coor2="scale=trunc(iw/2)*2:trunc(ih/2)*2" 
#❗❗❗❗  OK FOR ANDROID 
#
## ffmpeg -i 01.gif -i forgiveness.mp3  $flags0 -vf "$draw1:$coor2:$font2:$shad0" $code0  # OK
#
#  coor2="scale=trunc(iw/2)*2:trunc(ih/2)*2"
# ffmpeg -i 01.gif -i forgiveness.mp3  $flags0 -vf "$coor2" $code0  # OK
#
#ffmpeg -i animated.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" video.mp4
#  ffmpeg -r 1 -s 1080x1620 -i %2d.gif -vcodec libx264 -crf 25 011.mp4

 ● 4.0 jpg to mp4  Duration 6 seconds
# ffmpeg -framerate 1/6 -i %2d.jpg -filter_complex "scale=1280:720:force_original_aspect_ratio=decrease,pad=1280:720:-1:-1:color=black,format=yuv420p" -r 30 -movflags +faststart 011.mp4
# ffmpeg -framerate 1/6 -i %2d.jpg  -r 30 -movflags +faststart 011.mp4
# sleep 5

● 4.1  gif + Audio = mp4 
      #  ffmpeg -i 01.mp3 -ignore_loop 0 -i 01.gif -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -shortest -strict -2 -c:v libx264 -threads 4 -c:a aac -b:a 192k -pix_fmt yuv420p -shortest 011.mp4
      #  ffmpeg -i 01.mp3 -ignore_loop 0 -i 01.gif -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -shortest -strict -2 -c:v libx264 -threads 4 -c:a aac -b:a 192k -pix_fmt yuv420p -shortest 011.mp4
● 4.2  gif to mp4
      # ffmpeg -i 01.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2"  011.mp4
● 4.3 image png   +mp3   Duration 6 seconds
   #  a=1 ; for i in IMG_*.jpg; do  new=$(printf "%03d.jpg" "$a") ; mv -i -- "$i" "$new" ; a=$((a+1)) ; done ; sleep 2
   #   ffmpeg -y -framerate 1/6 -start_number 01 -i %2d.png -vf scale=720:756 -c:v libx264 -r 10 -pix_fmt yuv420p 011.mp4 #

   # a=1 ; for i in *.png; do  new=$(printf "%03d.png" "$a") ; mv -i -- "$i" "$new" ; a=$((a+1)) ; done ; sleep 2
#   sleep 5
#
    # ffmpeg -y -framerate 1/6 -start_number 001 -i %3d.png -vf scale=630:440 -c:v libx264 -r 10 -pix_fmt yuv420p 011.mp4 #
  
   # ffmpeg -y -framerate 1/6 -start_number 1  -i %3d.png videos.mp4
   # ffmpeg -i 01.png -i 01.mp3 -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest 011.mp4
#    ffmpeg -i 01.mp3 -loop 1 -i 01.png -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -shortest -strict -2 -c:v libx264 -threads 4 -c:a aac -b:a 192k -pix_fmt yuv420p -shortest 01.mp4  # mitache1
● 4.4 resize gif  
# ffmpeg -hide_banner -v warning -i 01.gif -filter_complex "[0:v] scale=150:-1:flags=lanczos,split [a][b]; [a] palettegen=reserve_transparent=on:transparency_color=ffffff [p]; [b][p] paletteuse" 011.gif
# ffmpeg -hide_banner -v warning -i 01.gif -filter_complex "[0:v] scale=80:-1:flags=lanczos,split [a][b]; [a] palettegen=reserve_transparent=1:transparency_color=ffffff [p]; [b][p] paletteuse" 011.gif
● 4.5 wav to mp3  
 #  ffmpeg -i 01.wav -vn -ar 44100 -ac 2 -b:a 192k 01.mp3
● 5.  jpg to gif Duration 10 seconds
        # ffmpeg -f image2 -framerate 1/10 -i %03d.jpeg -loop -1 011.gif
        # ffmpeg -i %2d.png -loop -0 zz1.gif
        #  ffmpeg -i %2d.png  zz2.gif


● 6.  mp4 to jpg
      #  ffmpeg -i 01.mp4 -qscale:v 2 %03d.jpg
● 7   gif to jpg gpg
    #   ffmpeg -i 01.gif -y -hide_banner out%d.png
    #   ffmpeg -i zz1.gif -y -pix_fmt yuvj420p %d.png
●  7.1 
# ffmpeg -i 01.gif -vf "drawtext=fontfile=~/work/ffmpeg/ttf/OpenSans.ttf:text='Stack Overflow':fontcolor=black:fontsize=24,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" 011.gif
# ffmpeg -i 01.gif -vf "drawtext=fontfile=~/work/ffmpeg/ttf/OpenSans.ttf:text='Stack Overflow':fontcolor=black:fontsize=24" -codec:a copy 011.mp4
# ffmpeg -i 01.gif -vf ":fontcolor=black:fontsize=24" -codec:a copy 011.mp4

● 8. Sound remove  from .mp4 
#      - remove        
#      ffmpeg -i 01.mp4 -an 011.mp4
#     downgrade
#        ffmpeg -i input.mp3 -b:a 1000 output.mp3     
#        ffmpeg -i input.mp3 -codec:a libmp3lame -b:a 128k output.mp3 
#        ffmpeg -i input.mp3 -codec:a libmp3lame -qscale:a 5 output.mp3
● 9. .mp4 to mp3 extract audio from mp4
      #ffmpeg -i OUTPUT.mp3 -ss 00:01:01.000 -t 00:01:00.000  013.mp3
      #  ffmpeg -i 01.mp4 -vn 011.mp3
● 10. Volume min  sound  lower the volume sound quieter  volume down 
     #  ffmpeg -i 01.mp4 -af "volume=-15dB" -c:v copy -c:a aac -b:a 192k 011.mp4
     #  ffmpeg -i 01.mp3 -af 'volume=1.5' 011.mp3
● 11.  Sumary .avi  sumary .mp4 Concatenate mp4   mergin mp4 combine
   # A. for f in *.mp4 ; do echo file \'$f\' >> fileList.txt;
   # B.  cat fileList.txt
   #      file '/home/file1.mp4'
   #      file '/home/file1.mp4'
   #      ffmpeg -f concat -safe 0 -i fileList.txt -c copy mergedVideo.mp4
   # C.
   #    ffmpeg -i 111.avi  -i 112.avi -i 113.avi \
      # -filter_complex "[0:v] [0:a] [1:v] [1:a] [2:v] [2:a] 
      # concat=n=3:v=1:a=1 [vv] [aa]" \
      # -map "[vv]" -map "[aa]" 011.avi
      # ffmpeg -i 111.avi -i 112.avi -i 113.avi -c 011.avi
● 12. Resuze image ,  transperance -> -pix_fmt rgba
      # ffmpeg -i tran.png -pix_fmt rgba -vf scale=205:205 011.png
      # ffmpeg -i mylogo0.jpg -pix_fmt rgba -vf scale=50:50 011.png
● 13 Covert mov to mp4
      # ffmpeg -i input.mov -qscale 0 output.mp4
● 14 Fade In and  Fade out  volume sound  /  Volume  sound enhance mp3 quiet
 # ffmpeg -i "01.mp4" -c:v copy -af "loudnorm=I=-16:LRA=11:TP=-1.5,afade=d=25, areverse, afade=d=25, areverse" "011.mp4"; 
 # ffmpeg -i "01.mp4" -c:v copy -af "afade=d=15, areverse, afade=d=20, areverse" "1.mp4"; 
 #  ffmpeg -y -i 02.mp3 -af "afade=t=in:ss=0:d=15" 011.mp3  
 #  ffmpeg -y -i 02.mp3 -af "afade=t=out:st=207:d=15" 011.mp3
● 15 Conver mkv to mp4

#   ffmpeg -i 01.mkv  -c copy 012.mp4
#   ffmpeg -i 01.mkv  -codec  copy  011.mp4
#  ffmpeg -i 01.mkv  -vcodec copy -acodec copy 013.mp4
# X ffmpeg -i 01.mkv -c:v libx264 -preset medium -c:a aac -c:s mov_text 014.mp4
# ffmpeg -i 01.mkv -vcodec copy -acodec copy -scodec mov_text 015.mp4
# X ffmpeg -i 01.mkv -c:v copy -map 0 -c:s mov_text -x265-params crf=25  016.mp4
● 16 Draw box
# ffmpeg -i 01.jpg -vf "drawbox=x=10:y=20:w=200:h=60:color=red@0.5" -y 011.jpg

● 17 Resize image
   1. One file 
  #  ffmpeg -i 01.jpg -vf scale="'if(gt(a,1/1),320,-1)':'if(gt(a,1/1),-1,240)'" 011.jpg
  #  ffmpeg -i 01.jpg -vf scale=250:150 011.jpg
   2. Multiple images
   # ffmpeg -i ~/work/ffmpeg/aaa/%2d.jpg  -vf scale=1536:1152 ~/work/ffmpeg/bbb/%2d.jpg 
● 18 Square 
# ffmpeg -i 01.jpg -vf drawbox=x=100:y=100:w=100:h=100:c=red 011.jpg
# ffmpeg -i 01.jpg -filter:v drawbox=x=10:y=10:w=100:h=100:color=0xFFFFFF:t=fill -q:v 3 -f image2 011.jpg
# ffmpeg -i 01.jpg -filter:v drawbox=x=10:y=10:w=100:h=100:color=white:t=fill -q:v 3 -f image2 011.jpg
# ffmpeg -i 01.jpg -vf "drawbox=0:0:100-0:100-0:c=black@0.9:t=fill" 011.jpg

● 19 Merge overlay a jpg over png, difference a1 a2 a3  size file
 # ffmpeg -y -i b2.png -i l30.jpg -filter_complex overlay=283:165 -c:v png -pix_fmt rgba a1.png
 # ffmpeg  -y -i b2.png -vf "movie=l30.jpg [watermark]; [in][watermark] overlay=283:165 [out]" -q:v 1 a2.png
 # ffmpeg -y -i b2.png -i l30.jpg -pix_fmt rgba -filter_complex "overlay=283:165" a3.jpg
● 20 Convert flv  to mp4
 #  ffmpeg -i $x0.flv -c:a aac -b:a 192k -c:v libx264 -crf 18 -preset slow -s 720x480 $x0.mp4

● 21 Convert avi to mp4
#   ffmpeg -i "input.avi" -c:v copy -c:a copy "input.mp4"

● 22 Convert opus to mp3  remove picture remove image "-map 0:a" 
 #  clear 
 # ffmpeg -i "Kelly Clarkson - The trouble with love is.opus" -ab 320k  -map_metadata 0:s:a:0 -id3v2_version 3 011.mp3
#  ffmpeg -y -i "Kelly Clarkson - The trouble with love is.opus" -ab 320k  -map 0:a -map_metadata 0:s:a:0 -id3v2_version 3 011.mp3
 # ffmpeg -y -i 011.mp3 -map 0:a -c:a copy -map_metadata -1 012.mp3
 # ffmpeg -y -i 011.mp3  -c:a copy -map_metadata -1 013.mp3
● 23  Pech  resize transperance rotate 
    
     # Change 0.3 to 0.01 if you want only white(#ffffff) to be affected, without close colors.
     # Change 0.5 to whatever transparency amount you want, 0.0 will be fully transparent.

   # ffmpeg -i prch01.png -vf "rotate=90*PI/180"  original.png
   # ffmpeg -y -i verno.png -vf colorkey=white:0.3:0.5 original.png
   #   
   # ffmpeg -y -i pech.png -vf "scale=151:153"  aa.png
   # ffmpeg -y -i aa.png -vf "colorkey=white:0.3:0.0" bb.png
   # ffmpeg -y -i bb.png -vf "rotate=5*PI/180"  01.png
   # ffmpeg -y -i bb.png -vf "rotate=33*PI/180"  02.png
   # ffmpeg -y -i bb.png -vf "rotate=85*PI/180"  03.png
   # ffmpeg -y -i bb.png -vf "rotate=115*PI/180"  04.png
   # ffmpeg -y -i bb.png -vf "rotate=180*PI/180"  05.png
   # ffmpeg -y -i bb.png -vf "rotate=-80*PI/180"  06.png
●  24 Anymate
  # ffmpeg -f lavfi -i color=c=00ff00:s=1280x720:d=10 -loop 1 -i 02.png -filter_complex "[1]rotate=angle=PI*t:fillcolor=none:ow='hypot(iw,ih)':oh=ow[fg];[0][fg]overlay=x=(W-w)/2:y=(H-h)/2:shortest=1:format=auto,format=yuv420p" -movflags +faststart output.mp4


● III. FFPLAY
#  31:50  35:01

● MUSIC 8-MI MART
# ffmpeg -i 01.mp3 -ss 00:31:51.000 -t 00:03:11.000  012.mp3
# ffmpeg -i 01.mp3 -ss 00:50:47.000 -t 00:02:34.000  013.mp3
# ffmpeg -i 01.mp3 -ss 00:53:29.000 -t 00:03:27.000  014.mp3
# ffmpeg -i 01.mp3 -ss 00:59:30.000 -t 00:02:30.000  015.mp3
# ffmpeg -i 01.mp3 -ss 02:15:56.000 -t 00:02:36.000  016.mp3
# ffmpeg -i 01.mp3 -ss 04:40:00.000 -t 00:02:45.000  017.mp3
# ffmpeg -i 01.mp3 -ss 04:49:00.000 -t 00:02:24.000  018.mp3
#  ffmpeg -i 01.mp3 -ss 05:56:00.000 -t 00:02:24.000  011.mp3
#     sleep 2
#  celluloid 011.mp3


#  ffmpeg -i ~/Music/8Minute.avi -af "equalizer=f=1000:width_type=h:width=200:g=-10" 011.avi
# ffmpeg -i video.avi -vf subtitles=subtitle.srt out.avi
# ffmpeg -i ~/Music/8Minute.avi -af "equalizer=f=440:width_type=o:width=2:g=5" 013.avi
# ffmpeg -i ~/Music/8Minute.avi -af "equalizer=f=10000:width_type=h:width=2000:g=-10" 016.avi
# ffmpeg -i ~/Music/8Minute.avi -af "equalizer=f=10000:width_type=h:width=2000:g=-50" 017.avi
# ffmpeg -i  ~/Music/8Minute.avi  -af equalizer=frequency=11000:width=1200:width_type=h:gain=-10,equalizer=frequency=18000:width=11000:width_type=h:gain=-5 013.avi
# ffmpeg -i ~/Music/8Minute.avi -af equalizer=frequency=1000:width=200:width_type=h:gain=-10,equalizer=frequency=8000:width=1000:width_type=h:gain=-5 014.avi

#    1:06:00    ;  2:15  ;  2:28     ;  4:40     4:49   5:56:00  6:18 7:17


 ● Doctor
 # rm ~/work/library/image/hlp/doctor_01.JPG ; sleep 1
 # a00="~/work/library/image/hlp/doctor_00.jpg"
 # a01="~/work/library/image/hlp/doctor_01.jpg"
 # ffmpeg -i $a00 -vf " \
 # drawtext=fontfile=~/work/ffmpeg/ttf/bp-mono/BPmonoBold.ttf:text=' Wednesday ':fontcolor=#E90DD7:fontsize=25:x=10:y=10:, \
 # drawtext=fontfile=~/work/ffmpeg/ttf/arial/arial.ttf:text='31.08.2022':fontcolor=black:fontsize=25:x=10:y=35:, \
 # drawtext=fontfile=~/work/ffmpeg/ttf/OpenSans.ttf:text='15.40 hours':fontcolor=black:fontsize=25 :x=10:y=60:, \
 # drawtext=fontfile=~/work/ffmpeg/ttf/OpenSans.ttf:text='Mo  We  Fr 08-13':fontcolor=black:fontsize=22: \
 # x=10:y=565::, \
 # drawtext=fontfile=~/work/ffmpeg/ttf/OpenSans.ttf:text='Tu   Th   15-19':fontcolor=black:
 #  fontsize=22:  x=40:y=600:" -y $a01
 #  pqiv -c -c -i ~/work/library/image/hlp/doctor_01.jpg &
  
  ● A1
#  rm ~/work/library/image/hlp/A1.jpg ; sleep 1
#  a00="~/work/library/image/hlp/A1_00.jpg"
#  a01="~/work/library/image/hlp/A1.jpg"
#  ffmpeg -i $a00 -vf " \
#  drawtext=fontfile=~/work/ffmpeg/ttf/arial/arial.ttf:text='14.07.2024':
#  fontcolor=black:fontsize=32:x=45:y=175: " -y $a01
#  pqiv -c -c -i ~/work/library/image/hlp/A1.jpg &
#
#  sleep 15

 ● smehurko
  
 #  box0="box=1:boxcolor=white@1.0:boxborderw=15:"
 #  rm ~/work/library/image/hlp/smehurko_01.jpg ; sleep 1
 #   a00="~/work/library/image/hlp/smehurko0.jpg"
 #   a01="~/work/library/image/hlp/smehurko.jpg"
 # ffmpeg -i $a00 -vf "drawbox=y=ih-120:color=white@0.9:width=iw:height=120:t=fill, \
 # drawtext=text='This is a testing text example.':expansion=normal:y=h-line_h-20: \
 # fontfile='~/work/ffmpeg/ttf/Lora/Lora-Regular.ttf':fontcolor=black: fontsize=40" 011.mp4
 
 #  ffmpeg -i $a00 -vf " \
 #  drawtext=fontfile=~/work/ffmpeg/ttf/arial/arial.ttf:text='30.09.2018': \
 #  fontcolor=blue:fontsize=52:x=900:y=1500: $box0" -y $a01
 #  pqiv -c -c -i ~/work/library/image/hlp/smehurko.jpg &

● IV. Show Date and time video record desktop
# ffplay https://cph-p2p-msl.akamaized.net/hls/live/2000341/test/master.m3u8 2>&1 | awk 'NF {print strftime("%Y-%m-%d %H:%M:%S"), $0; fflush()}'
# ffmpeg -f x11grab -y -framerate 30 -s 1920x1080 -i :0.0 -c:v libx264 -preset superfast -crf 18 out.mp4
# ffmpeg -video_size 1024x768  -framerate 25 -f x11grab -i :0.0+100,200 -t 01:00:00 out.mp4
# ffmpeg -video_size 1024x768 -framerate 25 -f x11grab -i :0.0+100,200 -f alsa -ac 2 -i hw:0 out.mkv
# ffmpeg -video_size 1024x768 -framerate 25 -f x11grab -i :0.0+100,200 -f pulse -ac 2 -i default output.mkv

#    rm 011.mp4     
#    draw0="drawtext=fontfile=44.ttc:text='%{localtime\:%D}' / '%{localtime\:%T}'"
#    coor0="x=810:y=720"
#    font0="fontcolor=yellow:fontsize=20:bordercolor=white"      
#    shad0="shadowx=2:shadowy=2"
#    box0="box=1:boxcolor=black@0.5:boxborderw=5"
#    code0=" -c:v libx264 -t 5 011.mp4"
# ffmpeg -video_size 1024x768  -framerate 25 -f x11grab -i :0.0+100,200 -vf "$draw0:$coor0:$font0:$box0" 011.mp4



# ffplay -i  011.mp4
#   pqiv 011.gif
#  ffplay -i  ~/work/ffmpeg/014.avi

#  ffplay -i ~/Music/8Minute.avi 
    # pix $a01
 