#!/bin/bash


  name=0  ; user0="n" ; pass0="n" ;  proc0='' ; shfile0='' ;  runterm0=''
  sl0="sleep 1.0" ;  clip0="xclip -sel clip" ; scv0="xdotool key Shift+Ctrl+v"  ; 
  backs0="xdotool key BackSpace" ; return0="xdotool key Return" ; q0="xdotool key q" 
  term0="gnome-terminal --geometry=130x10+280+780" ; # --tab"
  sudo0="sudo apt-get install -y"  ;   fold64="~/IDISK/LINUX/32-64/64" ; fold32="~/IDISK/LINUX/32-64/32"
  trem0="gnome-terminal --" 
  subl0=~/work/library/sublime/sublime-text.sh
 
  case $USER in  kosy) pass0=1 ;; inter) pass0=3 ;; chef) pass0=2 ;; esac 


sleep 0.5 
sp0=$(perl -E 'say " " x 16')   fo0="'$' '$'"

show_menus() {
app0=$(yad --list --title="LINUX_INSTALL" --column="" --undecorated --no-headers  --no-buttons  --separator=""  \
--window-icon=/home/$USER/work/library/image/icon/install.ico --search-column=1 --geometry=405x200+700+50 \
--select-action="bash -c on_click" --gtkrc=/home/$USER/work/library/themes/green01.css --text=\
"<span font='sans 14' background='#878700' foreground='white'>$sp0 LINUX_INSTALL $sp0 </span>
<span font='14' background='red' foreground='white'>NEVER! PERMITION SYSYTEM FOLDERS!</span>" \
--column=@fore@ --column=@back@ --column=@font@ \
'0. Exit                              ' $fo0 'sans 12'          \
'1. Linux_inst_sh                     ' $fo0 'sans 12'          \
'2. Linux_inst_txt                    ' $fo0 'sans 12'          \
'3. Linux_inst_docx                   ' $fo0 'sans 12'          \
'4. Check exist Install Remove app    ' 'white' '#878700' 'sans 12'
    )
          }

   read_options(){  
        case ${app0%.*} in 
         0) clear ; killall linux_inst.sh ; killall soffice.bin ; sleep 1 ; exit ;; 
         1) ~/work/proc/termin.sh
         # $subl0 ~/work/proc/linux_inst.sh:60 > /dev/null 2>&1 & 
          $subl0 ~/work/proc/linux_inst.sh:60 ; sleep 2 & 
           
echo " 
       
  
 ---------------------------INSTALL BEGIN ----------------------------
              

                 HP     Boot menu  - F9      Bios Setup  - F10
               ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
    ❗❗sudo gdebi -n  ~/IDISK/LINUX/32-64/64/anydesk_6.2.1-1_amd64.deb /opt ❗❗
    ❗❗sudo without not ask y/n  ->  echo "3" | sudo -S -k  apt-get autoremove -y cairo-clock  ❗❗
    ❗❗gdebi -n  without message  
               ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀ 

   💥 win 10  Brave -> extation, booknarks, megasync -> Sync folder,  Dekl. obr.1 

   💥 inter  Brave -> extation, booknarks, megasync -> Sync folder ; cp themes; .korp ; unluck /home/inter/.themes
      sudo  cp -r ~/work/library/hlp/locale  /etc/default/locale ;

 1● Install : VirtualBoox  VIBOX
    👉  unzip  ~/IDISK/LINUX/VirtualBoox.zip  -d  ~/IDISK/LINUX/VirtualBoox 
    👉  sudo gdebi -n  ~/IDISK/LINUX/VirtualBoox/virtualbox-7.0_7.0.8-156879~Ubuntu~jammy_amd64.deb
                   WAIT FINISH
