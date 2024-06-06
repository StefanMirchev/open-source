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


h1="$(date --date="${ref[Y]}-${ref[m]}-${ref[d]}" '+%B %Y')" # header 1 
h2="Mo Tu We Th Fr"                                    # header 2 
h3="Sa Su"                                    # header 2 

dNbW=$dNbA  # day-number of week
dNbM=1      # day-number of month
p0=1 sp0=''
wik1='' ; wik2='' ; wik3='' ; wik4='' ; wik5='' ; wik6='' ; rd0='' ; pd0=''
coun1=0 ; coun2=0 ; coun3=0 ; coun4=0 ; coun5=0 ; coun6=0
red1="font='14' background='white' foreground='red'"
black1="font='14' background='white' foreground='black'"

cdate=$((10#$(date -d "$(date +${ref[Y]}-${ref[m]}-$dNbM)" +'%V')))
while (($dNbM <= $days)) ;do
          if (($dNbM < 10 )) ; then
           dNbM=' '$dNbM
          fi

    if (( today[Y]==ref[Y] &&  
          today[m]==ref[m] && 
          today[d]==dNbM )) ;then
          case ${p0} in 
            #  1) wik1="<span font='14' background='#FFF988' foreground='black'>$((10#$(date -d "$(date +${ref[Y]}-${ref[m]}-01)" +'%V')))</span>       $dNbM      " ;;
              1) ((coun1++)) ; wik1="$wik1 <span font='14' background='#24E562' foreground='black'>$dNbM</span>" ;;
              2) ((coun2++)) ; wik2="$wik2 <span font='14' background='#24E562' foreground='black'>$dNbM</span>" ;;
              3) ((coun3++)) ; wik3="$wik3 <span font='14' background='#24E562' foreground='black'>$dNbM</span>" ;;
              4) ((coun4++)) ; wik4="$wik4 <span font='14' background='#24E562' foreground='black'>$dNbM</span>" ;;
              5) ((coun5++)) ; wik5="$wik5 <span font='14' background='#24E562' foreground='black'>$dNbM</span>" ;;
              6) ((coun6++)) ; wik6="$wik6 <span font='14' background='#24E562' foreground='black'>$dNbM</span>" ;;
          esac
    else
       # if -> red color celebration days  else black color other das fi 
       if [ $(date -ud "$(date +"%y-%m")-$dNbM" +%A) = Saturday ] || 
          [ $(date -ud "$(date +"%y-%m")-$dNbM" +%A) = Sunday ] ||
          [ $dNbM-$(date +'%m') = 3-03 ]  || [ $dNbM-$(date +'%m') = 22-04 ] || 
          [ $dNbM-$(date +'%m') = 25-04 ] || [ $dNbM-$(date +'%m') = 2-05 ]  ||
          [ $dNbM-$(date +'%m') = 6-05 ]  || [ $dNbM-$(date +'%m') = 24-05 ] ||
          [ $dNbM-$(date +'%m') = 6-09 ]  || [ $dNbM-$(date +'%m') = 22-09 ] ||
          [ $dNbM-$(date +'%m') = 26-12 ] || [ $dNbM-$(date +'%m') = 27-12 ] ||
          [ $dNbM-$(date +'%m') = 27-12 ];then
              case ${p0} in 
               #  1) wik1="<span font='14' background='#FFF988' foreground='black'>$((10#$(date -d "$(date +${ref[Y]}-${ref[m]}-01)" +'%V')))</span>       $dNbM      " ;;
                 1) ((coun1++)) ; wik1="$wik1 <span font='14' foreground='red'>$dNbM</span>";;
                 2) ((coun2++)) ; wik2="$wik2 <span font='14' foreground='red'>$dNbM</span>";;
                 3) ((coun3++)) ; wik3="$wik3 <span font='14' foreground='red'>$dNbM</span>";;
                 4) ((coun4++)) ; wik4="$wik4 <span font='14' foreground='red'>$dNbM</span>";;
                 5) ((coun5++)) ; wik5="$wik5 <span font='14' foreground='red'>$dNbM</span>";;
                 6) ((coun6++)) ; wik6="$wik6 <span font='14' foreground='red'>$dNbM</span>";;
               esac
       else
                           # NOT DELETE $(((dNbA-1)*3)) 
                           # --info --text " 111    $dNbA"
                           # yad --info --text "p0   $p0 "
               case ${p0} in 
               #  1) wik1="<span font='14' background='#FFF988' foreground='black'>$((10#$(date -d "$(date +${ref[Y]}-${ref[m]}-01)" +'%V')))</span>       $dNbM      " ;;
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

    if ((dNbW >=7)); then

