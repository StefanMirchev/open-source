#!/bin/bash


# killall yad
today=($(date '+%Y %m %d')); Y=0; m=1; d=2                # establish today's date
[[ -z $1 ]] && ref=(${today[@]}) || ref=(${1//-/ })       # get input date
dNbA=$(date --date="$(date +%Y-%m-01)" +'%u')             # day-number of 1st day of reference month
today[m]=$((10#${today[m]})); ref[m]=$((10#${ref[m]}))    # remove leading zero (octal clash)
today[d]=$((10#${today[d]})); ref[d]=$((10#${ref[d]}))    # remove leading zero (octal clash)
nxtm=$(( ref[m]==12 ?1       :ref[m]+1 ))                 # month-number of next month
nxtY=$(( ref[m]==12 ?ref[Y]+1:ref[Y]   ))                 # year-number of next month
nxtA="$nxtY-$nxtm-1"                                      # date of 1st day of next month
refZ=$(date --date "$(date +$nxtA) yesterday" +%Y-%m-%d)  # date of last day of reference  month
days=$(date --date="$refZ" '+%d')                         # days in reference month


montN1="$(date --date="${ref[Y]}-${ref[m]}-${ref[d]}" '+%B %Y')" # mont name 
h2="Mo Tu We Th Fr"                                    # header 2 
h3="Sa Su"                                    # header 2 

dNbW=$dNbA  # day-number of week
dNbM=1      # day-number of month
p0=1 sp0=''
wik1='' ; wik2='' ; wik3='' ; wik4='' ; wik5='' ; wik6='' ; rd0='' ; pd0=''
coun1=0 ; coun2=0 ; coun3=0 ; coun4=0 ; coun5=0 ; coun6=0
font0="font='14'" ; red1="$font0 background='white' foreground='red'" ;  # font0="font='14'"
black1="$font0 background='white' foreground='black'"

cdate=$((10#$(date -d "$(date +${ref[Y]}-${ref[m]}-$dNbM)" +'%V')))   # number week

      
while (($dNbM <= $days)) ;do
          if (($dNbM < 10 )) ; then
           dNbM=' '$dNbM
          fi

    if (( today[Y]==ref[Y] &&  today[m]==ref[m] && today[d]==dNbM )) ;then
          case ${p0} in  # today
              1) ((coun1++)) ; wik1="$wik1 <span $font0 background='#24E562' foreground='black'>$dNbM</span>" ;;
              2) ((coun2++)) ; wik2="$wik2 <span $font0 background='#24E562' foreground='black'>$dNbM</span>" ;;
              3) ((coun3++)) ; wik3="$wik3 <span $font0 background='#24E562' foreground='black'>$dNbM</span>" ;;
              4) ((coun4++)) ; wik4="$wik4 <span $font0 background='#24E562' foreground='black'>$dNbM</span>" ;;
              5) ((coun5++)) ; wik5="$wik5 <span $font0 background='#24E562' foreground='black'>$dNbM</span>" ;;
              6) ((coun6++)) ; wik6="$wik6 <span $font0 background='#24E562' foreground='black'>$dNbM</span>" ;;
          esac
    else   # other days of mont
       if [ $(date -ud "$(date +"%y-%m")-$dNbM" +%A) = Saturday ] || # celebration day
          [ $(date -ud "$(date +"%y-%m")-$dNbM" +%A) = Sunday ] ||
          [ $dNbM-$(date +'%m') =  6-02 ]  || [ $dNbM-$(date +'%m') = 8-02 ] || 
          [ $dNbM-$(date +'%m') =  3-03 ]  || [ $dNbM-$(date +'%m') = 1-05 ] || 
          [ $dNbM-$(date +'%m') = 24-05 ]  || [ $dNbM-$(date +'%m') = 6-05 ] || 
          [ $dNbM-$(date +'%m') =  6-09 ]  || [ $dNbM-$(date +'%m') = 23-09 ] ||
          [ $dNbM-$(date +'%m') = 24-12 ] || [ $dNbM-$(date +'%m') = 25-12 ] ||
          [ $dNbM-$(date +'%m') = 26-12 ];then
              case ${p0} in  
                 1) ((coun1++)) ; wik1="$wik1 <span $font0 foreground='red'>$dNbM</span>";;
                 2) ((coun2++)) ; wik2="$wik2 <span $font0 foreground='red'>$dNbM</span>";;
                 3) ((coun3++)) ; wik3="$wik3 <span $font0 foreground='red'>$dNbM</span>";;
                 4) ((coun4++)) ; wik4="$wik4 <span $font0 foreground='red'>$dNbM</span>";;
                 5) ((coun5++)) ; wik5="$wik5 <span $font0 foreground='red'>$dNbM</span>";;
                 6) ((coun6++)) ; wik6="$wik6 <span $font0 foreground='red'>$dNbM</span>";;
              esac
       else  # NOT celebration day
                           # NOT DELETE $(((dNbA-1)*3)) 
                           # --info --text " 111    $dNbA"
                           # yad --info --text "p0   $p0 "
               case ${p0} in 
               #  1) wik1="<span $font0 background='#FFF988' foreground='black'>$((10#$(date -d "$(date +${ref[Y]}-${ref[m]}-01)" +'%V')))</span>       $dNbM      " ;;
                 1) ((coun1++)) ; wik1="$wik1 $dNbM";;
                 2) ((coun2++)) ; wik2="$wik2 $dNbM";;
                 3) ((coun3++)) ; wik3="$wik3 $dNbM";;
                 4) ((coun4++)) ; wik4="$wik4 $dNbM";;
                 5) ((coun5++)) ; wik5="$wik5 $dNbM";;
                 6) ((coun6++)) ; wik6="$wik6 $dNbM";;
               esac
       fi
    fi
    ((dNbM++))

 # yad --info --text "111 $p0 $dNbW"

    if ((dNbW >=7)); then

          if (($cdate < 10)); then  sp0=' ' ; else   sp0='' ; fi
   #     a1=$(((dNbA-1)*3))

    sp1=$(perl -E "say ' ' x $(((7-$coun1)*3))") 
    sp3="<span $black1> </span>"
    #  yad --info --text "$p0"
            case ${p0} in  # show number of week and deys of week
        1) wik1="<span $font0 background='#FFF988' foreground='black'>$sp0$cdate</span><span $black1>$sp1 $wik1$sp3</span>" ;;
        2) wik2="<span $font0 background='#FFF988' foreground='black'>$sp0$cdate</span><span $black1> $wik2$sp3</span>" ;;
        3) wik3="<span $font0 background='#FFF988' foreground='black'>$sp0$cdate</span><span $black1> $wik3$sp3</span>" ;;
        4) wik4="<span $font0 background='#FFF988' foreground='black'>$sp0$cdate</span><span $black1> $wik4$sp3</span>" ;;
        5) wik5="<span $font0 background='#FFF988' foreground='black'>$sp0$cdate</span><span $black1> $wik5$sp3</span>" ;;
      esac
        cdate=$((10#$(date -d "$(date +${ref[Y]}-${ref[m]}-$dNbM)" +'%V'))) # remove leading zero (octal clash)
   #   yad --info --text "222 $cdate"
        dNbW=0
        ((p0++))
    fi
         ((dNbW++)) 
done
 
# 01 6-3
# 02 5 3
# 03 5 6
# 04 6 1
# 05 5 4
# 06 5-6

  if [ $p0 -eq 6 ] ; then #  last row of calendar - 6-th
     if [ $cdate -eq 0 ] ; then
      sp1=$(perl -E 'say " " x 23')
      wik6="<span $font0 background='#FFF988' foreground='black'>  </span><span $black1>$sp1</span>" 
     else   # last row of calendar - 5-th
      sp1=$(perl -E "say ' ' x $(((7-$coun6)*3))") 
      wik6="<span $font0 background='#FFF988' foreground='black'>$sp0$cdate</span><span $black1> $wik6$sp1$sp3</span>" 
     fi
 else
   sp1=$(perl -E "say ' ' x $(((7-$coun5)*3))") 
  if [  ${#wik5} -lt 200 ]; then
        ❗❗❗ wik5  IN DECEMBER SECOND TIME SHOW NUMBER OF WEEK  ❗❗❗ 
  #   yad --info --text " bbb $p0  /   $sp1  ${#wik5} "
     wik5="<span $font0 background='#FFF988' foreground='black'>$sp0$cdate</span><span $black1> $wik5$sp1$sp3</span>" 
  fi 
   sp1=$(perl -E 'say " " x 23')
   wik6="<span $font0 background='#FFF988' foreground='black'>  </span><span $black1>$sp1</span>" 
 fi

    if   [ $(date +'%m') = 01 ] ; then  rd0='     Working days 21' 
          sp2=$(perl -E 'say " " x 6') ; montN0="$sp2$montN1$sp2 "
    elif [ $(date +'%m') = 02 ] ; then  rd0='     Working days 20' 
          sp2=$(perl -E 'say " " x 6') ; montN0="$sp2$montN1$sp2"
    elif [ $(date +'%m') = 03 ] ; then  rd0='     Working days 22'
          sp2=$(perl -E 'say " " x 7') ; montN0="$sp2$montN1$sp2 "
    elif [ $(date +'%m') = 04 ] ; then  rd0='     Working days 18'
          sp2=$(perl -E 'say " " x 7') ; montN0="$sp2$montN1$sp2 "
    elif [ $(date +'%m') = 05 ] ; then  rd0='     Working days 20'
          sp2=$(perl -E 'say " " x 7') ; montN0="  $sp2$montN1$sp2 "
    elif [ $(date +'%m') = 06 ] ; then  rd0='     Working days 22'
          sp2=$(perl -E 'say " " x 7') ; montN0=" $sp2$montN1$sp2 "
    elif [ $(date +'%m') = 07 ] ; then  rd0='     Working days 21'
          sp2=$(perl -E 'say " " x 7') ; montN0=" $sp2$montN1$sp2 "
    elif [ $(date +'%m') = 08 ] ; then  rd0='     Working days 23'
          sp2=$(perl -E 'say " " x 7') ; montN0="$sp2$montN1$sp2"
    elif [ $(date +'%m') = 09 ] ; then  rd0='     Working days 19'
          sp2=$(perl -E 'say " " x 5') ; montN0="$sp2$montN1$sp2 "
    elif [ $(date +'%m') = 10 ] ; then  rd0='     Working days 22'
          sp2=$(perl -E 'say " " x 6') ; montN0="$sp2$montN1$sp2 "
    elif [ $(date +'%m') = 11 ] ; then  rd0='     Working days 22'
          sp2=$(perl -E 'say " " x 6') ; montN0="$sp2$montN1$sp2"
    elif [ $(date +'%m') = 12 ] ; then  rd0='     Working days 18'
          sp2=$(perl -E 'say " " x 6') ; montN0="$sp2$montN1$sp2"
  fi

 if (($cdate < 10)); then  sp0=' ' ; else   sp0='' ; fi 

celab(){
red1="$font0 background='white' foreground='red'"
black1="$font0 background='white' foreground='black'"

if       [ $(date +'%m') = 01 ] ; then 
pd0="<span $red1>1 </span><span $black1>New Year               </span>
<span $red1>5 </span><span $black1>Йордановден             </span>
<span $red1>6 </span><span $black1>Иванов                  </span>"
#     elif [ $(date +'%m') = 02 ] ; then
# pd0="<span $red1>  6 </span><span $black1>Birthday Zuzi         </span>
# <span $red1>  8 </span><span $black1>Birthday Plamen       </span>"
    elif [ $(date +'%m') = 03 ] ; then  
pd0="<span $red1>3 </span><span $black1>March The liberation of </span>
<span $black1> Bulgaria from the Ottoman</span>
<span $black1> yoke                     </span>"
#    elif [ $(date +'%m') = 05 ] ; then 
#<span $red1> 14-17 </span><span $black1>Easter             </span>"
    elif [ $(date +'%m') = 05 ] ; then  
pd0="<span $red1>1</span><span $black1> Labor Day               </span>
<span $red1>3</span><span $black1> Good Friday           </span>
<span $red1>6</span><span $black1> St.George's Day, Army Day</span>
<span $red1>24 </span><span $black1>Alphabet holiday of    </span>
<span $black1>St.Br. Cyril and Methodius</span>"
    elif [ $(date +'%m') = 09 ] ; then  
pd0="<span $red1> 6 </span><span $black1>Unification Day        </span>
<span $red1>23 </span><span $black1>Independence Day       </span>" 
    elif [ $(date +'%m') = 11 ] ; then
pd0="<span $black1>1 </span><span $black1>Day of National Leaders </span>"
    elif [ $(date +'%m') = 12 ] ; then 
pd0="<span $red1>24-2 </span><span $black1>Christmas           </span>"
  fi
  sp1=$(perl -E "say ' ' x 26") 
 # yad  --text-info --no-buttons --undecorated --borders=0 --geometry=290x70+800+200 --text "$pd0"
 yad --info --title "celebration" --no-buttons  --mouse --skip-taskbar --undecorated \
 --borders=5 --geometry=299x100+1620+950 --timeout=17 \
 --text="<span $red1>          Holidays        
$sp1
$pd0
$sp1</span>" &
}
 export -f celab


# BG BEGIN 
#    if   [ $(date +'%m') = 01 ] ; then  rd0='      Работни дни 21' 
#           sp2=$(perl -E 'say " " x 6') ; montN0="$sp2$montN1$sp2 "
#    elif [ $(date +'%m') = 02 ] ; then  rd0='      Работни дни 20' 
#          sp2=$(perl -E 'say " " x 6') ; montN0="$sp2$montN1$sp2"
#    elif [ $(date +'%m') = 03 ] ; then  rd0='      Работни дни 22'
#          sp2=$(perl -E 'say " " x 7') ; montN0="$sp2$montN1$sp2 "
#    elif [ $(date +'%m') = 04 ] ; then  rd0='      Работни дни 18'
#          sp2=$(perl -E 'say " " x 7') ; montN0="$sp2$montN1$sp2 "
#    elif [ $(date +'%m') = 05 ] ; then  rd0='      Работни дни 20'
#          sp2=$(perl -E 'say " " x 7') ; montN0="  $sp2$montN1$sp2 "
#    elif [ $(date +'%m') = 06 ] ; then  rd0='      Работни дни 22'
#          sp2=$(perl -E 'say " " x 7') ; montN0=" $sp2$montN1$sp2 "
#    elif [ $(date +'%m') = 07 ] ; then  rd0='      Работни дни 21'
#          sp2=$(perl -E 'say " " x 7') ; montN0=" $sp2$montN1$sp2 "
#    elif [ $(date +'%m') = 08 ] ; then  rd0='      Работни дни 23'
#          sp2=$(perl -E 'say " " x 7') ; montN0="$sp2$montN1$sp2"
#    elif [ $(date +'%m') = 09 ] ; then  rd0='      Работни дни 19'
#          sp2=$(perl -E 'say " " x 5') ; montN0="$sp2$montN1$sp2 "
#    elif [ $(date +'%m') = 10 ] ; then  rd0='      Работни дни 22'
#          sp2=$(perl -E 'say " " x 6') ; montN0="$sp2$montN1$sp2 "
#    elif [ $(date +'%m') = 11 ] ; then  rd0='      Работни дни 22'
#          sp2=$(perl -E 'say " " x 6') ; montN0="$sp2$montN1$sp2"
#    elif [ $(date +'%m') = 12 ] ; then  rd0='      Работни дни 18'
#          sp2=$(perl -E 'say " " x 6') ; montN0="$sp2$montN1$sp2"
#  fi
#
# if (($cdate < 10)); then  sp0=' ' ; else   sp0='' ; fi 
#
#
#celab(){
#red1="$font0 background='white' foreground='red'"
#black1="$font0 background='white' foreground='black'"
#
#if       [ $(date +'%m') = 01 ] ; then 
#pd0="<span $red1>1 </span><span $black1>Нова година              </span>"
#    elif [ $(date +'%m') = 02 ] ; then
#pd0="<span $red1>6 </span><span $black1>Рожден ден Зузи          </span>
#<span $red1>8 </span><span $black1>Рожден ден Пламен        </span>"
#    elif [ $(date +'%m') = 03 ] ; then  
#pd0="<span $red1>3 </span><span $black1>март Освобождението на   </span>
#<span $black1>  България от османско иго </span>"
#    elif [ $(date +'%m') = 04 ] ; then 
#pd0="<span $red1>14    </span><span $black1>Разпети петък        </span>
#<span $red1>14-17 </span><span $black1>Великден             </span>"
#    elif [ $(date +'%m') = 05 ] ; then  
#pd0="<span $red1> 1</span><span $black1> Ден на труда            </span>
#<span $red1> 6</span><span $black1> Гергьовден, Ден армията </span>
#<span $red1>24 </span><span $black1>Празник на азбуката на  </span>
#<span $black1> Св. братя Кирил и Методий </span>"
#    elif [ $(date +'%m') = 09 ] ; then  
#pd0="<span $red1> 1 </span><span $black1>Ден на Съединението     </span>
#<span $red1>22 </span><span $black1>Ден на Независимостта   </span>" 
#    elif [ $(date +'%m') = 11 ] ; then
#pd0="<span $red1>1 </span><span $black1>Ден на народ. будители   </span>"
#    elif [ $(date +'%m') = 12 ] ; then 
#pd0="<span $red1>25-27 </span><span $black1>Рождество Христово   </span>
#<span $black1>           Коледа          </span>"
#  fi
#
#  sp1=$(perl -E "say ' ' x 27") 
# # yad  --text-info --no-buttons --undecorated --borders=0 --geometry=290x70+800+200 --text "$pd0"
# yad --info --title "celebration" --no-buttons  --mouse --skip-taskbar --undecorated \
# --borders=0 --geometry=300x100+1645+950 --timeout=7 \
# --text="<span $red1>       Празнични дни       
#$sp1
#$pd0
#$sp1</span>" &
#}
# export -f celab
#
# BG END




# sp2=$(perl -E 'say " " x 11') # january
# sp2=$(perl -E 'say " " x 10') # february
# sp1=$(perl -E "say ' ' x $(((7-$coun6)*3))") 
# wik6="<span $font0 background='#FFF988' foreground='black'>$sp0$cdate</span><span $black1> $wik6$sp1$sp3</span>" 

 yad --form --title "CALENDAR" --no-buttons   --borders=0 --geometry=300x290+1650+720 \
--window-icon=/home/$USER/work/library/image/icon/calendar.ico \
--text="<span font='Mono 14' background='#8FDFD6' foreground='#8A0AAD'>$montN0</span>
<span $font0 background='#8FDFD6' foreground='black'>    $h2</span>\
<span $font0 background='#8FDFD6' foreground='red'> $h3 </span>
$wik1
$wik2
$wik3
$wik4
$wik5
$wik6
<span $font0 background='#FFF988' foreground='red'>  </span><span $font0 background='white' foreground='white'>                       </span>
<span $font0 background='#8FDFD6' foreground='black'>$rd0     </span>" \
--field="<span font='Serif 13' foreground='blue'>   Holidays   </span>:FBTN" 'bash -c celab' &

sleep 1 ; bash -c celab


#  --undecorated  --text="<span $font0 background='#58DCE7' foreground='green'>         CALENDAR        </span>
# <span $red1>1   adASASDNSJKHeeegggge</span>
# <span $red1>asdsadASASDNSJKHeeegggge</span>