On terminal 👉 VirtualBox &
Tools /blue line/3-th/Extension ⮕ Green + ⮕ 
~/IDISK/LINUX/VirtualBoox/Oracle_VM_VirtualBox_Extension_Pack-7.0.8-156879.vbox-extpack
Check install machine / UUID ⮕  VBoxManage list vms  ;  VBoxManage list runningvms
   a) Import Appliance File: 
 File ⮕ Import Appliance File:
   ❗   File ⮕ Import Apliance ⮕ File paste:
      kosy  ⮕ nemo ⮕ click on Driver 358  
         /media/kosy/7B32AFBE06A25392/VBOX_SAVE/INTERNET.ova
         /media/kosy/7B32AFBE06A25392/VBOX_SAVE/INTERNET_old.ova
         /media/kosy/7B32AFBE06A25392/VBOX_SAVE/WIN 10 32.ova
      chef  ⮕ nemo ⮕ click on Driver 82
         /media/chef/0D81F53908E6C16D/VBOX_SAVE/INTERNET.ova
         /media/chef/0D81F53908E6C16D/VBOX_SAVE/INTERNET_old.ova
         /media/chef/0D81F53908E6C16D/VBOX_SAVE/WIN 10 32.ova
    Next ⮕ Mashine Base Folder ⮕ delete VMs ⮕ Finish
   b) MAC addres
      kosy   smb://192.168.0.206    D8C0A606CFB3 ⮕ change with startup.sh
      inter  smb://192.168.0.207    0800278F4D7C
      chef   smb://192.168.0.208    080027666F70
      acco   smb://192.168.0.209    080027F8D184
     See in /home/chef/work/proc/startup.sh row 25 ⮕ change current MAC addews
     ❗IF NOT CHANGE MAC ADDRES ⮕ acco ⮕ show and not work VM ⮕ 
     Could not start the machine WIN 10 32 because the following physical 
     network interfaces were not found: wlp1s0 (adapter 1)❗
   c) Create Shortcut on desktop ⮕ Cut ⮕ Pase ⮕  /home/$USER/VirtualBox
  1️⃣ ❗❗❗ IF NOT WORK ❗❗❗
 1. View ⮕ Seamless Mode is grayed out and not working. AND
    Video memory ⮕Auto-resize Guest display is grayed out.
    Resolve: Devices ⮕ Insert Guest Additions CD Image... ⮕ Exequte/Run
 2. REPAIER - USB and/or Card Reader signature⮕ 
       1. Oracle - INTERNET OR WIN 10 32 _> Settings ⮕ USB ⮕ Enable USB Controler CHECK⮕ 
         usb 3.0 (xHCL) Controler
       2. in terminal ⮕ in terminal root mashine not VM
          👉 sudo apt-get update
          👉 sudo usermod -a -G vboxusers $USER    ⚠️
          ⚠️ NOT sudo usermod -a -G vboxsf "$USER" ⚠️
          ⚠️ NOT sudo adduser $USER vboxusers 
           restart comp.  
 3. About disable update See ⮕
     wmctrl -r "INTERNET [Running] - Oracle VM VirtualBox"  -e 1,160,50,1600,850 

 4. After import - NetWork ⮕  
    "Could not start the machine INTERNET because the 
    following physical network interfaces were not found:"
      a) click on new group ⮕ Setting ⮕ Network ⮕ Attached to
         ⮕ Brodget Adapte ⮕ Adwanced -. OK
 5. After import - Mouse ⮕ 
    "The Virtual Machine reports that the guest OS does not support mouse " 
       a) click on new group ⮕ Setting ⮕ System ⮕
     Pointing device ⮕ USB Tablet   
 2️⃣ Extend Virtualbox disk increase expand storage the Disk Size Resize
 1. in VirtualBox ⮕ File ⮕ virtual Media Manadger = Ctrl+D
 2. Inter ⮕ linux settings ⮕ Disks ⮕ Click on External/Filesystem partition 
   ⮕ Additional Partition Options /zubchati kolelca/ ⮕ Resize ⮕
   ⮕ Freespace folloeing  "-" = 0.0 GB ⮕ Resize/red/
   For Win 10 32 ⮕ Disk Managment ⮕ (D:) Right button mouse ⮕ Sxtenf Volumr ⮕ Next

2️3️⃣ How To Install new group in Virtualbox From Iso
  - Click on Tools ⮕ New ⮕ Name ⮕ Win 10 64 ⮕ Memory size 4096 ⮕ Create
  - Create Virtual Hard Disk ⮕ Create 
  - Start ⮕ ⮕ Chooce a Virtual optical disk file ⮕ windows64.iso ⮕ Choose ⮕ Start
  4️⃣ Drag and drop  and Shared clipboard ⮕ Device:sudo
      ⮕ Drag end Drop ⮕ Bidirectional ; ⮕ Shared clipboard ⮕ Bidirectional
  5️⃣ Settings⮕Audio⮕ Extend Features: ⮕ Enable Audio_inpur
 2●  1. Startup ⮕  /home/kosy/work/proc/startup.sh ⮕ Propertes ⮕ Permition 
                ⮕ Allow executing as program
     2.  Menu ⮕ Startup application ⮕ + ⮕ startup.sh 
 3● ❌  WiFi : cd  ~/rtl8821ce   ;  make clean ;  make  ; sudo make install
