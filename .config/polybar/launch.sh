#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch bar
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

polybar cvv >>/tmp/polybar_cvv.log 2>&1 &
if [[ $(xrandr --query | grep 'DisplayPort-0') = *connected* ]];
then
	polybar cvv_external >>/tmp/polybar_cvv.log 2>&1 &
fi

echo "Bars launched..."
