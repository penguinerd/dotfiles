#!/bin/bash

for bat in /sys/class/power_supply/BAT*; do
	[ -d "$bat" ] || continue

	status=$(cat "$bat/status")
	cap=$(cat "$bat/capacity")

	if [[ "$status" == "Discharging" || "$status" == "Charging" ]]; then
		capacity=$cap
		break
	fi
done

if [ -z "$capacity" ]; then
	for bat in /sys/class/power_supply/BAT*; do
		[ -d "$bat" ] || continue
		capacity=$(cat "$bat/capacity")
		status=$(cat "$bat/status")
		break
	done
fi

if [ -z "$capacity" ]; then
	echo "No battery"
	exit 0
fi

if [ "$status" = "Charging" ]; then
	icon="󰂄"
elif [ "$capacity" -ge 80 ]; then
	icon="󰁹"
elif [ "$capacity" -ge 60 ]; then
	icon="󰂀"
elif [ "$capacity" -ge 40 ]; then
	icon="󰁾"
elif [ "$capacity" -ge 20 ]; then
	icon="󰁻"
else
	icon="󰂎"
fi

echo "$icon ${capacity}%"
