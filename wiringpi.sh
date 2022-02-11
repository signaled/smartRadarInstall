#!/bin/dash

RPI=`uname -a | grep raspberrypi | wc -l`

if [ "0x" = "${RPI}x" ];then
    echo "\nRun on RaspberryPI\nRun on RaspberryPI\n"
    exit 0 
fi


sudo apt install cmake
git clone https://github.com/WiringPi/WiringPi
cd WiringPi
sudo ./build
cd ..
rm -rf WiringPi
