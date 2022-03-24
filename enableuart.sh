#!/bin/dash

#CONFIGFILE="/boot/config.txt"
CONFIGFILE="/workspace/src/smartRadarInstall/config.txt"
RPI=`uname -a | grep raspberrypi | wc -l`

if [ "0x" = "${RPI}x" ];then
    echo "\nRun on RaspberryPI\nRun on RaspberryPI\n"
#    exit 0 
fi

EXIST=`cat ${CONFIGFILE} | grep "dtoverlay=uart0" | wc -l`
if [ "0x" = "${EXIST}x" ];then
    #sudo sed -i 's/\[all\]/\[all\]\nenable_uart=1\ndtoverlay=uart0\ndtoverlay=uart3\ndtoverlay=uart4\ndtoverlay=uart5\n/' ${CONFIGFILE}
    echo "\nenable_uart=1\ndtoverlay=uart0\ndtoverlay=uart3\ndtoverlay=uart4\ndtoverlay=uart5\n" >> ${CONFIGFILE}
else
    echo "Already Setted\n"
fi
