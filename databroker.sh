#!/bin/sh

case "$1" in
 
     start)
		 cd /opt/
         balena-compose -f /opt/plcnext/databroker/docker-compose.yml up -d
        ;;
 
     stop)
        echo "Stopping $DESCRIPTION" "$NAME"
		cd /opt/
        balena-compose -f /opt/plcnext/databroker/docker-compose.yml down
        ;;
     restart)
        echo "Restarting $DESCRIPTION" "$NAME"
        dm_stop
        dm_start
        echo "$NAME" " daemon started"
        ;;
     *)
 
     echo "Usage: /etc/init.d/$NAME {start|stop|restart}" >&2
 esac