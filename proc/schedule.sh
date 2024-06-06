#!/bin/bash

# EXAMPLES :
#  DATE                                 TIME         
# %F = same as %Y-%m-%d                 %T   time; same as %H:%M:%S 
# date +%Y:%m:%d -d "yesterday"
# date +%Y:%m:%d -d "1 day ago"        date -d '+1 hour' '+%F %T' ;  date --date='1 hour'
# date --date='-1 day'                 (date -d "06:45 today + 2 hour" +'%H:%M')
# (date --date='+1 day' "+%D")         (date -d "+ 1 minutes" +'%H:%M')
# zenity --info --text="TEXT" --no-wrap


play0='ffplay -i -autoexit -nodisp -volume 8'


     while true
         do      
 
        # clear ; echo $(date "+%T") ; 
         sleep 1 
    
  if [ $(date "+%T") = 14:37:00 ] ; then
     ~/work/proc/arhiv.sh &  
  fi
  


  if   [ $(date "+%T") = 08:00:00 ] || [ $(date "+%T") = 08:30:00 ] || \
       [ $(date "+%T") = 09:00:00 ] || [ $(date "+%T") = 09:30:00 ] || \
       [ $(date "+%T") = 10:00:00 ] || [ $(date "+%T") = 10:30:00 ] || \
       [ $(date "+%T") = 11:00:00 ] || [ $(date "+%T") = 11:30:00 ] || \
       [ $(date "+%T") = 12:00:00 ] || [ $(date "+%T") = 12:30:00 ] || \
       [ $(date "+%T") = 13:00:00 ] || [ $(date "+%T") = 13:30:00 ] || \
       [ $(date "+%T") = 14:00:00 ] || [ $(date "+%T") = 14:30:00 ] || \
       [ $(date "+%T") = 15:00:00 ] || [ $(date "+%T") = 15:30:00 ] || \
       [ $(date "+%T") = 16:00:00 ] || [ $(date "+%T") = 16:30:00 ] || \
       [ $(date "+%T") = 17:00:00 ] || [ $(date "+%T") = 17:30:00 ] || \
       [ $(date "+%T") = 18:00:00 ] || [ $(date "+%T") = 18:30:00 ] || \
       [ $(date "+%T") = 19:00:00 ] || [ $(date "+%T") = 19:30:00 ] || \
       [ $(date "+%T") = 20:00:00 ] || [ $(date "+%T") = 20:30:00 ] || \
       [ $(date "+%T") = 21:00:00 ] || [ $(date "+%T") = 21:30:00 ] || \
       [ $(date "+%T") = 22:00:00 ] || [ $(date "+%T") = 22:30:00 ] ; then
      ~/work/proc/message.sh &  
  fi

 #     ~/work/proc/refrigerator.sh &  
 #     ~/work/proc/numlock.sh &  
    
    done
