#!/bin/bash


# yad --fixed --no-wrap --ok-label="Recepty" --extra-button=Cancel  --text="\
# <span color='\#00EE00'   font='25'><b>Monday </b></span>
# <span color='dark orange'   font='25'><b>Tuesday</b></span>
# <span color='#FA3E94'   font='25'><b>Wednesday     </b></span>
# <span color='\#EF3016'     font='25'><b>Thursday    </b></span>
# <span color='#E90DD7'     font='25'><b>Thursday    </b></span>
# <span color='#FFCC00'   font='25'><b>Friday     </b></span>
# <span color='blue'  font='25'><b>Saturday    </b></span>
# <span color='red'  font='25'><b>Sunday    </b></span>" &



 x0=10 ; y0=10
 click_lmouse() { xdotool mousemove $[x0+50]  $[y0+50]  ; sleep 0.5 ; xdotool click 1 ; }
 export -f click_lmouse
 click_lmouse &
    
   export GTK_THEME="recepty"  
 
 if [ $(wmctrl -l | grep 'RECEPTY' 2>&1 | wc -l) -ge 1 ] ; then exit  ; fi
 if [ `ps aux | grep -i "recepty.sh" | grep -v "grep" | wc -l` -ge 4 ] ; then exit ; fi


if [ $(date -d "$d" +%A) = "Monday" ]; then     # date -d "$d" +%u  = 6
clr0=black
yad --fixed --title=RECEPTY --button "Recepty":0 --button "Cancel":1  --selectable-labels \
--window-icon=/home/$USER/work/library/image/icon/recepty.ico --timeout=10 \
--geometry=10x-10+$x0+$y0 --gtkrc=/home/$USER/work/library/themes/brown01.css --text="\
<span color='\#00EE00'   font='25'><b>       Monday</b></span>
<span color='$clr0' font='15'><b> Тиквички с картофи на фурна</b></span>
<span color='$clr0' font='15'><b> Агнешки главички</b></span>
<span color='$clr0' font='15'><b> Дробчета по селски                  </b></span>
<span color='$clr0' font='15'><b> Пиле с грах                         </b></span>
<span color='$clr0' font='15'><b> Зелеви сарми с кисело зеле          </b></span>
<span color='$clr0' font='15'><b> Пълнени чушки/пиперки с кайма и ориз</b></span> 
<span color='$clr0' font='15'><b> Кьополу                             </b></span>
<span color='$clr0' font='15'><b> Агнешко със зелен лук на фурна I    </b></span>
<span color='$clr0' font='15'><b> 111111111111111111                  </b></span>
<span color='$clr0' font='15'><b> Картофена супа                       </b></span>"
elif  [ $(date -d "$d" +%A) = "Tuesday" ]; then
clr0=black  
yad --fixed --title=RECEPTY --button "Recepty":0 --button "Cancel":1  --selectable-labels \
--window-icon=/home/$USER/work/library/image/icon/recepty.ico --timeout=10 \
--geometry=10x-10+$x0+$y0 --gtkrc=/home/$USER/work/library/themes/brown01.css --text="\
<span color='dark orange' font='25'><b>        Tuesday</b></span>
<span color='$clr0' font='15'><b> Kарфиол огретен, яйца, сирене на фурна</b></span>
<span color='$clr0' font='15'><b> Яхния с варена наденица               </b></span>
<span color='$clr0' font='15'><b> Дроб сърма                            </b></span>
<span color='$clr0' font='15'><b> Кюфтета по чирпански                  </b></span>
<span color='$clr0' font='15'><b> Гъби с ориз и праз на фурна           </b></span> 
<span color='$clr0' font='15'><b> Пиле с кисело зеле                    </b></span>
<span color='$clr0' font='15'><b> Свинско с гъби в автоклавна мамина    </b></span>
<span color='$clr0' font='15'><b> 111111111111111111                    </b></span>
<span color='$clr0' font='15'><b> Райкин боб с картофи                  </b></span>"

elif  [ $(date -d "$d" +%A) = "Wednesday" ]; then
clr0=black
yad --fixed --title=RECEPTY --button "Recepty":0 --button "Cancel":1  --selectable-labels \
--window-icon=/home/$USER/work/library/image/icon/recepty.ico --timeout=10 \
--geometry=10x-10+$x0+$y0 --gtkrc=/home/$USER/work/library/themes/brown01.css --text="\
<span color='#FA3E94' font='25'><b>       Wednesday</b></span>
<span color='$clr0' font='15'><b> Кюфтета с бял сос                </b></span>
<span color='$clr0' font='15'><b> Пиле с гъби                      </b></span>
<span color='$clr0' font='15'><b> Гулаш със свинско месо           </b></span>
<span color='$clr0' font='15'><b> Агнешка дроб чорба               </b></span>
<span color='$clr0' font='15'><b> Варена царевица                  </b></span>
<span color='$clr0' font='15'><b> Грах яхния                       </b></span> 
<span color='$clr0' font='15'><b> Агнешко със зелен лук на фурна II</b></span>
<span color='$clr0' font='15'><b> 111111111111111111               </b></span>
<span color='$clr0' font='15'><b> Картофени кюфтенца с лук и сирене</b></span>"

