#!/bin/bash


# brows0="/opt/chromium/chrome-wrapper --new-window" 

 # brows0="/opt/chromium/chrome-wrapper --new-window" 
 # export  brows00="/opt/brave/brave --disable-features=OutdatedBuildDetect --new-window"
 # brows0="/usr/bin/google-chrome-stable --new-window";;
 # brows0="/opt/brave/brave --disable-features=OutdatedBuildDetect --new-window"

 # brows0="/opt/brave/brave --disable-features=OutdatedBuildDetect --new-window"
  # brows00="firefox --new-window" & ;;
#   yad --info --text "aaaaaaaaaaaa $brs00  "
#   yad --info --text "bbbbbbbbbbbb $web00  "
             
  case ${brs00%.*} in 
         1)  brows00="/opt/brave/brave --disable-features=OutdatedBuildDetect --new-window" ; sleep 1 & ;;
         *)  brows00="firefox --new-window" ; sleep 1 & ;;
  esac

  $brows00 $web00 