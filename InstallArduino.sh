#!/bin/bash
#
# STOP here!
# first edit 'config.cfg' to fit your setup
# then run this script (InstallArduino.sh)

# 'InstallArduino.sh' 
#Changes by Michael Langeder, Austria
#on Oct. 3rd 2016
#under Apache 2.0, January 2004
#
#
#http://langeder.org
#info@langeder.org
#
#
###########################################################
#
#Initial scripts by Protoneer from his github repository
#
#http://info.protoneer.co.nz/
#http://blog.protoneer.co.nz/
#http://protoneer.co.nz/
#https://github.com/Protoneer/RaspberryPi-Arduino-avrdude-rpi


# load config file
source config.cfg

# install python tools and library for the Raspberry Pis GPIO pins
sudo apt-get install -y python-dev python-rpi.gpio

# download and install Arduino IDE
wget https://downloads.arduino.cc/arduino-$VERSION-linuxarm.tar.xz -P $LOCATION
tar xfv $LOCATION/arduino-$VERSION-linuxarm.tar.xz -C $LOCATION
rm $LOCATION/arduino-$VERSION-linuxarm.tar.xz


# Install avrdude-rpi
cp autoreset2560 $LOCATION/arduino-$VERSION/hardware/tools/avr/bin/
cp autoreset328 $LOCATION/arduino-$VERSION/hardware/tools/avr/bin/
cp avrdude-autoreset $LOCATION/arduino-$VERSION/hardware/tools/avr/bin/
cp config.cfg $LOCATION/arduino-$VERSION/hardware/tools/avr/bin/

#rename avrdude to avrdude-original and replace it with avrdude-autoreset
sudo mv $LOCATION/arduino-$VERSION/hardware/tools/avr/bin/avrdude $LOCATION/arduino-$VERSION/hardware/tools/avr/bin/avrdude-original
sudo ln -s $LOCATION/arduino-$VERSION/hardware/tools/avr/bin/avrdude-autoreset $LOCATION/arduino-$VERSION/hardware/tools/avr/bin/avrdude

sudo chmod +x $LOCATION/arduino-$VERSION/hardware/tools/avr/bin/avrdude
sudo chmod +x $LOCATION/arduino-$VERSION/hardware/tools/avr/bin/autoreset328
sudo chmod +x $LOCATION/arduino-$VERSION/hardware/tools/avr/bin/autoreset2560


if [ $RPI_VERSION = "3" ]; then
	echo "Version of Raspberry is 3"
	echo "calling 'Setup_RPI3_Serial.sh'..."
	sudo chmod +x Setup_RPI3_Serial.sh
  	./Setup_RPI3_Serial.sh
fi

echo "avrdude-rpi installation is done. Exit by pressing any key"
read -n 1 -s