sudo modprobe 8821ce  ; Click WiFi icon choice A1_F277  pass
485754433689E4A4 ; A6010_CHEF / abc123456
MAC ADDRES 001060648A39 080027666F70 

  4● Install : sublime_text
     I. Оption
     1. sudo chown -R $USER:$USER /opt  
     2. mkdir /opt/sublime_text
     3. unzip ~/IDISK/LINUX/32-64/64/sublime_text.zip -d /opt 
     II. Оption
     1. NOT this   sudo apt-get install -y sublime-text
       mv /opt/"Sublime Text 2" /opt/sublime_text  
    NEXT
      1. next rows READ VIA linux_inst.txt ⮕ Search with ⮕   sublime_text Preferences
       OR See ~/work/library/sublime/sublime-text.sh  ~/work/library/sublime/_README.txt
      2. sudo cp ~/work/library/sublime/hosts  /etc
      3. Set  as DEFAULT ⮕ ~/work/library/sublime/sublime-text.sh 
      4. sudo apt-get install -y hunspell-bg 
      5. View ⮕ Dictionary ⮕ bg_BG  ⮕ check F6 

 5●  Viber 👉 unzip ~/IDISK/LINUX/32-64/64/viber.zip 'viber/*' -d /opt
              unzip ~/IDISK/LINUX/32-64/64/viber.zip 'ViberPC/*' -d ~/
              mv ~/ViberPC ~/.ViberPC
 6● 1.  sudo apt-get install -y xclip  2.  sudo apt-get install -y xdotool  
    3.  sudo apt-get install -y yad    4.  sudo apt-get install -y xsel  
    5   sudo gdebi -n ~/IDISK/LINUX/32-64/64/acpi_1.7-1.1ubuntu1_amd64.deb  & 
        sudo apt-get install -y awk 
    6.  CPU limit 👉 sudo gdebi -n ~/IDISK/LINUX/32-64/64/cpulimit_2.6-2_amd64.deb  
 7● Install : Share folder 
 sudo apt-get install -y samba  
 sudo apt-get install -y smbclient  
 Folder share driver:
 1️⃣ kosy             => from /home => share kosy => as  kosy-c 
  => frmm /media/kosy/ => share 725D0D7922516FDF => as  kosy-d  
 2️⃣ inter            => from /home => share inter => as inter-c 
 /var/lib/samba/usershares/ NOT COPY/PASTE
 https://www.zdnet.com/article/how-to-share-folders-to-your-network-from-linux/
 ⚠️ if not work 
  1.sudo apt-get update
  2.sudo apt-get autoremove samba , sudo apt-get autoremove smbclient
  3.sudo apt-get install -y samba , sudo apt-get install -y smbclient 
  4. NOT reboot 
  5. smbclient -L inter   or smbclient -L kosy
  6. In terminal nemo smb://192.168.0.206/ or nemo smb://192.168.0.207/⚠️
 
  8●  Generate SSH Keys ⮕ see more  libreoffice --writer  ~/work/library/git/ssh_key.docx & 
                           
    I.     ⚠️  IF ALREADY INSTALLED SSH        ⚠️  
             ❗ CHECK IP NETWORK TO PC ❗
    1️a) In kosy  terminal 👉  ssh-copy-id inter@192.168.0.207  ⮕ PROBLEM ⮕ REPAIER (c)
    2️b) In inter terminal 👉  ssh-copy-id kosy@192.168.0.206   ⮕ PROBLEM ⮕ REPAIER (d)     
    II.    ⚠️  IF NOT ALREADY INSTALLED SSH    ⚠️
    1. 👉  sudo apt-get install -y openssh-server
    2. 👉  sudo apt-get install -y openssh-client
    3. 👉  sudo apt-get install -y sshpass 
    1️⃣ In kosy terminal
    1. Generate RSA SSH Keys 👉 ssh-keygen -t rsa   or  with email  ssh-keygen -t rsa -C "your_email@youremail.com"
       Press only Enter. Create file    id_rsa   and   id_rsa.pub
    2. Identity added 👉  ssh-add  ~/.ssh/id_rsa 
    3. Unluck 👉 sudo chmod 700 ~/.ssh   
    4. Create  empty authorized_keys -👉 touch  ~/.ssh/authorized_keys 
    5. Unluck 👉 sudo chmod 600  ~/.ssh/authorized_keys   &&  sudo chmod 640  ~/.ssh/authorized_keys
    6. To make the change take effect run
      👉 sudo service ssh restart  &&   sudo service sshd restart
        if show: sshd: unrecognized service  - NOT PROBLEM ⚠️
    7. 👉 ~/work/library/sublime/sublime-text.sh /etc/ssh/sshd_config
           - row 57  PasswordAuthentication no 
           - row 58 PermitEmptyPasswords no
    8. Copy id_rsa.pub into authorized_keys 
    1️a) In kosy terminal  👉  ssh-copy-id inter@192.168.0.207 
    2️b) In inter terminal 👉  ssh-copy-id kosy@192.168.0.206
             ❗❗❗ WRITE yes then Enter ❗❗❗ 
      c)  Copy from kosy to inter   
          🅐  if copy from kosy to inter is ❗OK❗ show :
              kosy@192.168.0.206's password: 
              or 
             The authenticity of host '192.168.0.207 (192.168.0.207)' can't be established.
             ECDSA key fingerprint is SHA256:WVLWd7JE6hYWthxWNGSBjD/EG6uFHgIXQg4wJgPb9Q0.
             Are you sure you want to continue connecting (yes/no/[fingerprint])?  type yes
                
             Number of key(s) added: 1

              Now try logging into the machine, with:   "ssh 'inter@192.168.0.207'"
              and check to make sure that only the key(s) you wanted were added.

          🅑  if copy from kosy to inter is ❗NOT OK  COPYSMB.SH NOT WORK ❗ show :
            ERROR: @ WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED! @ ERROR: .......
 REPAIER (c)
 In kosy terminal 👉 ssh-keygen -f "/home/kosy/.ssh/known_hosts" -R "192.168.0.207"
                      ssh-copy-id inter@192.168.0.207 
  
      d)  Copy from inter to kosy  is ❗NOT OK  COPYSMB.SH NOT WORK ❗
 REPAIER (d)
 In inter terminal 👉 ssh-keygen -f "/home/inter/.ssh/known_hosts" -R "192.168.0.206"
                      ssh-copy-id kosy@192.168.0.206
                      ssh-copy-id chef@192.168.0.206
                    ❗ Then COPYSMB.SH work perfect. ❗

    9. IF SOMTING PROBLEM       
  sshpass -p '1' scp /home/inter/work/linux/a1.sh kosy@192.168.0.206:/home/kosy/Desktop
  sshpass -p '3' scp /home/kosy/work/linux/a2.sh   inter@192.168.0.207:/home/inter/Desktop
  
   9● Shortcut 👉 sudo apt-get install -y alacarte   ⮕ Search Main Menu ⮕ Add on taskbar MyNemo MAIN.SH
     II. Options:
   a) copy 
      sed -i s/kosy/$USER/g ~/work/library/bookmarks/alacarte-made.desktop &
      sed -i s/kosy/$USER/g ~/work/library/bookmarks/alacarte-made-1.desktop
    sudo cp ~/work/library/bookmarks/alacarte-made.desktop ~/.local/share/applications &
    sudo cp ~/work/library/bookmarks/alacarte-made-1.desktop ~/.local/share/applications &
    sudo cp ~/work/library/bookmarks/alacarte-made-2.desktop ~/.local/share/applications 
   b) unlock 
    sshpass -p 1 sudo chown -R $USER:$USER ~/.local/share/applications/alacarte-made.desktop &
    sshpass -p 1 sudo chown -R $USER:$USER ~/.local/share/applications/alacarte-made-1.desktop
    /usr/share/applications
   ❗❗❗❗❗ VWERY VERY VERY IMPORTAN  ❗❗❗❗❗❗     
       System⮕ Font Selection 👉  Liberation Mono /Ubuntu Mono / size 11 mono 
       Font Settings 👉  Text scaling factor  1,1
       Panel settings  👉 Pnaele feight ⮕ 37
   ❗❗❗❗  VWERY VERY VERY IMPORTAN  ❗❗❗❗❗❗
       a) Window Tiling - check box off
       b) Color desktop panel
          ~/work/library/sublime/sublime-text.sh /usr/share/themes/Mint-Y-Dark-Aqua/cinnamon/cinnamon.css
        Ctrl–G ⮕ row 460
           .panel-top, .panel-bottom, .panel-left, .panel-right {
             color: #ffffff;
             border: none;
             background-color: #6767EB;
             font-size: 1em;
             padding: 0px; 
             border: 2px solid yellow;
             border-radius: 10px; }

  Options /  background-color: #792ECF; blue
             background-color: #6767EB; blue
             background-color: #B88585;   brown
             background-color: #B73737;   brown
             background-color: #C69C9C;   brown
             border: 2px solid yellow; /

      c) Terminal  ⮕  Liberation Mono Regular size 11 mono 
      d) size deskto icons ⮕ Click Right button on desktop ⮕ 
         Customize ⮕ Icon size 
     Menu ⮕ System Settings ⮕ desktop ⮕ uncheck
      e) Menu ⮕ System Settings - Themes :
          - Mouse pointer ⮕ Bibata-Modern-Classic
          - Applications ⮕ Mint-Y-Aqua
          - Icons ⮕ Mint-Y-Aqua
          - Desktop ⮕ Mint-Y-Dark-Aqua
       f) Menu ⮕ System Settings - Background ⮕ + ~/work/library/image/baskgroun
 10● Printer Xerox /if need https://gist.github.com/alhoo/4f6b32a9d9ad7f07869e4a0d72d6e6bb/
     1. 👉 sudo dpkg --add-architecture i386 &  sudo apt-get update
     2. 👉 sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 libcupsimage2:i386
     3. 👉 sudo dpkg -i /home/kosy/IDISK/LINUX/32-64/64/xerox-phaser-6000-6010_1.0-1_i386.deb
     4. 👉 sudo apt-get -f install & sudo apt-get install libcupsimage2:i386
     5. 👉 tail -f /var/log/cups/error_log | grep -i error 
 11● Thunderbird 
     1. Stefan Mirchev ⮕ si.mirchev@gmail.com ⮕  Done ⮕ 
     4. Finish
 12● System⮕ Notification setting ⮕ Disable Notification 
 13● export CHROME_DEVEL_SANDBOX=/usr/local/sbin/chrome-devel-sandbox  ❓❓❓
 14● Magnify 👉 sudo gdebi -n ~/IDISK/LINUX/32-64/64/kmag_17.12.3-0ubuntu2_amd64.deb
 15● Clena Disk 👉 sudo gdebi -n ~/IDISK/LINUX/32-64/64/bleachbit_4.0.0_all_ubuntu1804.deb 
 16● Calendar 👉 sudo apt-get install -y gcal  &&  sudo apt install vsftpd
 17● Gdrive 👉 sudo install ~/IDISK/LINUX/32-64/64/gdrive /usr/local/bin 
    mkdir  ~/garhiv
    unzip  ~/IDISK/LINUX/32-64/64/gdrive.zip  -d ~/
    👉 gdrive about   or   gdrive list ⮕ add code keydown
