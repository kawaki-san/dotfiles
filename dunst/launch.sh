#!/bin/bash

# Terminate already running dunst instances
killall -q dunst

# Wait until the processes have been shut down
while pgrep -u $UID -x dunst >/dev/null; do sleep 1; done

# Launch Dunst, using default config location ~/.config/dunst/dunstrc
dunst &

echo "Dunst launched..."
