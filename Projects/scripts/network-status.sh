#!/bin/bash

if ! nmcli -t -f WIFI g | grep -q "enabled"; then
    echo "󰤮 wifi off"
    exit 0
fi

conn=$(nmcli -t -f ACTIVE,SSID dev wifi | grep '^yes' | cut -d: -f2)

if [ -n "$conn" ]; then
    echo "󰤨 $conn"
else
    echo "󰤮 disconnected"
fi
