#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar example >>/tmp/polybar1.log 2>&1 & disown
# polybar example >>/tmp/polybar2.log 2>&1 & disown

MONITOR=DVI-D-0 polybar --reload example &
HDMIMONITOR=HDMI-0 polybar --reload short &
VGAMONITOR=VGA-0 polybar --reload sweet &
#  HORTMONITOR=VGA-0 polybar --reload short &
#for m in $(polybar --list-monitors | cut -d":" -f1); do
#done

echo "Bars launched..."
