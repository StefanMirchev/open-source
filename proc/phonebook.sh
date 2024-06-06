#!/bin/bash

 
  xy=$(xrandr |awk '$0 ~ "*" {print $1}') ; K0=36.1421
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2)
 
  X1=$(printf %.0f\\n $(echo "scale=4; (($X0-(18.5*$K0))*0.54)" | bc -l ))
  Y1=$(printf %.0f\\n $(echo "scale=4; (($Y0-(8.7*$K0))*0.990)" | bc -l ))  

  X2=$(printf %.0f\\n $(echo "scale=4; (($X0-(13.3*$K0))*0.280)" | bc -l ))
  Y2=$(printf %.0f\\n $(echo "scale=4; (($Y0-(3.9*$K0))*0.999)" | bc -l ))  

  X3=$(printf %.0f\\n $(echo "scale=4; ($X1*1.095)" | bc -l ))
  Y3=$(printf %.0f\\n $(echo "scale=4; ($Y1*0.910)" | bc -l ))

  X4=$(printf %.0f\\n $(echo "scale=4; ($X1*1.400)" | bc -l ))
  Y4=$(printf %.0f\\n $(echo "scale=4; ($Y1*0.800)" | bc -l ))
  
  X5=$(printf %.0f\\n $(echo "scale=4; ($X1*1.400)" | bc -l ))
  Y5=$(printf %.0f\\n $(echo "scale=4; ($Y1*0.860)" | bc -l ))

  X6=$(printf %.0f\\n $(echo "scale=4; (($X0-(6*$K0))*0.950)" | bc -l ))
  Y6=$(printf %.0f\\n $(echo "scale=4; (($Y0-(15.5*$K0))*0.99)" | bc -l )) 

  export GTK_THEME="phonebook"
  
  ❗❗❗  ip0 = phone IP  ❗❗❗ 
 export ip0=192.168.0.204:5555
 val0=$(adb connect $ip0)  # ; yad --text "adb connect $ip0 -> $val0 "
 sleep 1 ; val1=$(adb connect adb devices) # ; sleep 2 ;  yad --text "If OK show phone display val1 is empty $val1 " 
 sleep 1 ; val2=$(scrcpy -s $ip0 ) &
 sleep 2
 #sleep  1 ;  yad --text  "If OK show phone display val2 is empty val12 $val2" 

  if [ "${val0:0:20}" = "failed to connect to" ] ; then  
      yad --fixed  --title "Connected to"  --borders=0  --geometry=10x-1+$X2+$Y2  \
   --window-icon=/home/$USER/work/library/image/icon/message.ico  --visible=blink \
   --gtkrc=/home/$USER/work/library/themes/red.css  --editable  --no-buttons  --timeout=30 \
   --text="<span color='black' font='15'><b>NOT connected to $ip0.</b></span> 
<span color='black' font='15'><b>Check IP phone and try second time.</b></span> 
<span color='black' font='15'><b>Include cable to PC and Phone.</b></span>" &


    sleep 0.2 ;  wmctrl -r "Connected to" -e 1,$X2,$Y2,0,0 
    wmctrl -c PHONEABOOK ;  sleep 0.5 ; wmctrl -c Lenovo A6010;  exit 
  fi
             for m in {1..6}; do
                if test $(wmctrl -l | grep "Lenovo A6010" 2>&1 | wc -l) -eq 1 ; then
                 sleep 2 ; wmctrl -r "Lenovo A6010"  -e 1,$X6,$Y6,300,500  ; sleep 1 ; break
                fi 
              sleep 1
            done &
           #    sleep 1.5 ; adb -s $ip0 shell input keyevent 26 
     while true  # 01
         do  
            val0=$(adb -s $ip0 shell dumpsys battery | grep USB) 
            a1=$(echo "${val0[*]:15:4}")
            if [ "$a1" = "true" ] ; then
              a1="<span font='14' foreground='Red' >TRUE</span>"
            else
              a1="FALSE"   
              a5="<span font='14' foreground='Black' >%</span>"
            fi
             val0=$(adb -s $ip0 shell dumpsys battery | grep level) ; val1=${val0:9:3}
                if (( $val1 == 100 )) > /dev/null 2>&1 ; then 
                   val1=${val0:9:3}
                   a5="<span font='15' foreground='black' >% </span>"
                else
                   val1=${val0:9:2}
                   a5="<span font='15' foreground='black' >%  </span>"
                fi     
