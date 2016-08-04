#!/bin/bash

sudo apt-get install -y python-dev python-rpi.gpio

# install Aruino
cd  ~
wget https://downloads.arduino.cc/arduino-1.6.10-linuxarm.tar.xz
tar xf arduino-1.6.10-linuxarm.tar.xz
rm arduino-1.6.10-linuxarm.tar.xz


# Install avrdude-rpi
cd arduino-1.6.10/hardware/tools/avr/bin
sudo mv avrdude avrdude-original

wget https://raw.githubusercontent.com/Protoneer/avrdude-rpi/master/autoreset
wget https://raw.githubusercontent.com/Protoneer/avrdude-rpi/master/avrdude-autoreset

sudo ln -s avrdude-autoreset avrdude


sudo chmod +X avrdude
sudo chmod +X autoreset328
sudo chmod +X autoreset2560
