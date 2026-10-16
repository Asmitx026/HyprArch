#!/bin/bash
# Originally created by @Tamarindtype
# Modified and simplified by me (@radiantNearl26)

# Get Wi-Fi connection status
wifi_status=$(nmcli -t -f WIFI g)
wifi_connection=$(nmcli -t -f STATE g)

# Check if Wi-Fi is disabled
if [ "$wifi_status" == "disabled" ]; then
    echo "󰤮  WiFi Disabled"
    exit 0
fi

# Check if Wi-Fi is enabled & connected
if [ "$wifi_connection" == "connected" ]; then
    echo "󰤥  WiFi Connected"
    exit 0
fi

# Check if Wi-Fi is enabled but disconnected
if [ "$wifi_connection" == "disconnected" ]; then
    echo "󰤮  Disconnected"
    exit 0
fi