#  43  187
# 101  227
    if (($cdate < 10)); then  sp0=' ' ; else   sp0='' ; fi
   #     a1=$(((dNbA-1)*3))

    sp1=$(perl -E "say ' ' x $(((7-$coun1)*3))") 
    sp3="<span $black1> </span>"
            case ${p0} in 
        1) wik1="<span font='14' background='#FFF988' foreground='black'>$sp0$cdate</span>\
<span $black1>$sp1 $wik1$sp3</span>" ;;
        2) wik2="<span font='14' background='#FFF988' foreground='black'>$sp0$cdate</span>\
<span $black1> $wik2$sp3</span>" ;;
        3) wik3="<span font='14' background='#FFF988' foreground='black'>$sp0$cdate</span>\
<span $black1> $wik3$sp3</span>" ;;
        4) wik4="<span font='14' background='#FFF988' foreground='black'>$sp0$cdate</span>\
<span $black1> $wik4$sp3</span>" ;;
        5) wik5="<span font='14' background='#FFF988' foreground='black'>$sp0$cdate</span>\
<span $black1> $wik5$sp3</span>" ;;
      esac
        cdate=$((10#$(date -d "$(date +${ref[Y]}-${ref[m]}-$dNbM)" +'%V'))) # remove leading zero (octal clash)

        dNbW=0
        ((p0++))
    fi

     if (($dNbM < $days)); then
         ((dNbW++)) 
     fi
done

if       [ $(date +'%m') = 01 ] ; then  rd0='      Работни дни 21'
    elif [ $(date +'%m') = 02 ] ; then  rd0='      Работни дни 20'
    elif [ $(date +'%m') = 03 ] ; then  rd0='      Работни дни 22'
    elif [ $(date +'%m') = 04 ] ; then  rd0='      Работни дни 18'
    elif [ $(date +'%m') = 05 ] ; then  rd0='      Работни дни 20'
    elif [ $(date +'%m') = 06 ] ; then  rd0='      Работни дни 22'
    elif [ $(date +'%m') = 07 ] ; then  rd0='      Работни дни 21'
    elif [ $(date +'%m') = 08 ] ; then  rd0='      Работни дни 23'
    elif [ $(date +'%m') = 09 ] ; then  rd0='      Работни дни 19'
    elif [ $(date +'%m') = 10 ] ; then  rd0='      Работни дни 22'
    elif [ $(date +'%m') = 11 ] ; then  rd0='      Работни дни 22'
    elif [ $(date +'%m') = 12 ] ; then  rd0='      Работни дни 18'
  fi

 if (($cdate < 10)); then  sp0=' ' ; else   sp0='' ; fi 
       # sp2=$(perl -E "say ' ' x 14 ") 


celab(){
red1="font='14' background='white' foreground='red'"
black1="font='14' background='white' foreground='black'"

if       [ $(date +'%m') = 01 ] ; then 
#pd0="<span $red1>1 </span><span $black1>Нова година             </span>"
#    elif [ $(date +'%m') = 02 ] ; then
#pd0="<span $red1>6 </span><span $black1>Рожден ден Зузи         </span>
#<span $red1>8 </span><span $black1>Рожден ден Пламен       </span>"
#    elif [ $(date +'%m') = 03 ] ; then  
#pd0="<span $red1>3 </span><span $black1>март Освобождението на  </span>
#<span $black1> България от османско иго </span>"
#    elif [ $(date +'%m') = 04 ] ; then 
#pd0="<span $red1>14    </span><span $black1>Разпети петък       </span>
#<span $red1>14-17 </span><span $black1>Великден            </span>"
#    elif [ $(date +'%m') = 05 ] ; then  
pd0="<span $red1> 1</span><span $black1> Ден на труда           </span>
<span $red1> 6</span><span $black1> Гергьовден, Ден армията</span>
<span $red1>24 </span><span $black1>Празник на азбуката на </span>
<span $black1>Св. братя Кирил и Методий </span>"
    elif [ $(date +'%m') = 09 ] ; then  
pd0="<span $red1> 1 </span><span $black1>Ден на Съединението    </span>
<span $red1>22 </span><span $black1>Ден на Независимостта  </span>" 
    elif [ $(date +'%m') = 11 ] ; then
pd0="<span $red1>1 </span><span $black1>Ден на народ. будители  </span>"
    elif [ $(date +'%m') = 12 ] ; then 
pd0="<span $red1>25-27 </span><span $black1>Рождество Христово  </span>
<span $black1>           Коледа         </span>"
  fi

  sp1=$(perl -E "say ' ' x 26") 
 # yad  --text-info --no-buttons --undecorated --borders=0 --geometry=290x70+800+200 --text "$pd0"
 yad --info --title "celebration" --no-buttons  --mouse --skip-taskbar --undecorated \
 --borders=0 --geometry=300x100+1300+900 \
 --text="<span $red1>      Празнични дни       
$sp1
$pd0
$sp1</span>" &
sleep 7 ;  wmctrl -c "celebration" 
}
 export -f celab



sp1=$(perl -E "say ' ' x $(((7-$coun6)*3))") 
wik6="<span font='14' background='#FFF988' foreground='black'>$sp0$cdate</span>\
<span $black1> $wik6$sp1$sp3</span>" 

 yad --form --title "CALENDAR" --no-buttons   --borders=0 --geometry=0x10+1650+720 \
 --text="<span font='14' background='#8FDFD6' foreground='#E54A1E'>       $h1      </span>
<span font='14' background='#8FDFD6' foreground='black'>    $h2</span>\
<span font='14' background='#8FDFD6' foreground='red'> $h3 </span>
$wik1
$wik2
$wik3
$wik4
$wik5
$wik6
<span font='14' background='#FFF988' foreground='red'>  </span><span font='14' background='white' foreground='white'>                       </span>
<span font='14' background='#8FDFD6' foreground='black'>$rd0     </span>" \
--field="<span font='Serif 13' foreground='blue'>Празнични дати</span>:FBTN" 'bash -c celab'


#  --undecorated  --text="<span font='14' background='#58DCE7' foreground='green'>         CALENDAR        </span>
# <span $red1>1   adASASDNSJKHeeegggge</span>
# <span $red1>asdsadASASDNSJKHeeegggge</span>