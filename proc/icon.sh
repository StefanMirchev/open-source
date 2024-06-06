#!/bin/bash

 
  xy=$(xrandr |awk '$0 ~ "*" {print $1}')
  X0=$(echo $xy | cut -d'x' -f1) ; Y0=$(echo $xy | cut -d'x' -f2) 
  KX_0=$(printf %.3f\\n $(echo "(($X0/37.5))" | bc -l )) 
  KY_0=$(printf %.3f\\n $(echo "(($Y0/30.5))" | bc -l ))
  X1=$(printf %.0f\\n $(echo "(($X0-(8 *$KX_0))*0.001)" | bc -l ))
  Y1=$(printf %.0f\\n $(echo "(($Y0-(1 *$KY_0))*0.001)" | bc -l ))


 icon0='file://'/home/$USER/work/library/image/icon

# FOLDERS

# gio set -t 'string' ~/Desktop/MAIN.desktop 'metadata::custom-icon'  $icon0/myjob.ico 
 gio set -t 'string' ~/garhiv               'metadata::custom-icon'  $icon0/gdrive.ico
 gio set -t 'string' ~/work                 'metadata::custom-icon'  $icon0/myjob.ico 
 gio set -t 'string' ~/work/ebook           'metadata::custom-icon'  $icon0/ebook.ico
 gio set -t 'string' ~/work/ffmpeg          'metadata::custom-icon'  $icon0/ffmpeg.ico
 gio set -t 'string' ~/work/git             'metadata::custom-icon'  $icon0/github.ico
 gio set -t 'string' ~/work/hand            'metadata::custom-icon'  $icon0/hand.ico
 gio set -t 'string' ~/work/hand/HAND04/change    'metadata::custom-icon'  $icon0/change.ico
 gio set -t 'string' ~/work/html            'metadata::custom-icon'  $icon0/html.ico
 gio set -t 'string' ~/work/job             'metadata::custom-icon'  $icon0/job.ico
 gio set -t 'string' ~/work/mysql           'metadata::custom-icon'  $icon0/mysql.ico
 gio set -t 'string' ~/work/library         'metadata::custom-icon'  $icon0/library.ico
 gio set -t 'string' ~/work/linux           'metadata::custom-icon'  $icon0/linux.ico
 gio set -t 'string' ~/work/PHOTO-02        'metadata::custom-icon'  $icon0/photo.ico
 gio set -t 'string' ~/work/python          'metadata::custom-icon'  $icon0/python.ico
 gio set -t 'string' ~/work/php             'metadata::custom-icon'  $icon0/php.ico
 gio set -t 'string' ~/work/proc            'metadata::custom-icon'  $icon0/program.ico
 gio set -t 'string' ~/work/ruby            'metadata::custom-icon'  $icon0/ruby.ico
 gio set -t 'string' ~/work/vpn             'metadata::custom-icon'  $icon0/vpn.ico
 gio set -t 'string' ~/work/library/bookmarks             'metadata::custom-icon' $icon0/book.ico
 gio set -t 'string' ~/work/library/dw                    'metadata::custom-icon' $icon0/dw.ico
 gio set -t 'string' ~/work/library/git                   'metadata::custom-icon'  $icon0/github.ico
 gio set -t 'string' ~/work/library/git/gitmenu.sh        'metadata::custom-icon'  $icon0/github.ico
 gio set -t 'string' ~/work/library/hlp                   'metadata::custom-icon'  $icon0/hlp.ico
 gio set -t 'string' ~/work/library/html                  'metadata::custom-icon'  $icon0/html.ico
 gio set -t 'string' ~/work/library/java                  'metadata::custom-icon'  $icon0/java.ico
 gio set -t 'string' ~/work/library/image                 'metadata::custom-icon'  $icon0/icon.ico
 gio set -t 'string' ~/work/library/LibreOffice           'metadata::custom-icon'  $icon0/LibreOffice.ico
 gio set -t 'string' ~/work/library/linux                 'metadata::custom-icon'  $icon0/linux.ico
 gio set -t 'string' ~/work/library/MasterPDF             'metadata::custom-icon'  $icon0/masterpdf.ico
 gio set -t 'string' ~/work/library/music                 'metadata::custom-icon'  $icon0/music.ico
 gio set -t 'string' ~/work/library/mylogo                'metadata::custom-icon'  $icon0/mylogo.ico
 gio set -t 'string' ~/work/library/Mysql                 'metadata::custom-icon'  $icon0/mysql.ico
 gio set -t 'string' ~/work/library/php                   'metadata::custom-icon'  $icon0/php.ico
 gio set -t 'string' ~/work/library/php/phpmenu.sh        'metadata::custom-icon'  $icon0/php.ico
 gio set -t 'string' ~/work/library/Pinta                 'metadata::custom-icon'  $icon0/pinta.ico
 gio set -t 'string' ~/work/library/python                'metadata::custom-icon'  $icon0/python.ico
 gio set -t 'string' ~/work/library/python/pythonrun.sh   'metadata::custom-icon'  $icon0/python.ico
 gio set -t 'string' ~/work/library/python/phythonmenu.sh 'metadata::custom-icon'  $icon0/python.ico
 gio set -t 'string' ~/work/library/python/compile.sh     'metadata::custom-icon'  $icon0/python.ico
 gio set -t 'string' ~/work/library/python/decompile.sh   'metadata::custom-icon'  $icon0/python.ico
 gio set -t 'string' ~/work/library/python/decompile-pyc-dir-recursively.py 'metadata::custom-icon'  $icon0/python.ico
 gio set -t 'string' ~/work/library/QR                    'metadata::custom-icon' $icon0/qrcode.ico
 gio set -t 'string' ~/work/library/ruby                  'metadata::custom-icon' $icon0/ruby.ico
 gio set -t 'string' ~/work/library/ruby/rubyrun.sh       'metadata::custom-icon' $icon0/ruby.ico
 gio set -t 'string' ~/work/library/ruby/rubymenu.sh      'metadata::custom-icon' $icon0/ruby.ico
 gio set -t 'string' ~/work/library/share_folder          'metadata::custom-icon' $icon0/share_folder.ico
 gio set -t 'string' ~/work/library/sms                   'metadata::custom-icon' $icon0/sms.ico
 gio set -t 'string' ~/work/library/sound                 'metadata::custom-icon' $icon0/audio.ico
 gio set -t 'string' ~/work/library/sublime               'metadata::custom-icon' $icon0/sublime.ico
 gio set -t 'string' ~/work/library/themes                'metadata::custom-icon' $icon0/themes.ico
 gio set -t 'string' ~/work/permi.sh                      'metadata::custom-icon' $icon0/permi.ico    
 gio set -t 'string' ~/work/proc/4-8min.sh                'metadata::custom-icon' $icon0/8min.ico  
 gio set -t 'string' ~/work/proc/linux_inst.txt           'metadata::custom-icon' $icon0/install.ico   
 gio set -t 'string' ~/work/proc/arhiv.sh                 'metadata::custom-icon' $icon0/arhiv.ico  
 gio set -t 'string' ~/work/proc/audiorun.sh              'metadata::custom-icon' $icon0/audio.ico  
 gio set -t 'string' ~/work/proc/ascii.sh                 'metadata::custom-icon' $icon0/ascii.ico  
 gio set -t 'string' ~/work/proc/batt_charg.sh            'metadata::custom-icon' $icon0/battery.ico 
 gio set -t 'string' ~/work/proc/batt_level.sh            'metadata::custom-icon' $icon0/battery.ico 
 gio set -t 'string' ~/work/proc/beyo.sh                  'metadata::custom-icon' $icon0/beyond.ico 
 gio set -t 'string' ~/work/proc/booz.sh                  'metadata::custom-icon' $icon0/booz.ico 
 gio set -t 'string' ~/work/proc/browser.sh               'metadata::custom-icon' $icon0/browser.ico 
 gio set -t 'string' ~/work/proc/calendar.sh              'metadata::custom-icon' $icon0/calendar.ico
 gio set -t 'string' ~/work/proc/calendar1.sh             'metadata::custom-icon' $icon0/calendar.ico
 gio set -t 'string' ~/work/proc/checkinstall.sh          'metadata::custom-icon' $icon0/install.ico
 gio set -t 'string' ~/work/proc/checkproc.sh             'metadata::custom-icon' $icon0/program.ico
 gio set -t 'string' ~/work/proc/check_sys.sh             'metadata::custom-icon' $icon0/system.ico
 gio set -t 'string' ~/work/proc/clipbpaste.sh            'metadata::custom-icon' $icon0/clipbpaste.ico
 gio set -t 'string' ~/work/proc/cloud.sh                 'metadata::custom-icon' $icon0/cloud.ico
 gio set -t 'string' ~/work/proc/clock.sh                 'metadata::custom-icon' $icon0/clock.ico
 gio set -t 'string' ~/work/proc/coordinate.sh            'metadata::custom-icon' $icon0/coordinate.ico
 gio set -t 'string' ~/work/proc/colors.sh                'metadata::custom-icon' $icon0/icon.ico   
 gio set -t 'string' ~/work/proc/copysmb.sh               'metadata::custom-icon' $icon0/copysmb.ico   
 gio set -t 'string' ~/work/proc/cpu.sh                   'metadata::custom-icon' $icon0/cpu.ico   
 gio set -t 'string' ~/work/proc/debug.sh                 'metadata::custom-icon' $icon0/debug.ico
 gio set -t 'string' ~/work/proc/display.sh               'metadata::custom-icon' $icon0/display.ico
 gio set -t 'string' ~/work/proc/garhiv.sh                'metadata::custom-icon' $icon0/gdrive.ico
 gio set -t 'string' ~/work/proc/en-bg.sh                 'metadata::custom-icon' $icon0/dict.ico
 gio set -t 'string' ~/work/proc/encode.sh                'metadata::custom-icon' $icon0/encode.ico
 gio set -t 'string' ~/work/proc/icon.sh                  'metadata::custom-icon' $icon0/icon.ico   
 gio set -t 'string' ~/work/proc/image.sh                 'metadata::custom-icon' $icon0/image.ico   
 gio set -t 'string' ~/work/proc/iso.sh                   'metadata::custom-icon' $icon0/iso.ico   
 gio set -t 'string' ~/work/proc/kill.sh                  'metadata::custom-icon' $icon0/kill.ico  
 gio set -t 'string' ~/work/proc/killproc.sh              'metadata::custom-icon' $icon0/kill.ico  
 gio set -t 'string' ~/work/proc/lcl.sh                   'metadata::custom-icon' $icon0/linux.ico   
 gio set -t 'string' ~/work/proc/linux_inst.sh            'metadata::custom-icon' $icon0/install.ico   
 gio set -t 'string' ~/work/proc/letter_size.sh           'metadata::custom-icon' $icon0/letter_size.ico   
 gio set -t 'string' ~/work/proc/mai.sh                   'metadata::custom-icon' $icon0/myjob.ico
 gio set -t 'string' ~/work/proc/macaddres.sh             'metadata::custom-icon' $icon0/macaddres.ico
 gio set -t 'string' ~/work/proc/main.sh                  'metadata::custom-icon' $icon0/myjob.ico
 gio set -t 'string' ~/work/proc/magnify.sh               'metadata::custom-icon' $icon0/magnify.ico
 gio set -t 'string' ~/work/proc/mp4.sh                   'metadata::custom-icon' $icon0/music.ico
 gio set -t 'string' ~/work/proc/myweb.sh                 'metadata::custom-icon' $icon0/internet.ico
 gio set -t 'string' ~/work/proc/montdisk.sh              'metadata::custom-icon' $icon0/montdisk.ico
 gio set -t 'string' ~/work/proc/mynemo.sh                'metadata::custom-icon' $icon0/mynemo.ico
 gio set -t 'string' ~/work/proc/network.sh               'metadata::custom-icon' $icon0/share_folder.ico
 gio set -t 'string' ~/work/proc/numlock.sh               'metadata::custom-icon' $icon0/numlock.ico 
 gio set -t 'string' ~/work/proc/phone_batt.sh            'metadata::custom-icon' $icon0/call.ico
 gio set -t 'string' ~/work/proc/phonebook.sh             'metadata::custom-icon' $icon0/call.ico
 gio set -t 'string' ~/work/proc/phone_restart.sh         'metadata::custom-icon' $icon0/call.ico
 gio set -t 'string' ~/work/proc/phonesearch.sh           'metadata::custom-icon' $icon0/call.ico
 gio set -t 'string' ~/work/proc/message.sh               'metadata::custom-icon' $icon0/message.ico
 gio set -t 'string' ~/work/proc/permi.sh                 'metadata::custom-icon' $icon0/permi.ico  
 gio set -t 'string' ~/work/proc/print.sh                 'metadata::custom-icon' $icon0/print.ico   
 gio set -t 'string' ~/work/proc/print_gfo.sh             'metadata::custom-icon' $icon0/print.ico   
 gio set -t 'string' ~/work/proc/qr.sh                    'metadata::custom-icon' $icon0/qrcode.ico
 gio set -t 'string' ~/work/proc/recepty.sh               'metadata::custom-icon' $icon0/recepty.ico
 gio set -t 'string' ~/work/proc/restoreweb.sh            'metadata::custom-icon' $icon0/internet.ico 
 gio set -t 'string' ~/work/proc/runproc.sh               'metadata::custom-icon' $icon0/program.ico
 gio set -t 'string' ~/work/proc/search.sh                'metadata::custom-icon' $icon0/search.ico 
 gio set -t 'string' ~/work/proc/scanner.sh               'metadata::custom-icon' $icon0/scanner.ico 
 gio set -t 'string' ~/work/proc/schedule.sh              'metadata::custom-icon' $icon0/schedule.ico 
 gio set -t 'string' ~/work/proc/share_file.sh            'metadata::custom-icon' $icon0/share.ico
 gio set -t 'string' ~/work/proc/shedi.sh                 'metadata::custom-icon' $icon0/edit.ico
 gio set -t 'string' ~/work/proc/shrun.sh                 'metadata::custom-icon' $icon0/run.ico
 gio set -t 'string' ~/work/proc/shoping.txt              'metadata::custom-icon' $icon0/shoping.ico 
 gio set -t 'string' ~/work/proc/sms.sh                   'metadata::custom-icon' $icon0/sms.ico 
 gio set -t 'string' ~/work/proc/smplayer.sh              'metadata::custom-icon' $icon0/smplayer.ico 
 gio set -t 'string' ~/work/proc/startup.sh               'metadata::custom-icon' $icon0/stratup.ico 
 gio set -t 'string' ~/work/proc/systemp.sh               'metadata::custom-icon' $icon0/fan.ico 
 gio set -t 'string' ~/work/proc/timers.sh                'metadata::custom-icon' $icon0/clock.ico
 gio set -t 'string' ~/work/proc/tor.sh                   'metadata::custom-icon' $icon0/tor.ico
 gio set -t 'string' ~/work/proc/tv.sh                    'metadata::custom-icon' $icon0/tv.ico
 gio set -t 'string' ~/work/proc/unzip.sh                 'metadata::custom-icon' $icon0/zip.ico
 gio set -t 'string' ~/work/proc/unlock.sh                'metadata::custom-icon' $icon0/permi.ico
 gio set -t 'string' ~/work/proc/unluck_files.sh          'metadata::custom-icon' $icon0/permi.ico
 gio set -t 'string' ~/work/proc/vbox.sh                  'metadata::custom-icon' $icon0/vbox.ico
 gio set -t 'string' ~/work/proc/volume.sh                'metadata::custom-icon' $icon0/audio.ico
 gio set -t 'string' ~/work/proc/weather.sh               'metadata::custom-icon' $icon0/weather.ico
 gio set -t 'string' ~/work/proc/yad.sh                   'metadata::custom-icon' $icon0/yad.ico
 gio set -t 'string' ~/work/proc/zip_folder.sh            'metadata::custom-icon' $icon0/zip.ico

 # ============================================================
 gio set -t 'string' ~/work/proc/convert.sh             'metadata::custom-icon' $icon0/convert.ico   
 gio set -t 'string' ~/work/proc/php.sh                 'metadata::custom-icon' $icon0/php.ico   
 gio set -t 'string' ~/work/proc/pdfresize.sh           'metadata::custom-icon' $icon0/pdf.ico   
 gio set -t 'string' ~/work/proc/termin.sh              'metadata::custom-icon' $icon0/terminal.ico   
 gio set -t 'string' ~/work/proc/timers1.sh             'metadata::custom-icon' $icon0/clock.ico   
 gio set -t 'string' ~/work/proc/trans.sh               'metadata::custom-icon' $icon0/translate.ico   
 gio set -t 'string' ~/work/proc/system.sh              'metadata::custom-icon' $icon0/system.ico   
 gio set -t 'string' ~/work/proc/record.sh              'metadata::custom-icon' $icon0/record.ico   
   

    yad --fixed  --title "FINIHS COPY" --no-buttons --geometry=10x-10-$X1-$Y1 --timeout=7 --undecorated \
--gtkrc=/home/$USER/work/library/themes/red.css --borders=3 --skip-taskbar --text="\
<span color='black'  background='#58DCE7' font='14'><b>Finish change icon files</b></span>" 
  