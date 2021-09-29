#!/bin/sh
  NAME="DXC"
  echo "name = $NAME"
  DESCRIPTION="App "
  # Path to Daemon binary
  DAEMON="/opt/plcnext/databroker-app-master/databroker.sh"
  DAEMON_ARGS="@@@ARGS@@@"
 
  # Starting Daemon <NAME> <DAEMON_ARGS>

  dm_start()
  {
     $DAEMON start
  }
 
  # Stopping Daemon <NAME> <DAEMON_ARGS>
  dm_stop()
  {
     $DAEMON stop
  }
  # Sending a SIGHUP signal to Daemon <NAME> <DAEMON_ARGS>
  dm_reload() {
     touch /opt/plcnext/restart.succes
  }
  
  echo "Starting $DESCRIPTION " "$NAME"
 	dm_start
 	echo "$NAME" " daemon started"
  
	echo "Usage: /etc/init.d/$NAME {start|stop|restart}" >&2
