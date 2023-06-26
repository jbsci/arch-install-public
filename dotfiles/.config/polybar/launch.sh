#!/usr/bin/env bash

# Terminate already running instances

killall -q polybar

# Wait until the processes have been shutdown

#while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

#polybar bar1 &

if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do 
        MONITOR=$m polybar --reload bar1 &
#        MONITOR=$m polybar --reload bar2 &
    done
else
    polybar --reload bar1 &
#    polybar --reload bar2 &
fi


echo "Bars launched..."
