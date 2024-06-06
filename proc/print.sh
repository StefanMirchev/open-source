#!/bin/bash

patch0=~/work/
 cupsfilter $1 > $patch0/zan.pdf;  sleep 2
# IN COLOR VIA INTERNET -> https://document.online-convert.com/convert/jpg-to-pdf
/opt/master-pdf-editor-4/masterpdfeditor4 $patch0/zan.pdf ; sleep 1