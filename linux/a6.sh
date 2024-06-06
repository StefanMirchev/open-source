#!/bin/bash


 yad --form --field="combo:CB" 'test1!test2!test3'
yad --title="Desktop entry editor" --text="Simple desktop entry editor" \
--form --field="Type:CB" --field="Name" --field="Generic name" \
 --field="Comment" --field="Command:FL" --field="Icon" \
 --field="In termianl:CHK" --field="Startup notify:CHK" \
"Application!URI" "Name" "Generic name" "This is the comment" \
"/usr/bin/yad" "yad" FALSE TRUE
 yad --title="VYUU - Right-click image for viewing options" --picture --size=fit \
 --filename ~/work/library/image/hlp/doctor_00.jpg --text="aaaaaaaa" \
 --width=400 --height=300 --center --inc=256



 
sleep 3