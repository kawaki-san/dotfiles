#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
polybar background &
polybar left &
echo "---" | tee -a /tmp/polybar1.log
polybar shortcuts >>/tmp/polybar1.log 2>&1 &
polybar media &
polybar mediacontrols &
polybar datetime &
polybar netstuff &
polybar volume &
polybar battnet &
polybar netspeed &

echo "Polybar launched..."
