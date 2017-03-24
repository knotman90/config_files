#simple autostart file for i3-wm, you can execute it from i3 config with
# exec $HOME/bin/auto-start-for-i3-simple
#
# xdotool and xmessage must be installed. On BSD use jot instead of
# seq or install seq from ports.


# Max seconds to wait until the process is up
MAXWAIT=30

# Start the given command and wait until it's visible
StartProg()
{
    "$@" &                  # Handle arguments with whitspaces
    mypid=$!                # Pid of last background process
    for i in `seq $MAXWAIT` # count from 1 to MAXWAIT
    do
    	if xdotool search --onlyvisible --pid $mypid; then
    	    return 0
    	fi
	sleep 1
    done
    xmessage "Error on executing: $@" &
}

# Start some programs
#
# ______________________
# |          |          |
# |  emacs   |  chrome  |
# |          |          |
# |          |          |
# |          |----------|
# |          |  xterm   |
# |__________|__________|



exit 0
