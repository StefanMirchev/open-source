#!/bin/bash


# A4-resized
patch0=~/work/
 gs                        \
   -o $patch0/zan.pdf  \
   -sDEVICE=pdfwrite       \
   -dPDFFitPage            \
   -g5950x8420             \
   -dPDFSETTINGS=/prepress \
    $1

    /opt/master-pdf-editor-4/masterpdfeditor4 $patch0/zan.pdf ; sleep 1