18● CD and DVD Kreator ❓❓❓⮕  sudo apt-get install -y k3b
19● kdiff3 ⮕ sudo apt-get install -y kdiff3  !!!! NOT NOW
20● Encoding 👉  sudo apt-get install -y dos2unix  
21● Change icons 👉 sh ~/work/proc/icon.sh 
22● unzip  ~/work/library/hlp/autostart.zip  -d  ~/.config
23● Transparance image ⮕   sudo apt-get install -y pqiv
24● Cairo-clock: 👉 sudo gdebi -n ~/IDISK/LINUX/32-64/64/cairo-clock_0.3.4-2_amd64.deb ⮕ radium
    then :  sudo chown -R $USER:$USER  /usr/share/cairo-clock/themes/radium
            sudo chmod ugo+rwx   /usr/share/cairo-clock/themes/radium/clock-face.svg
    sudo rm /usr/share/cairo-clock/themes/radium/clock-face.svg
    sudo cp ~/work/library/hlp/clock-face.svg /usr/share/cairo-clock/themes/radium/clock-face.svg
25● Beyond Compare : sudo gdebi -n ~/IDISK/LINUX/32-64/64/bcompare-4.3.7.25118_amd64.deb
    run 👉 bcompare &
    👉 cp ~/work/library/hlp/bcompare/* ~/.config/bcompare/
    1️⃣ BCState.xml
       52 <RightMRUSpecs>
            <_0 Value="/home/kosy/.config/bcompare"/>
            <_1 Value="smb://192.168.0.207/inter-c/work"/>
            <_2 Value="ftp://android@192.168.0.204:2221//work"/>
            <_3 Value="ftp://android@192.168.0.204:2221/WORK"/>
            <_4 Value="ftp://android@192.168.0.205:2221//work"/>
            <_5 Value="smb://192.168.0.8/idisk/LINUX/32-64"/>
            <_6 Value="smb://192.168.0.8/work"/>
            <_7 Value="smb://192.168.0.207/work"/>
            <_8 Value="smb://192.168.0.202/d/PHOTO-02"/>
       62 </RightMRUSpecs>
  1️2️⃣ BCSessions.xml
26● Video editor 👉 sudo apt install ffmpeg
27● Phone control 👉 sudo  apt-get install scrcpy  &&  sudo apt-get install -y adb
    Phonebook.sh 👉 Include cabel lenovo ⮕  ~/work/proc/phonebook.sh 
28● Tesseract-ocr-bul 👉 sudo apt-get install -y tesseract-ocr-bul tesseract-ocr-deu
    👉   tesseract --list-langs 
29●  Install  VPN  openvpn
  1 openvpn open vpn 
   -  OpenVPN  ⮕ https://www.youtube.com/watch?v=rLr6JUxP8JU&ab_channel=mark
      sudo apt-get install -y openvpn
      Download from   https://www.vpnbook.com/ ⮕ in section OpnVPN ⮕ 
      Down see  Username:/Password: vpnbook /                          
      start openvpn ⮕ cd ~/work/vpn/vpnbook/linux  
      see after first dash  vpnbook-pl140-udp53.ovpn -> XXXXX=pl140
      sudo openvpn --config vpnbook-XXXXX-udp53.ovpn ⮕ sudo openvpn --config vpnbook-pl140-udp53.ovpn
      https://www.vpnbook.com/ ⮕ in section OpnVPN ⮕ 
      Down see  Username:/Password: vpnbook /  mdr7ahx
      If open cprrectly finish with ⮕ Initialization Sequence Completed
      exit ⮕ Ctrl+c 
      disconnect  OpenVPN _>  sudo killall openvpn
 2. Windscribe
      create account -> https://windscribe.com/signup
sudo apt-get update && sudo apt-get install -y windscribe-cli
windscribe login 
amalie1000  /  aa11bb22cc33 / al.moller1000@tutanota.com
aa11bb22cc33
CODE b12ef70a02febc4170a3db7bbbfd7f9bfd9698615efec8414af2deeeb53a1cdd
simirchev   /  aa11bb22     / si.mirchev@gmail.com 
curl -L https://hide.me/download/linux-amd64 | tar -xJ && sudo ./install.sh
❌❌❌ NOT THIS NOT THIS  Windscribe ⮕ sudo gdebi -n ~/IDISK/LINUX/32-64/64/windscribe_2.3.15_beta_amd64.deb
30● Video Player

Play everytime from begin  
 
 1. unzip  ~/IDISK/LINUX/32-64/64/smplayer.zip -d  /opt
 2. sudo cp /opt/smplayer/smplayer /bin
 3. sudo cp /opt/smplayer/alacarte-made-2.desktop ~/.local/share/applications 
 4. unzip  ~/work/library/hlp/smplayer.zip -d  ~/.config/smplayer
 5. Run on terminal 👉  smplayer &
 6. Options/Preferences/General➡️  ⬜ Remember settings for all files (audio track, subtitles.
 7. Options/Preferences/General/Audio➡️    
 ✅ Enable the audio equalizer  ✅ Global audio equalizer  ✅ ‘AC3/DTS passthrough over S/PDIF and HDMI 
 . Read all folder ⮕
 Options/Pereferences/Playlist➡️Add files in directories recursively➡️seven checkbox
 9. Options/Preferences/Keyboard and Mouse/Mouse➡️Wheel function➡️No function
10. Eqalizer ❗ Work when play! ⮕ Full treble 
11. Language interface ⮕ Otions⮕ Preferences ⮕ Interface ⮕ Language  
12. Zoom ⮕ initial_zoom_factor=1 or 2 ⮕ 
~/work/library/sublime/sublime-text.sh /home/kosy/.config/smplayer/smplayer.ini 
 / or sudo gdebi -n ~/IDISK/LINUX/32-64/64/smplayer_19.10.2~ds0-1build1_amd64.deb /

●31 Equalizer
  1. After 45●  1️⃣ Install Python3 packages 
    sudo apt-get install -y pulseeffects
Equalizer 
  23 - 71   90   113   144 - 7.1  9.0   11.3   14.3   17.9
    -25    -12    -6      0.0     5.0   10.0   15.0    30
  
2. Record System Sound ⮕  
  1️⃣  👉  sudo gdebi -n ~/IDISK/LINUX/32-64/64/pavucontrol_5.0-2_amd64.deb
      arecord -vv -f cd ~/Music/records/011.mp3 
  2️⃣ 👉    sudo gdebi -n ~/IDISK/LINUX/32-64/64/lame_3.100-3build2_amd64.deb
      parec -d 0 | lame -r -V0 - ~/work/linux/record.mp3

32● Insert Cyrilic keyboard 
 ⮕ Settings keyboard ⮕ Layouts ⮕ +
Bulgarian (Traditional phonetic) ⮕ Options..⮕
Switching to another Layout ⮕ Right Alt  autostar
33●   HotKey
THIS - import : from file hotkey.conf to => keyboard 
    sed -i s/kosy/$USER/g ~/work/library/bookmarks/hotkey.conf  
    dconf load /org/cinnamon/desktop/keybindings/ < ~/work/library/bookmarks/hotkey.conf
 - export : => save to file hotkey.conf from keyboard 
    dconf dump /org/cinnamon/desktop/keybindings/ > ~/work/library/bookmarks/hotkey.conf

34● Install : Translator
I. Installa Translate:
1. kosy, inter: 👉  sudo gdebi -n ~/IDISK/LINUX/32-64/64/translate-shell_0.9.6.12-1_all.deb 
2. Installa 👉 eng-bul ⮕ I AM NOT SURE: dict-freedict-eng-bul_2020.12.28-1.1_all.deb ❓❓❓
3. Check Languages Translate-shell ⮕  trans -R
4. Websit to bg ⮕  
5. Identify the language 👉  trans -id Hola
6. Downloads — FreeDict ⮕ https://freedict.org/downloads/#gnu/linux  ❓❓❓
II. Text to speech: ❓❓❓ 
   
   ❌ Not install Espeak   
   New anguages to mbrola-de6 and mbrola-de7 /1-9/ Espeak 
   sudo apt-get install -y espeak mbrola-de6 mbrola-de7 mbrola-us1 mbrola-us2
   All languages 
   https://github.com/espeak-ng/espeak-ng/blob/master/docs/mbrola.md ❌ 
35● Install Megasync 👉 sudo gdebi -n ~/IDISK/LINUX/32-64/64/megasync-xUbuntu_22.04_amd64.deb
/media/kosy/e4580f79-cec6-42f7-9528-a9dd8ab7c004
   Create 👉  mkdir /media/$USER/e4580f79-cec6-42f7-9528-a9dd8ab7c004/Sync & 
   mkdir /media/$USER/e4580f79-cec6-42f7-9528-a9dd8ab7c004/Sync/ARHI & 
   mkdir /media/kosy/e4580f79-cec6-42f7-9528-a9dd8ab7c004/Sync/ARHI & 
   mkdir /media/kosy/e4580f79-cec6-42f7-9528-a9dd8ab7c004/Sync/DISC & 
   mkdir /media/kosy/e4580f79-cec6-42f7-9528-a9dd8ab7c004/Sync/DOC & 
   mkdir /media/kosy/e4580f79-cec6-42f7-9528-a9dd8ab7c004/Sync/GOD & 
   mkdir /media/kosy/e4580f79-cec6-42f7-9528-a9dd8ab7c004/Sync/HLP & 
   mkdir /media/kosy/e4580f79-cec6-42f7-9528-a9dd8ab7c004/Sync/PROC & 
   mkdir /media/kosy/e4580f79-cec6-42f7-9528-a9dd8ab7c004/Sync/work & 

   In terminal past ⮕  👉 megasync & ⮕ Log in ⮕ Select sync
   si_mirchev@abv.bg / di0  / https://mega.nz/login
   See ⮕  ~/IDISK/LINUX/32-64/64/megasync1.zip ⮕ new instalation save settings 
36● Brave ⮕  /opt/brave/brave --disable-features=OutdatedBuildDetect 
     or 
     /opt/brave/brave --disable-component-update --simulate-outdated-no-au='Tue, 31 Dec 2099 23:59:59 GMT' %U --password-store=basic
     or
     --simulate-outdated-no-au

    1. New tab 
       Settings -> General -> Open a specific page or set of pages ->
       -> http://www.google.co.uk/
    2. Change color 
       Settings -> General -> Profile name and icon
    3. pro grey -> https://chromewebstore.google.com/detail/pro-grey/enhpebdanojkmhbbneclbkmpleemilaj
       Aura theme -> https://chromewebstore.google.com/detail/aura-theme/ddipnaombfnagpagnpdkdinoekfhfjoh
    4. Google Dark them on / off -> dowun Setting
    5. Clear history -> Clear browsing data -> Time range -> All time
  Google Chrome  http://www.google.co.uk/
  unzip ~/IDISK/LINUX/32-64/64/chrome.zip -d /opt
  unzip ~/IDISK/LINUX/32-64/64/chromium.zip -d /opt
  sudo cp ~/work/library/bookmarks/Chrome.desktop ~/.local/share/applications 
  sudo cp ~/work/library/bookmarks/Chromium.desktop ~/.local/share/applications 
  / or  google-chrome-stable_current_amd64.deb  /
  https://www.seirsanduk.net/?id=hd-bnt-1-hd&pass=
  https://www.seirsanduk.net/?id=hd-btv-hd&pass=
  1️⃣ Bookmarks in Internet Browser
     1. Open Menu ⮕ Library ⮕ Bookmarks ⮕  Show all bookmarks 
     ⮕  Import and Backup ⮕   Import Bookmarks from HTML
     In Bookmarks Menu create Bookmarks bar ⮕  slide Up
     /IDISK/ANDROID/03-BROWSER/Firefox/Bookmarks.html
     2.Open Menu ⮕  ADD-ons ⮕ in Find more ADD-ons paste ⮕ Video DownloadHelper
     3. Android ⮕  Copy/Paste in browser Firfox 
     4. Stop ask translate site ⮕ Search ⮕ 
        When on, Google Translate will offer to translate sites into your preferred language.⮕OFF
     5.Google Translate off ⮕ Settings ⮕ Languages ⮕ Offer to translate pages that aren't in a language you read off
     /IDISK/ANDROID/03-BROWSER/Firefox/Bookmarks.html
 2️⃣ Google Extensions ❗
     ~/work/library/bookmarks/browser/extensions.html
     https://chrome.google.com/webstore/category/extensions?hl=en-US
brave-browser --disable-features=OutdatedBuildDetect


37● Install Xscreensaver : 
👉 or sudo apt-get install -y xscreensaver xscreensaver-data-extra xscreensaver-gl 
run 👉   xscreensaver-demo &
Mode ⮕ Only one screen server  WhirlWindWarp or Galaxy Blank After ⮕ 3 min  Cycle After ⮕ 0 min
38●  Install : Scanner  ❗❗❗ ONLY 32 BIT PC  ❗❗❗
 I. First trial simple-scan ⮕ 
  1. sudo gdebi -n ~/IDISK/LINUX/32-64/64/libusb-0.1-4_2%3a0.1.12-32build3_amd64.deb
  2. sudo mkdir /usr/share/sane  ;  sudo mkdir /usr/share/sane/snapscan 
  3. sudo cp ~/work/library/hlp/20F8V119.bin /usr/share/sane/snapscan/
  4. ~/work/library/sublime/sublime-text.sh  /etc/sane.d/snapscan.conf 
     In row 5 change 'your-firmwarefile.bin' with 20F8V119.bin  then save. 
  5. Reboot ⮕ run ⮕ Document Scanner 
 II. Help: 
  1. Check install 👉  scanimage -L
     if ok show ⮕ device snapscan:libusb:001:006' is a Acer FlatbedScanner22 flatbed scanner
  2. Run ⮕ sudo simple-scan -d
  3. Start/Stop Document Scanner when show Green start.
  4. Click only ❗one❗ over Green Scan after stop blink
         green lamp on scener /20-30 sec/.
     /  or ⮕ sudo apt-get install -y libusb-0.1-4 /
39● Install : Master pdf editor
👉   sudo gdebi -n ~/IDISK/LINUX/32-64/64/master-pdf-editor-4.3.89_qt5.amd64.deb
/opt/master-pdf-editor-4/masterpdfeditor4 &
Tools ⮕ Settings ⮕ Appearance ⮕ Appearance style ⮕ plastique
Open in new Window ⮕ Tools ⮕ Settings ⮕ System ⮕ uncheck all
Install  export page from pdf file and print 
👉   sudo gdebi -n ~/IDISK/LINUX/32-64/64/unoconv_0.7-2ubuntu1_all.deb
Zoom ⮕ Ctrl+ / Ctrl-
40● Install Pinta: 
   - sudo gdebi -n ~/IDISK/LINUX/32-64/64/pinta_1.6-2.1_all.deb  
   - sudo gdebi -n ~/work/kolourpaint_4%3a21.12.3-0ubuntu1_amd64.deb
   / or  Pinta ⮕ Menu ⮕ Software Manager ⮕ Pinta Simple /
41● Install : Zsh 
 1. 👉 sudo apt-get update   ;  sudo apt install wget curl git -y 
 2. 👉 sudo gdebi -n ~/IDISK/LINUX/32-64/64/zsh_5.8.1-1_amd64.deb &
 3.  sudo gdebi -n ~/IDISK/LINUX/32-64/64/zsh-common_5.8.1-1_all.deb
 4. 👉  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
 5. 👉 cp /home/$USER/work/library/hlp/zshrc  ~/.zshrc
 6. 👉  sudo chown -R $USER:$USER ~/.zshrc 
 7. in file ⮕ sudo  ~/work/library/sublime/sublime-text.sh  ~/.zshrc 
    ⮕ in row 75 remark ⮕ #   source $ZSH/oh-my-zsh.sh  
 8. Efect after restart comp 
42● Install : Lm-sensors Screen position
   1. Sensors         👉 sudo gdebi -n ~/IDISK/LINUX/32-64/64/lm-sensors_1%3a3.6.0-7ubuntu1_amd64.deb
   2. Screen position 👉 sudo gdebi -n ~/IDISK/LINUX/32-64/64/wmctrl_1.07-7build1_amd64.deb
43● LibreOffice 👉 sudo gdebi -n ~/IDISK/LINUX/32-64/64/hunspell-bg_1%3a7.2.0-2_all.deb
  run 👉 libreoffice --writer &
Tools ⮕ Automatic Speel Checking ⮕ check F7
Tools ⮕ AutoCorroect ⮕ While Typing  ⮕  ⬜ While Typing 
44● Nemo Bookmarks  gtk.css,  themes
       👉  sudo -S cp ~/work/library/bookmarks/bookmarks ~/.config/gtk-3.0 &
           sudo -S cp ~/work/library/bookmarks/gtk.css ~/.config/gtk-3.0 &
           cp -r ~/work/library/themes/beyond ~/.themes &
           cp -r ~/work/library/themes/cloud ~/.themes &
           cp -r ~/work/library/themes/example ~/.themes &
           cp -r ~/work/library/themes/examples ~/.themes &
           cp -r ~/work/library/themes/phonebook ~/.themes &
           cp -r ~/work/library/themes/recepty ~/.themes &
           cp -r ~/work/library/themes/timers ~/.themes &
           cp -r ~/work/library/themes/unlock ~/.themes &
45●  1️⃣ Install Python3 packages               
    1. sudo apt-get update
       sudo chmod ugo+rwx ~/IDISK/LINUX/32-64/64/Python3_pip &
       sudo chmod ugo+rwx ~/IDISK/LINUX/32-64/64/Python3_tk &
       sudo chmod ugo+rwx ~/IDISK/LINUX/32-64/64/Cheese &
       sudo chmod ugo+rwx ~/IDISK/LINUX/32-64/64/Cheese/install.sh
    2. Tkinter  sudo apt-get install -y python3-tk
    3. Pip      sudo apt-get install -y python3-pip 
    4. Scrapy   sudo pip3 install scrapy
                pip3 install --upgrade requests
    5. Pack 2-4
        👉  sh ~/IDISK/LINUX/32-64/64/Python3_tk/install.sh &
         sh ~/IDISK/LINUX/32-64/64/Python3_pip/install.sh &
         sudo pip3 install scrapy & pip3 install --upgrade requests

     pip3 --version ; pip3 search scrapy ; pip3 --help ;  pip3 list   
    6. Selenium with pip
        - 👉  sudo python3 -m pip install -U selenium  
        - ⚠️ NOT  without pip ⮕ sudo apt update & sudo apt install python3-selenium ⚠️ 
    2️⃣ ⚠️ UNinstall IF NEED Python3 packages ⚠️
      1. uninstall ⮕ sudo apt-get --purge autoremove python3-pip  
      2. sudo pip uninstall python3-pip
      3. sudo python3 -m pip uninstall pip setuptools
      4. sudo pip3 uninstall scrapy
      5. sudo pip uninstall selenium
                    pip3 search scrapy  ;  pip3 --help ;  pip3 list
     3️⃣ Tutorial 
          https://tecadmin.net/setup-selenium-with-python-on-ubuntu-debian/
          python selenium tutorial ubuntu
          https://www.geeksforgeeks.org/selenium-python-tutorial/

46●  Web cam 
     1️⃣ Options 👉 sh ~/IDISK/LINUX/32-64/64/Cheese/install.sh
                / or  sudo apt-get install -y cheese /
     2️⃣ Options  ⮕ sudo gdebi -n ~/IDISK/LINUX/32-64/64/qrencode_4.0.2-1_amd64.deb
47●  ⚠️ IF NEED Audacity sudo apt-get update    sudo apt-get install -y audacity  NOT INSTALL GO TO ONLINE⚠️
48●  Include ⮕ LC_TIME=en_GB.UTF-8  and Change comma with dot ⮕  LC_NUMERIC="en_US.UTF-8"
   1. 👉 sudo  cp -r ~/work/library/hlp/locale  /etc/default/locale
   2. 👉 ~/work/library/sublime/sublime-text.sh /etc/default/locale
   3. Efect after restart comp 
49●  Google drive in nemo ⮕ Menu ⮕ System ⮕ Online account 
     - si.mirchev@gmail.com  ; si.mirchev04@gmail.com  si_mirchev@yahoo.com aa11bb22cc33 
       cp  ~/work/library/hlp/accounts.conf  ~/.config/goa-1.0/
     ❗❗❗ WHEN ASK PASSWORD/CONFIRM NEVER PASTE PASS. ONLY CONFIRM. ❗❗❗
50●   Display resolutions 👉  sudo gdebi -n ~/IDISK/LINUX/32-64/64/xcvt_0.1.1-3_amd64.deb
       ❗ NOT INSTALLL FROM DOWN COMMANDS - STARTED IN ⮕ startup.sh ❗
      cvt 1360 1013 
      xrandr --newmode 1360x1013 113.75 1360 1448 1584 1808 1013 1016 1026 1051 -hsync +vsync
      xrandr --addmode DP-3  1360x1013
      xrandr -s 1360x1013
      xrandr --listactivemonitors 
      xrandr --delmode DP-3 1360x1013
 51●  Logo Linux start ⮕ 
      See 👉  ~/work/hand/HAND04/boot_logo/
          👉  ~/work/hand/HAND04/boot_logo/a_boot_logo.sh
   ❗❗❗ 🍀 Mount logo 
 echo "1" | sudo -S -k sudo update-initramfs -u
 52● DEB ARHUV ⮕ /var/cache/apt/archives/ 
 53● Music 
    1️⃣ 8Minute.avi 👉  cp /media/kosy/7B32AFBE06A25392/HAND/HAND01/8Min/8Minute.avi ~/Music
    https://app.box.com/s/oey5hkxhgqkmks0dycct3xovcqol58ok
    https://sharedby.blomp.com/S76v95
    https://u.pcloud.link/publink/show?code=XZgakk0ZTxdpvD3zcXH1zJUjhG98gSU2Ekm7
    2️⃣            👉 cp ~/work/library/music/* ~/Music
 " & ;;
    2) $subl0 ~/work/proc/linux_inst.txt  ; sleep 2 &  ;;
    3) libreoffice --writer  ~/work/proc/linux_inst.docx ;;   
    4) ~/work/proc/checkinstall.sh & ;;   
         esac
                   }   
     while true
        do          
            show_menus ; read_options 
          #  sleep 2 ; exit
        done
