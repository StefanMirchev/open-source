#!/bin/bash

clear 




# printf '%b' $(printf '\\x%x' {65..122})
# 
# char="A"
# testing=$( printf "%d" "'${char}" )
# echo $testing 



  man ascii
  for ((i=32;i<127;i++)) do printf "\\$(printf %03o "$i")"; done;printf "\n"
   awk 'BEGIN{for(i=32;i<127;i++)printf "%c",i; print}'
 # chr 74 75 76 65; echo


# echo Enter a letter:
# read A
# echo -n ${A} | od -i | head -1 | cut -b 10- | tr -d " "

sleep 60