#STOP RUN PHONE END 
      a3="<span font='15' foreground='Brown' font-weight='bold'  >Phone charge - </span>"
      a4="<span font='15' foreground='Red' font-weight='bold'>$val1</span>"
      sp0=$(perl -E 'say " " x 13')   fo0="'$' '$'"
now_call_cancel(){ adb -s $ip0 shell input keyevent KEYCODE_ENDCALL 
                   sleep 0.3 ; wmctrl -c "NOW CALL" ; } ; export -f now_call_cancel
click_Vol+(){ adb -s $ip0 shell input keyevent 24 ; } ; export -f click_Vol+
click_Vol-(){ adb -s $ip0 shell input keyevent 25 ; } ; export -f click_Vol-
proc01(){ xdotool key Alt+Tab ; sleep 0.5 ; xdotool key Alt+Tab ; sleep 0.5 ; } ; export -f proc01

proc02(){
    proc01 &
    str1=$(yad --fixed --form  --width=350 --title="NUMBER CALL" --undecorated  \
--gtkrc=/home/$USER/work/library/themes/yellow.css --geometry=10x-10+$X4+$Y4 \
--text="<span font='17' foreground='green'>$(echo $str0 | cut -d'|' -f1)</span>" \
--field="<span font=\'15\' foreground=\'blue\'>NUMBER CALL</span>" $(echo $str0 | cut -d'|' -f2) \
--window-icon=/home/$USER/work/library/image/icon/openphon.ico  ) 
if [ -z "$str0" ]; then # 03
      sleep 0.5
else
     sleep 0.5
    if ! [ -z "$str1" ] || $? = 0 ; then # 04
        sear0=$(echo $str1 | cut -d'|' -f1)
      # fold0=$(echo $str0 | cut -d'|' -f2)
 # xdotool key Alt+Tab ; sleep 0.5
##### PUSNI ❗❗❗ STOP CALL ❗❗❗
    adb -s $ip0 shell am start -a android.intent.action.CALL -d tel:$sear0 > /dev/null 2>&1
##### PUSNI
sleep 0.5 ; wmctrl -c "NUMBER CALL"
 str2=$(yad --fixed --form  --title="NOW CALL"   --undecorated --geometry=1x-1+$X5+$Y5 \
--gtkrc=/home/$USER/work/library/themes/aqua.css \
--text="<span font=\'16\' foreground=\'#DA2323\'font-weight='bold' >NOW CALL : </span><span font=\'16\' foreground=\'black\'>$(echo $str0 | cut -d'|' -f1)</span> " \
--button "Cancel":'bash -c now_call_cancel'  --button  "Vol+":'bash -c click_Vol+' \
--button  "Vol-":'bash -c click_Vol-'  \
--window-icon=/home/$USER/work/library/image/icon/openphon.ico )


    fi # ! [ -z "$str1" ] || $? = 0 ; then # 04
fi  # [ -z "$str0" ]; then # 03

        } 
  export -f proc02

