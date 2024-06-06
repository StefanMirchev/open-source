#!/bin/sh



cd ~/work/git/myrepo
 zenity --info  --no-wrap  --text \
 "<span font=\"13\" foreground=\"black\"><b> Current branch is \n \ * </b></span> \t
  <span font=\"13\" foreground=\"black\"><b> $(git branch --show-current) </b></span>"
 
#zenity --info  --no-wrap  --text= \
#'<span font=\"13\" foreground=\"black\"><b>   History Repository </b></span> \t                             
# <span font=\"13\" foreground=\"green\"><b> $(git branch --show-current)</b></span>''



sleep 3