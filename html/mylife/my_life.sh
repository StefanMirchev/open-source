#!/bin/bash

   foldim0=~/work/html/image ;  foldmy0=~/work/html/mylife  ; browse0=/usr/bin/google-chrome-stable

 rm  $foldim0/aa1.jpg  rm  $foldim0/slide1.jpg

 sleep 0.3 
# ffmpeg -i $foldim0/aa.jpg -vf scale=320:240 $foldim0/aa1.jpg

# This example also shows how to resize multiple images (in windows)
# for %j in (*.jpg) do ffmpeg -i "%j" -vf scale=480:-1 "Small-%~nj.jpg"


# It is also possible to resize an image to fit inside some dimensions and letterbox the rest
# ffmpeg -i IN.png -vf "scale=1280:720:force_original_aspect_ratio=decrease,pad=1280:720:(ow-iw)/2:(oh-ih)/2" OUT.jpg

# if you want to resize based on input width and height, let's say half of input width and height you can d
# ffmpeg -i $foldim0/aa.jpg -vf scale="iw/1:ih/2" $foldim0/aa1.jpg


# If you want to retain aspect ratio you can do 
  ffmpeg -i $foldim0/aa.jpg -vf scale="560:-1" $foldim0/aa1.jpg
 # ffmpeg -i $foldim0/slide.jpg -vf scale=220:374 $foldim0/slide1.jpg
  ffmpeg -i $foldim0/slide.jpg -vf scale=240:374 $foldim0/slide1.jpg

$browse0  $foldmy0/start.html &
