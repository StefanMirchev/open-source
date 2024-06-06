# recode CP1251..UTF8 $1 ; sleep 0.5
# dos2unix -n $1 $1
# rm -r  ~/.config/sublime-text/Local
/opt/sublime_text/sublime_text -n $1

# if test $(wmctrl -l | grep "sublime" 2>&1 | wc -l) -eq 1; then 
 #   sleep 1
 #  xdotool key Alt+F4
 #  wmctrl -vxa "KMagnifier"
 #  xdotool key Left space 
# fi

