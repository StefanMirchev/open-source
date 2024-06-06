#!/bin/bash
 
              val0="$(adb shell dumpsys battery | grep level)"
              val1=${val0:9:3}
                      if (( $val1 == 100 )) > /dev/null 2>&1 ; then 
                         val1=${val0:9:3}
                      else
                         val1=${val0:9:2}
                      fi   

        if [ -z $val1 ] ; then
           # sleep 0.5 ; adb tcpip 5555
           # sleep 0.5 ; adb start-server
           # sleep 0.5 ; adb connect 192.168.0.204:5555
           # sleep 0.5 ; adb devices 
           # sleep 0.5 ; adb devices 
           # sleep 0.5 ; adb shell input keyevent 26 



            sleep 0.5 ; adb tcpip 5555
            sleep 0.5 ; adb start-server
            sleep 0.5 ; adb connect 192.168.1.106:5555
            sleep 0.5 ; adb devices 
            sleep 0.5 ; adb devices 
            sleep 0.5 ; adb shell input keyevent 26 
        fi

                val1=${val0:9:3}
                      if (( $val1 == 100 )) > /dev/null 2>&1 ; then 
                         val1=${val0:9:3}
                      else
                         val1=${val0:9:2}
                      fi   


             if [ -z $val1 ] ; then
               zenity --width=550 --height=10 --info --no-wrap \
              --text="<span font=\"19\" foreground=\"red\">PHONE DISCONNECT!!!   </span>" &
             fi


            if (($val1 < 40 )) && (( 0 < $val1  )) ; then
                a5="<span font=\"19\" foreground=\"Black\">"%"</span>"
                zenity --width=550 --height=10 --info --no-wrap \
                --text="<span font=\"19\" foreground=\"red\">PHONE BATTERY IS LOW $val1 $a5  </span>" &
            fi