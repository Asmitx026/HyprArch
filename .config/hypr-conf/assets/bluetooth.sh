#!/bin/bash

# Get Bluetooth power status
bluetooth_status=$(bluetoothctl show | grep "Powered:" | awk '{print $2}')
connected_devices=$(echo "$connected_devices" | sed 's/[[:space:]]*$//')

# Check if Bluetooth is powered on
if [ "$bluetooth_status" == "no" ]; then
    echo "󰂲 BT Offline"
    exit 0
fi

# If no connected devices, show "No Devices"
if [ -z "$connected_devices" ]; then
    echo "󰂲 No Devices"
    exit 0
else
    echo "󰂯 Connected"
    exit 0
fi
