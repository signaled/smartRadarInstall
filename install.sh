#!/bin/dash

RPI=`uname -a | grep raspberrypi | wc -l`

if [ "0x" = "${RPI}x" ];then
    echo "\nRun on RaspberryPI\nRun on RaspberryPI\n"
    exit 0 
fi

sudo apt install cmake
source ./wiringpi.sh
source ./setupupdate.sh




