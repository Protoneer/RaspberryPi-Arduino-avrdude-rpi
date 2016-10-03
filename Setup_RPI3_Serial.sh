#!/bin/bash
# chmod +x filename

# 'Setup_RPI3_Serial.sh'
#Changes by Michael Langeder, Austria
#on Oct. 3rd 2016
#under Apache 2.0, January 2004
#
#
#http://langeder.org
#info@langeder.org
#
#
################################################################################
#
#Initial scripts by Protoneer from his github repository
#
#http://info.protoneer.co.nz/
#http://blog.protoneer.co.nz/
#http://protoneer.co.nz/
#https://github.com/Protoneer/RaspberryPi-Arduino-avrdude-rpi
#
################################################################################


sudo sh -c "echo 'dtoverlay=pi3-miniuart-bt' >> /boot/config.txt"
sudo sh -c "echo 'enable_uart=1' >> /boot/config.txt"
sudo systemctl disable hciuart

sudo sed -i 's/ console=serial0,115200//g' /boot/cmdline.txt

# New os uses Serial0
# good read - http://spellfoundry.com/2016/05/29/configuring-gpio-serial-port-raspbian-jessie-including-pi-3/

# RPI 3 only
sudo systemctl stop serial-getty@ttyS0.service
sudo systemctl disable serial-getty@ttyS0.service

# rebooting might not be necessary
# sudo shutdown -r now


