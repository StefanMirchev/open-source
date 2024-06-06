#!/bin/bash

var0="AP" ; sleep 1 ; zenity --info --text $var0 &


  rm -f  $var0/*.pdf ; sleep 4 #  ;  rm -f  $var0/DECLARACIYA.pdf ; sleep 2

   unoconv -f pdf -o gfo -e PageRange=1-6  $var0"_GFO.PDF" ; sleep 2
   cp gfo.pdf $var0/$var0"_GFO.pdf" ; sleep 2 ; rm -f  gfo.pdf
 
   unoconv -f pdf -o DECLARACIYA -e PageRange=7-7  $var0"_GFO.PDF" ; sleep 2
   cp DECLARACIYA.pdf $var0/DECLARACIYA.pdf ; sleep 2 ; rm -f  DECLARACIYA.pdf
    
   unoconv -f pdf -o PROTOKOL -e PageRange=8-8  $var0"_GFO.PDF" ; sleep 3
   cp PROTOKOL.pdf $var0/PROTOKOL.pdf  ; sleep 3 ; rm -f  PROTOKOL.pdf


var0="KO" ; sleep 1 ; zenity --info --text $var0 &


  rm -f  $var0/*.pdf ; sleep 4 #  ;  rm -f  $var0/DECLARACIYA.pdf ; sleep 2

   unoconv -f pdf -o gfo -e PageRange=1-6  $var0"_GFO.PDF" ; sleep 2
   cp gfo.pdf $var0/$var0"_GFO.pdf" ; sleep 2 ; rm -f  gfo.pdf
 
   unoconv -f pdf -o DECLARACIYA -e PageRange=7-7  $var0"_GFO.PDF" ; sleep 2
   cp DECLARACIYA.pdf $var0/DECLARACIYA.pdf ; sleep 2 ; rm -f  DECLARACIYA.pdf
    
   unoconv -f pdf -o PROTOKOL -e PageRange=8-8  $var0"_GFO.PDF" ; sleep 3
   cp PROTOKOL.pdf $var0/PROTOKOL.pdf  ; sleep 3 ; rm -f  PROTOKOL.pdf


var0="TO"  ; sleep 1 ; zenity --info --text $var0 &


  rm -f  $var0/*.pdf ; sleep 4 #  ;  rm -f  $var0/DECLARACIYA.pdf ; sleep 2

   unoconv -f pdf -o gfo -e PageRange=1-6  $var0"_GFO.PDF" ; sleep 2
   cp gfo.pdf $var0/$var0"_GFO.pdf" ; sleep 2 ; rm -f  gfo.pdf
 
   unoconv -f pdf -o DECLARACIYA -e PageRange=7-7  $var0"_GFO.PDF" ; sleep 2
   cp DECLARACIYA.pdf $var0/DECLARACIYA.pdf ; sleep 2 ; rm -f  DECLARACIYA.pdf
    
   unoconv -f pdf -o PROTOKOL -e PageRange=8-8  $var0"_GFO.PDF" ; sleep 3
   cp PROTOKOL.pdf $var0/PROTOKOL.pdf  ; sleep 3 ; rm -f  PROTOKOL.pdf

   zenity --info --text "FINISH"