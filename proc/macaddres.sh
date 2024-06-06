
 # LINUX MAC https://www.fosslinux.com/109239/how-to-change-your-mac-address-on-linux.htm
 ● ORIGINAL MAC 84:a9:3e:16:d6:82
 echo  "My IP -> "  $(hostname -I | awk '{print $1}') 
 echo  "MAC   -> "  $( ifconfig | grep ether | awk '{print $2}')
echo "network interfaces -> "  nmcli connection show --active | awk '{print $5}'
z1=$(nmcli connection show --active | awk '{print $5}') 
z0=$(nmcli connection show --active | awk '{print $5}' | sed "s/ //g")
 echo  $(nmcli connection show --active | awk '{print $5}') 
echo B $z0 A
echo B $z1 A
  sleep 15 ; exit

sudo ip link set eno1 down 

echo "1" | sudo -S -k sudo ip link set eno1 down ; sleep 3
echo "1" | sudo -S -k sudo ip link set eno1 address D8:C0:A6:06:CF:B3
echo "1" | sudo -S -k sudo ip link set eno1 up ; sleep 3


sudo ip link set eno1 address D8:C0:A6:06:CF:B3

sudo ip link set eno1 up  ; sleep 3


 # ssudo ifconfig eth1 down
 # ssudo ifconfig eth1 hw ether D8:C0:A6:06:CF:B3
 # ssudo ifconfig eth1 up
 # s
  sudo ip link set eno1 down
  sudo ip link set eno1 address D8:C0:A6:06:CF:B3
  sudo ip link set eno1 up


 echo  "My IP -> "  $(hostname -I | awk '{print $1}') 
 echo  "MAC   -> "  $( ifconfig | grep ether | awk '{print $2}')
 ip link show eno1
  sleep 15
   

exit 

 stop / start network
 sudo ip link set eno1 down
 sudo ip link set eno1 up  


change IP
# sudo ip link set eno1 address XX:XX:XX:XX:XX:XX


 sudo ifconfig enp1s4 192.168.0.188netmask 255.255.255.0

 sudo service network-manager stop
 sleep 5
 ifconfig wlp2s0b1 down
 sleep 5
 sudo macchanger -r wlp2s0b1
 sleep 5
 
 # chef
 sudo macchanger -m 00:10:60:64:8A:39 enp1s4
 change IP
 sudo ifconfig enp1s4 192.168.0.201 netmask 255.255.255.0
sleep 5




 sudo service network-manager start 
 sleep 5
 sudo ifconfig wlp2s0b1 up
 sleep 5