# --gtkrc=/home/$USER/work/library/themes/pink.css  \
 str0=$(yad --fixed --list --title="PHONEABOOK"  \
--gtkrc=/home/$USER/work/library/themes/pink.css \
--text="<span font='15' background='pink' font-weight='bold'>CA power: $a1  PHONE  BOOK  $a3$a4 $a5</span>" \
--button "Cancel":1 --button "Call:2" --button "Power:4" --button "Square:5" \
--button "Back :6" --button "Open :7" --window-icon=/home/$USER/work/library/image/icon/call.ico \
--column="" --undecorated --no-headers  --separator="" --editable --text-align=center \
--window-icon=/home/$USER/work/library/image/icon/call.ico --search-column=1 --geometry=580x300+$X1+$Y1 \
--column=@fore@ --column=@back@ \
          'NAME                    |PHONE NUMBER   ' $fo0 \
          'A1 CENTER               |*88            ' $fo0 \
          'NIKOGA                  |*7070          ' $fo0 \
          'NIKOGA                  |*9910          ' $fo0 \
          'NIKOLAY CHUDOTWOREC     |0879545082     ' $fo0 \
          'ACHO AVTOMONT           |0896665314     ' $fo0 \
          'ANA ZARCHEVA            |0888992800     ' $fo0 \
          'ANNA DIMOVA             |0878151459     ' $fo0 \
          'ANI ROSHAVO             |0886319232     ' $fo0 \
          'ANADA DIMITRINA         |0885962855     ' $fo0 \
          'ARH_MILENA              |0888237828     ' $fo0 \
          'ARH_MITAK               |0886834484     ' $fo0 \
          'ASANS-TEH               |0897893593     ' $fo0 \
          'B-TRUST Stoyan Kasarov  |0882181104     ' $fo0 \
          'BATKATA                 |0884464410     ' $fo0 \
          'BIKE PETAR KARAIVANOV   |0878612808     ' $fo0 \
          'BOBY - 09               |0896601455     ' $fo0 \
          'BORE Nestor             |0896837748     ' $fo0 \
          'BOSS                    |0884648383     ' $fo0 \
          'BRADEV                  |0878755922     ' $fo0 \
          'CECETO                  |0885445634     ' $fo0 \
          'CENA                    |0887604801     ' $fo0 \
          'DAN4O NAP               |0886843233     ' $fo0 \
          'DR.DANKOVA Mn 8-13 15-1 |0889013106     ' $fo0 \
          'DENKA SHIVACHKA         |0893999373     ' $fo0 \
          'DIDA                    |0888769455     ' $fo0 \
          'DIDA NOVAK              |0896229833     ' $fo0 \
          'ELENA SAU               |0887548171     ' $fo0 \
          'Elena USA 17089254445   |17089254445    ' $fo0 \
          'ELY_UK                  |0888425052     ' $fo0 \
          'GINA                    |0888665604     ' $fo0 \
          'GITA BRATOV             |0878834215     ' $fo0 \
          'GOSHO-STEFKA            |0898583498     ' $fo0 \
          'GOSHO-CHCR              |0889873658     ' $fo0 \
          'GULSUN                  |0887701871     ' $fo0 \
          'HLADILNIK VWSKO         |0888304258     ' $fo0 \
          'HRISTO VELTRAN MASLA    |0888716320     ' $fo0 \
          'IVO                     |0878788790     ' $fo0 \
          'JENAI-TONI              |0889802789     ' $fo0 \
          'KAKA                    |0888931841     ' $fo0 \
          'KANATA NEW              |0888312966     ' $fo0 \
          'KATE  BAN               |0887930270     ' $fo0 \
          'KATIA WIDEN             |0884611734     ' $fo0 \
          'KAZAKOW DINKO           |0898666018     ' $fo0 \
          'KOLIO RAKI              |0893710698     ' $fo0 \
          'KONSTAN. COMP HP        |0876665507     ' $fo0 \
          'KOSTA                   |0888919154     ' $fo0 \
          'KLIMATICI PETYO         |0888212632     ' $fo0 \
          'KRASI 5 FLOOR           |0885942239     ' $fo0 \
          'LATI                    |0888786426     ' $fo0 \
          'LUBO4O-HLAD             |0888844265     ' $fo0 \
          'MARGOTO                 |0882502004     ' $fo0 \
          'MARIAN ADVOK            |0896733213     ' $fo0 \
          'MARIN-MAYSTOR           |0888174774     ' $fo0 \
          'METODI AMOV             |0887210703     ' $fo0 \
          'MICHONA                 |0886815504     ' $fo0 \
          'LUSI                    |0888658364     ' $fo0 \
          'MIGLENA                 |0886005383     ' $fo0 \
          'MILA                    |0893928749     ' $fo0 \
          'MILKA MANO              |0888502596     ' $fo0 \
          'MINKA                   |0878620230     ' $fo0 \
          'MIRO                    |0889714028     ' $fo0 \
          'MITACHETO               |0898690758     ' $fo0 \
          'MITAK-GUMI              |0887901480     ' $fo0 \
          'Mtel POVREDI            |35988123       ' $fo0 \
          'NIKI KOMSH              |0882515676     ' $fo0 \
          'NOT GEORGIEV            |0888784389     ' $fo0 \
          'NOVAK_D                 |0898781998     ' $fo0 \
          'NOVAK_M                 |0888516015     ' $fo0 \
          'PATNA POMOST            |070016166      ' $fo0 \
          'PAVLIN-MITACHE          |0876461399     ' $fo0 \
          'PEPKA                   |0879330891     ' $fo0 \
          'PEPA  FRAN              |+33618247289   ' $fo0 \
          'BIKE PETAR KARAIVANOV   |0878612808     ' $fo0 \
          'PETIA - DZI             |0878831290     ' $fo0 \
          'PETYA KAZAK             |0878449307     ' $fo0 \
          'PETYO BRAT              |0897860092     ' $fo0 \
          'PLAMEN                  |0883493411     ' $fo0 \
          'RADOSTINKA TECHA        |0887948143     ' $fo0 \
          'RUMEN SANIRANE          |0893714497     ' $fo0 \
          'SHIRIN                  |0888008015     ' $fo0 \
          'SHKODA SERVIZ           |0888929519     ' $fo0 \
          'SILVIA S4ET             |0885512414     ' $fo0 \
          'STANISLAV ALARM         |0878470700     ' $fo0 \
          'STEFKA JORE             |0898667463     ' $fo0 \
          'STEFKA-IRA              |0889640246     ' $fo0 \
          'TAXI                    |0887234432     ' $fo0 \
          'TEACHA 01               |0887889259     ' $fo0 \
          'TONI RAN                |0888680114     ' $fo0 \
          'VESKO 2 ETAG            |0887091875     ' $fo0 \
          'VILICHKA                |0889464609     ' $fo0 \
          'YOVKA                   |0888457071     ' $fo0 \
          'YNCHO                   |0897950099     ' $fo0 \
          'ZUZI                    |0883367441     ' 'black' 'pink'
         # 'Angel Nikolov 111111111 |0988949222     ' $fo0 \
         # 'ANA CONSORCI            |0898714893     ' $fo0 \
         # 'AKUMULATOR CARIO        |0886585553     ' $fo0 \
         # 'ANI PLEMENIC            |0888001403     ' $fo0 \
         # 'ANADOLIEVA              |00491797615175 ' $fo0 \
         # 'ANTONIA AITOVA          |0888852051     ' $fo0 \
         # 'ASANS-DOBRODGALIEV      |0886864103     ' $fo0 \
         # 'ATANAS SIME. KARAB      |0887941613     ' $fo0 \
         # 'ASANS-BOQAN RUMI        |0893839773     ' $fo0 \
         # 'AVTOSERVIZ LIDER 80     |0894443866     ' $fo0 \
         # 'BINKA PLEVE             |0885707215     ' $fo0 \
         # 'BINKA RAKI              |0894640114     ' $fo0 \
         # 'BOR NIKI                |0896735484     ' $fo0 \
         # 'BOR_NANKA               |0896735483     ' $fo0 \
         # 'BORE                    |0896837747     ' $fo0 \
         # 'BOSS                    |0884648383     ' $fo0 \
         # 'CECI_ELI                |0886365790     ' $fo0 \
         # 'CHENCHEVA               |0886584918     ' $fo0 \
         # 'DACHEV                  |0889434392     ' $fo0 \
         # 'DALGAROV                |0888221851     ' $fo0 \
         # 'DAKATA SAU4EN           |0888434287     ' $fo0 \
         # 'DAMYAN MAYSTOR-PLAST    |0897241190     ' $fo0 \
         # 'DANCHO  SHOPA           |0887333533     ' $fo0 \
         # 'DANCHO GALQ             |0889521705     ' $fo0 \
         # 'DANI KOLEG              |0889669854     ' $fo0 \
         # 'DESISLAVA               |0883610224     ' $fo0 \
         # 'DIAN-EL                 |0888272981     ' $fo0 \
         # 'DIDA SLUGEBEN           |056887591      ' $fo0 \
         # 'DIMITRINA KING TRAWEL   |0888785806     ' $fo0 \
         # 'DOBRI                   |0884767706     ' $fo0 \
         # 'DOBI NESEBAR            |0889529763     ' $fo0 \
         # 'DONKA KANATA            |0898650988     ' $fo0 \
         # 'DS DORTEA               |0888923031     ' $fo0 \
         # 'DS PETIA                |0886254378     ' $fo0 \
         # 'DS ROSE                 |0896619085     ' $fo0 \
         # 'DS VALENTINA            |0886753120     ' $fo0 \
         # 'DS_RA4E                 |0888515993     ' $fo0 \
         # 'DS RAINA CHEPOVA        |0895787016     ' $fo0 \
         # 'DS VALENTINA TSOCHEVA   |0882233012     ' $fo0 \
         # 'DSB METODOLOZI          |056878266      ' $fo0 \
         # 'DSB OBR_1               |056878154      ' $fo0 \
         # 'DSB PROGRAMISTI         |056878187      ' $fo0 \
         # 'DSB PROGRAMISTI         |056878188      ' $fo0 \
         # 'DSB VAPROSI             |056878281      ' $fo0 \
         # 'DSB VAPROSI NAP BURGAS  |056878281      ' $fo0 \
         # 'DSB VAPROSI NAP SOFI    |0298593681     ' $fo0 \
         # 'DSB чл.62               |056878126      ' $fo0 \
         # 'DSB TOYAN RIBA          |0888304246     ' $fo0 \
         # 'EL.PODPIS KRASI/IVAN    |056843600      ' $fo0 \
         # 'ELECTRONICA             |0877034129     ' $fo0 \
         # 'ELENA ZUKA              |0878349670     ' $fo0 \
         # 'ELENA_CHICAGO           |17084328335    ' $fo0 \
         # 'EMERCH01                |0885959288     ' $fo0 \
         # 'EVGENIYA GAGASHEVA      |0889316480     ' $fo0 \
         # 'FESHEV                  |0888855215     ' $fo0 \
         # 'EMI-KINA                |0888045639     ' $fo0 \
         # 'GECHKO BRAT             |0896831029     ' $fo0 \
         # 'G. GENOV                |0889353871     ' $fo0 \
         # 'GANCHO BOSH             |0884909541     ' $fo0 \
         # 'GORE-KOMP               |0888951677     ' $fo0 \
         # 'GOSHO 8 FLOOR           |0888272758     ' $fo0 \
         # 'GOSHO OREL              |0889306378     ' $fo0 \
         # 'GUNEVA-01  ENGL         |0885959403     ' $fo0 \
         # 'GUNEVA-02               |08878831387    ' $fo0 \
         # 'HRISTO POPAROV          |0886633187     ' $fo0 \
         # 'HRISTO Минт Сх          |0884255995     ' $fo0 \
         # 'HRISTO Минт Сх          |+491737033642  ' $fo0 \
         # 'INSPEKCIA VITANOV KIROVA|056842286      ' $fo0 \
         # 'IVAN YANEV GUL          |0889111801     ' $fo0 \
         # 'IVAN- ANI               |0897790119     ' $fo0 \
         # 'IVELINA ANT             |0878137807     ' $fo0 \
         # 'ISKRA KOSTA             |0882911096     ' $fo0 \
         # 'ISKRA KOSTA             |0898230615     ' $fo0 \
         # 'IVN                     |0877610921     ' $fo0 \
         # 'IVAN_PILETA UK          |0898432101     ' $fo0 \
         # 'JAR AHMED CHOLAKOV      |0889179721     ' $fo0 \
         # 'JULYA FLIGHTL           |0885538198     ' $fo0 \
         # 'KALOIAN                 |0887443912     ' $fo0 \
         # 'KAVKAZKI RESTORANT      |0877501770     ' $fo0 \
         # 'KERI_ EXEL              |0895450292     ' $fo0 \
         # 'KETA                    |0896334733     ' $fo0 \
         # 'KINA                    |0886408090     ' $fo0 \
         # 'KOLIO RAKI              |0893710698     ' $fo0 \
         # 'KRAS. DA4EV             |0888163487     ' $fo0 \
         # 'KRASI DANACHEN          |0894406973     ' $fo0 \
         # 'KRASI_IVAILO UK         |0878549991     ' $fo0 \
         # 'KREMENA                 |0899877067     ' $fo0 \
         # 'MAGDALENA-TECH          |0885164160     ' $fo0 \
         # 'MILENA PLOVDIV          ‎|0896086012     ' $fo0 \
         # 'MANOL                   |0889962460     ' $fo0 \
         # 'MAYA TECHA  UK          |0896009916     ' $fo0 \
         # 'MARIA BOIAN             |0896733214     ' $fo0 \
         # 'MILE-ELI                |0893928749     ' $fo0 \
         # 'MOST KOMP               |0875167639     ' $fo0 \
         # 'NANE_DIMONA             |0885744704     ' $fo0 \
         # 'NASKO SIMEON            |0887941613     ' $fo0 \
         # 'NAP                     |070018700      ' $fo0 \
         # 'NELA 4ISTA4KATA         |0884475680     ' $fo0 \
         # 'NELI IVANOVA            |0879593994     ' $fo0 \
         # 'NIKI  USA  7087040735   |17087040735    ' $fo0 \
         # 'NZOK                    |080014800      ' $fo0 \
         # 'NOI  HRIS _             |0888266654     ' $fo0 \
         # 'NOI PROGRAMISTI         |056803780      ' $fo0 \
         # 'NELI BRAT               |0896854100     ' $fo0 \
         # 'NELI SAU4               |0885582815     ' $fo0 \
         # 'NOI BOLNICHEN           |0882185264     ' $fo0 \
         # 'NOI DOBREWA pesionno    |0882185221     ' $fo0 \
         # 'NOI MILENA GEORGIEVA    |0882185252     ' $fo0 \
         # 'NOVAK_PETKO             |0884600069     ' $fo0 \
         # 'OGNQN                   |0888967129     ' $fo0 \
         # 'PARKET IanakiCvetkov    |0889759351     ' $fo0 \
         # 'PENKA KOMSH             |056544004      ' $fo0 \
         # 'PEPA - CHIF             |0888663316     ' $fo0 \
         # 'PEPKA  VAL40            |0897353871     ' $fo0 \
         # 'KLIMATIC HARI           |0888831578     ' $fo0 \
         # 'PETAR DENCHEV AVTO      |0888691103     ' $fo0 \
         # 'PETKO PLEV              |0877445496     ' $fo0 \
         # 'PLAMEN                  |0883493411     ' $fo0 \
         # 'PROLET MTARNOVO         |0886851753     ' $fo0 \
         # 'QNKA                    |0884317837     ' $fo0 \
         # 'RADO                    |0892953333     ' $fo0 \
         # 'RADOS                   |0888128661     ' $fo0 \
         # 'RICHO                   |0887476429     ' $fo0 \
         # 'RUMEN MILU              |0888227836     ' $fo0 \
         # 'Raiffeisenbank          |070010000      ' $fo0 \
         # 'RUMBATA                 |0888911371     ' $fo0 \
         # 'SIA PEHLIVANOVA         |0888206644     ' $fo0 \
         # 'SILVIA S4ET_            |0894383532     ' $fo0 \
         # 'STOYAN RIBA             |0878920630     ' $fo0 \
         # 'STOQN NOVAK             |0898781213     ' $fo0 \
         # 'Stoyan Taranov          |0882540420     ' $fo0 \
         # 'SWETA                   |0887249112     ' $fo0 \
         # 'TANIA SMR NESE          |0889529437     ' $fo0 \
         # 'TANYA BRAT              |0896834929     ' $fo0 \
         # 'TANYA KONSOR            |089911564      ' $fo0 \
         # 'TAPANAR_1               |0897950099     ' $fo0 \
         # 'TASKO                   |0878877372     ' $fo0 \
         # 'TECHA 02                |0888245386     ' $fo0 \
         # 'TECHA 03                |0887889259     ' $fo0 \
         # 'TEODOR BOQN             |0896743403     ' $fo0 \
         # 'Teodora Alexandrova     |0883360093     ' $fo0 \
         # 'TODOR                   |0887889092     ' $fo0 \
         # 'TOSHKO BAEV             |0879099492     ' $fo0 \
         # 'TONI_OFIS               |0884308069     ' $fo0 \
         # 'TOSHO-NANE              |0886517889     ' $fo0 \
         # 'ULUK PETKO              |0889792582     ' $fo0 \
         # 'VAKSINACIA              |0879396644     ' $fo0 \
         # 'Valo-ekspert            |0889504865     ' $fo0 \
         # 'VANKO BORE              |0896837749     ' $fo0 \
         # 'TV TEHNIK ILIA          |056814532      ' $fo0 \
         # 'UK ANNE                 |+44 7763 136796' $fo0 \
         # 'UK BAGAG-SVETLO         |+44 7597 683505' $fo0 \
         # 'UK BLAGA                |+44 7707 669761' $fo0 \
         # 'UK BOBY - STRATFPRD     |+44 7466 913838' $fo0 \
         # 'UK BORKO ‎               |+44 7841 192998' $fo0 \
         # 'UK DAMIAN               |+44 7590 497172' $fo0 \
         # 'UK ELY_UK               |+44 7587 848115' $fo0 \
         # 'UK EMIL                 |+44 7367 588677' $fo0 \
         # 'UK ESMAEL               |+44 7397 803278' $fo0 \
         # 'UK GEARDIE              |+44 7969 636461' $fo0 \
         # 'UK IVAILO               |+44 7859 150797' $fo0 \
         # 'UK NIKI_BRASNARQ        |+44 7459 625644' $fo0 \
         # 'UK RENTA                |+44 7872 618798' $fo0 \
         # 'UK SAM                  |+44 7775 507668' $fo0 \
         # 'UK STEFAN               |+44 7405 765402' $fo0 \
         # 'UK STEFKA               |+44 7570 005466' $fo0 \
         # 'UK SVETLO - BAGAG       |‎+44 7597 683505' $fo0 \
         # 'VASE                    |0888625495     ' $fo0 \
         # 'VELIZAR-AVTO            |0884216464     ' $fo0 \
         # 'VILNER                  |00436763101420 ' $fo0 \
         # 'VIOLETA                 |0898975795     ' $fo0 \
         # 'YANCHO_01 NESEBAR       |0895663076     ' $fo0 \
         # 'YANCHO_02               |0899086330     ' $fo0 \
         # 'YANCHO_03               |0899171716     ' $fo0 \
         # 'ZAHARI DICHEV           |0876711066     ' $fo0 \
         # 'РББ  A1 и Telenor       |029624102      ' $fo0 \
         # 'РББ  Vivacom            |1721           ' $fo0 \
         # 'ТURBINI   IVAN ZAFIROV  |0888904000     ' $fo0 \
         # 'Rui.Goncalves@theardenhotelstratford.com' $fo0 \
         # 'Damian.Marciniuk@theardenhotelstratford.com"
                ) 
             rc0=$? 
#  yad --info --text="AAA  $rc0    $str0"    ; xdotool key Alt+Tab ; sleep 0.5
              case $rc0 in  # 02
                          1) sleep 0.2 ; wmctrl -c PHONEABOOK ; wmctrl -c Lenovo A6010 
                             sleep 0.2 ; wmctrl -c "NOW CALL" ;  wmctrl -c "NUMBER CALL" ;  exit ;;
                          2) proc02   & ;;
                          3)  ;;   
                          4) rc0=0 ; str0='' ; adb shell input keyevent 26 ;;    
                          5) rc0=0 ; str0='' ; adb shell input keyevent KEYCODE_APP_SWITCH  ;;   
                          6) rc0=0 ; str0='' ; adb shell input keyevent 4   ;;   
                          7) rc0=0 ; str0='' ; adb shell input keyevent 5   ;;  
              esac
         done  # while true  # 01

