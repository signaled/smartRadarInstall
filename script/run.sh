#!/bin/dash
APP=app
RUNDIR=/home/pi
UPDATEDIR=/home/pi/update
BACKUPDIR=/home/pi/backup
update()
{
	rm -rf ${BACKUPDIR}
	mkdir -p ${BACKUPDIR}
	mv ${RUNDIR}/${APP} ${BACKUPDIR}
	mv ${UPDATEDIR}/${APP} ${RUNDIR}
	chmod a+x ${RUNDIR}/${APP}
}

[ -f ${UPDATEDIR}/${APP} ] && update
${RUNDIR}/${APP} > /dev/null 2>&1
