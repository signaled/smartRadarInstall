#!/bin/dash
APP=app
RUNDIR=/home/pi
UPDATEDIR=/home/pi/update
BACKUPDIR=/home/pi/backup
RET="255x"

update()
{
    rm -rf ${BACKUPDIR}
    mkdir -p ${BACKUPDIR}
    mv ${RUNDIR}/${APP} ${BACKUPDIR}
    mv ${UPDATEDIR}/${APP} ${RUNDIR}
    chmod a+x ${RUNDIR}/${APP}
}

runApp()
{
    while [ "$RET" = "255x" ]
    do
        ${RUNDIR}/${APP} > /dev/null 2>&1
        RET="$?x"
        echo $RET
        if [ "$RET" = "0x" ];then
            echo "Exit w/ Normally\n"
        else
            RET="255x"
            echo "Exception Occured\n"
        fi
    done
    echo "fin"
    
}

[ -f ${UPDATEDIR}/${APP} ] && update

runApp