elif  [ $(date -d "$d" +%A) = "Thursday" ]; then
clr0=black
yad --fixed --title=RECEPTY --button "Recepty":0 --button "Cancel":1  --selectable-labels  \
--window-icon=/home/$USER/work/library/image/icon/recepty.ico --timeout=10 \
--geometry=10x-10+$x0+$y0 --gtkrc=/home/$USER/work/library/themes/brown01.css --text="\
<span color='#EF3016' font='25'><b>        Thursday</b></span>
<span color='$clr0' font='15'><b> Агнешко гювеч зарзават               </b></span>
<span color='$clr0' font='15'><b> Паниран свински дроб                 </b></span>
<span color='$clr0' font='15'><b> Мусака с кайма и картофи             </b></span>
<span color='$clr0' font='15'><b> Пържени чушки/пиперки със доматен сос</b></span>
<span color='$clr0' font='15'><b> Миш-маш                              </b></span> 
<span color='$clr0' font='15'><b> Пиле с картофи                       </b></span>
<span color='$clr0' font='15'><b> Агнешко със спанак                   </b></span>
<span color='$clr0' font='15'><b> 111111111111111111                   </b></span>
<span color='$clr0' font='15'><b> Яхния от сушени сини сливи и праз    </b></span>"

elif  [ $(date -d "$d" +%A) = "Friday" ]; then
clr0=black
yad --fixed --title=RECEPTY --button "Recepty":0 --button "Cancel":1  -selectable-labels \
--window-icon=/home/$USER/work/library/image/icon/recepty.ico --timeout=10 \
--geometry=10x-10+$x0+$y0 --gtkrc=/home/$USER/work/library/themes/brown01.css --text="\
<span color='#FF3A00'   font='25'><b>      Friday</b></span>
<span color='$clr0' font='15'><b> Телешко рагу  Телешко варено     </b></span>
<span color='$clr0' font='15'><b> Скумрия с доматен сос на фурна   </b></span>
<span color='$clr0' font='15'><b> Свинско с кисело зеле            </b></span>
<span color='$clr0' font='15'><b> Боб яхния в тенджера под налягане</b></span>
<span color='$clr0' font='15'><b> Прясно зеле на фурна             </b></span> 
<span color='$clr0' font='15'><b> Ризото със зеленчуци пиле        </b></span>
<span color='$clr0' font='15'><b> Език в масло                     </b></span>
<span color='$clr0' font='15'><b> 111111111111111111               </b></span>
<span color='$clr0' font='15'><b> Ризото с гъби                    </b></span>"

elif  [ $(date -d "$d" +%A) = "Saturday" ]; then

# xdotool click 1 
# echo "Convert Date from 13 Digit -> F2/86400000+DATE(1970,1,1)" | yad --text-info --show-uri --geometry=600x100+100+100
clr0=black
yad --fixed --title=RECEPTY --button "Recepty":0 --button "Cancel":1  --selectable-labels \
--window-icon=/home/$USER/work/library/image/icon/recepty.ico --timeout=10 \
--geometry=10x-10+$x0+$y0 --gtkrc=/home/$USER/work/library/themes/brown01.css --text="\
<span color='blue'  font='25'><b>  Saturday</b></span>
<span color='$clr0' font='15'><b> Пиле фрикасе         </b></span>
<span color='$clr0' font='15'><b> Рибена чорба         </b></span>
<span color='$clr0' font='15'><b> Баница със сирене    </b></span>
<span color='$clr0' font='15'><b> Крем-супа от картофи </b></span>
<span color='$clr0' font='15'><b> Доматена крем супа   </b></span> 
<span color='$clr0' font='15'><b> Език с винен сос     </b></span>
<span color='$clr0' font='15'><b> 111111111111111111   </b></span>
<span color='$clr0' font='15'><b> 111111111111111111   </b></span>
<span color='$clr0' font='15'><b> Супа топчета         </b></span>" 

elif  [ $(date -d "$d" +%A) = "Sunday" ]; then
clr0=black  ; # #BC104A\
yad --fixed --title=RECEPTY --button "Recepty":0 --button "Cancel":1  --selectable-labels \
--window-icon=/home/$USER/work/library/image/icon/recepty.ico --timeout=10 \
--geometry=10x-10+$x0+$y0 --gtkrc=/home/$USER/work/library/themes/brown01.css --text="\
<span color='red'   font='25'><b>   Sunday </b></span>
<span color='$clr0' font='15'><b> Огретен с бекон   </b></span>
<span color='$clr0' font='15'><b> Пиле с ориз       </b></span>
<span color='$clr0' font='15'><b> Рибник със Скумрия</b></span>
<span color='$clr0' font='15'><b> Шкембе чорба      </b></span>
<span color='$clr0' font='15'><b> Супа от броколи   </b></span> 
<span color='$clr0' font='15'><b> Супа от език      </b></span>
<span color='$clr0' font='15'><b> 111111111111111111</b></span>
<span color='$clr0' font='15'><b> 111111111111111111</b></span>
<span color='$clr0' font='15'><b> Леща яхния        </b></span>"
        fi

  rc1=$? 

# yad --fixed --no-wrap  --text=" $rc1 " 
 if [ $rc1 -eq 0 ] ; then export GTK_THEME=""  ; libreoffice --writer ~/work/ebook/RECEPTY.doc  &  fi
