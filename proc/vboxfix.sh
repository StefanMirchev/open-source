#!/bin/bash


  case $USER in  kosy) pass0=1 ;; inter) pass0=3 ;; chef) pass0=2 ;; esac



echo $pass0 | sudo -S /sbin/VBoxService
echo $pass0 | sudo -S /opt/VBoxGuestAdditions-7.0.8/sbin/VBoxService
echo $pass0 | sudo -S /bin/VBoxControl
echo $pass0 | sudo -S /opt/VBoxGuestAdditions-7.0.8/bin/VBoxControl

sleep 10