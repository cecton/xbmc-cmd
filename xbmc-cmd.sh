#!/bin/bash

parent_name=`ps -p $PPID -o comm=`
[ -n "`which rlwrap`" ] && [ "$parent_name" != rlwrap ] && exec rlwrap $0

options=
[ -n "$XBMC_HOST" ] && options="$options --host=$XBMC_HOST"
[ -n "$XBMC_PORT" ] && options="$options --port=$XBMC_PORT"

cmd=
while :
do
    echo -n "xbmc-send> "
    read cmd
    case "$cmd" in
        q|quit|exit)
            break
            ;;
        *)
            [ -z "$cmd" ] && break
            xbmc-send $options --action="$cmd"
            ;;
    esac
done
echo Termination
