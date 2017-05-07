Changes by Michael Langeder, Austria
on Oct. 3rd 2016
under Apache 2.0, January 2004


http://langeder.org
info@langeder.org

### config.cfg
contains variable definitions,
edit them to fit your setup

### InstallArduino.sh
downloads, installs and modifies the Arduino IDE,
so that it can be used to program the Protoneer Mega Pi Hat directly over GPIO
also calls Setup_RPI3_Serial.sh if RPI_VERSION=3


###########################################################

Initial scripts by Protoneer from his github repository

http://info.protoneer.co.nz/
http://blog.protoneer.co.nz/
http://protoneer.co.nz/
https://github.com/Protoneer/RaspberryPi-Arduino-avrdude-rpi

# RaspberryPi + Arduino + avrdude-rpi

### InstallArduino.sh
Installed Arduino 1.6.10 with avrdude-rpi in place. (For programming Atmega328 / Atmega2560's connected to the RPI's GPIO with reset Pin on Pin11)

### Setup_RPI3_Serial.sh
Sets up the the serial pins to point to /dev/ttyAMA0 like on older RPi's. (Only needed for Raspberry Pi 3's) 

###########################################################
### To Install: ###
cd ~
git clone https://github.com/Protoneer/RaspberryPi-Arduino-avrdude-rpi.git
cd RaspberryPi-Arduino-avrdude-rpi
./InstallArduino.sh

