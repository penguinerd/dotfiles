#!/bin/bash

THRESHOLD=15

BAT0="/sys/class/power_supply/BAT0"
BAT1="/sys/class/power_supply/BAT1"

BAT0_LEVEL=$(cat "$BAT0/capacity")
BAT1_LEVEL=$(cat "$BAT1/capacity")

if (( BAT0_LEVEL < THRESHOLD && BAT1_LEVEL < THRESHOLD )); then

    notify-send \
        -u critical \
        -i battery-caution \
        "Low Battery!" \
        "BAT0: ${BAT0_LEVEL}% | BAT1: ${BAT1_LEVEL}%"

    # Play notification sound
    paplay /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga

fi
