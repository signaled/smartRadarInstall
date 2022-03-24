#!/bin/dash

RPI=`uname -a | grep raspberrypi | wc -l`

if [ "0x" = "${RPI}x" ];then
    echo "\nRun on RaspberryPI\nRun on RaspberryPI CM4\n"
    exit 0 
fi

sudo apt install cmake
echo "\nInstall Wiring Pi Library\n"
. ./wiringpi.sh
echo "\nMake default running Env\n"
. ./setupupdate.sh
echo "\nEnable UART\n"
. ./enableuart.sh



