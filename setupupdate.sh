#!/bin/dash

RPI=`uname -a | grep raspberrypi | wc -l`

if [ "0x" = "${RPI}x" ];then
    echo "\nRun on RaspberryPI\nRun on RaspberryPI\n"
    exit 0 
fi
cp ./script/run.sh /home/pi
chmod a+x /home/pi/run.sh
mkdir /home/pi/update
mkdir /home/pi/backup

EXIST=`cat /etc/rc.local | grep "/home/pi/run.sh" | wc -l`
if [ "0x" = "${EXIST}x" ];then
    sudo sed -i 's/fi/fi\n\/home\/pi\/run\.sh\&/' /etc/rc.local
fi
