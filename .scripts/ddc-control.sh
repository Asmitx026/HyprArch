#!/bin/bash
# NOTE: The `ddcutil` package must be installed for this to work!

RECEIVE_PIPE="/tmp/waybar-ddc-module-rx"
STEP=5

# VCP values
BRIGHTNESS_VCP=10
CONTRAST_VCP=12

# Initial state
MODE="brightness"
VCP=$BRIGHTNESS_VCP
ICON="󰳲"
LABEL="HDMI-A-1 Brightness"

ddcutil_fast() {
    ddcutil --noverify --sleep-multiplier .01 "$@" 2>/dev/null
}

ddcutil_slow() {
    ddcutil --maxtries 15,15,15 "$@" 2>/dev/null
}

print_value() {
    # Get the current value using the function passed as an argument
    if VALUE=$("$@" -t getvcp "$VCP"); then
        # Extract only the numeric value (field 4)
        VALUE=$(echo "$VALUE" | cut -d ' ' -f 4)
    else
        VALUE=-1
    fi
    
    # JSON output for Waybar
    if [ "$VALUE" != "-1" ]; then
        echo "{\"text\": \"$ICON ${VALUE}%\", \"tooltip\": \"$LABEL: ${VALUE}%\"}"
    else
        echo "{\"text\": \"$ICON Disconnected\", \"tooltip\": \"HDMI not connected\"}"
    fi
}

# Check if any DDC monitors are available
if ! command -v ddcutil &> /dev/null; then
    exit 0
fi

if ! ddcutil detect --brief &> /dev/null; then
    exit 0
fi

# Clear and create the pipe
rm -rf "$RECEIVE_PIPE"
mkfifo "$RECEIVE_PIPE"

# First read
print_value ddcutil_slow

# Main loop
while true; do
    read -r command < "$RECEIVE_PIPE"
    
    case "$command" in
        up)
            ddcutil_fast setvcp "$VCP" + "$STEP"
            print_value ddcutil_fast
            ;;
        down)
            ddcutil_fast setvcp "$VCP" - "$STEP"
            print_value ddcutil_fast
            ;;
        max)
            ddcutil_fast setvcp "$VCP" 100
            print_value ddcutil_fast
            ;;
        min)
            ddcutil_fast setvcp "$VCP" 0
            print_value ddcutil_fast
            ;;
        toggle)
            # Switch between brightness and contrast
            if [ "$MODE" = "brightness" ]; then
                VCP=$CONTRAST_VCP
                ICON="󰆗"
                LABEL="Contrast"
                MODE="contrast"
            else
                VCP=$BRIGHTNESS_VCP
                ICON="󰳲"
                LABEL="Brightness"
                MODE="brightness"
            fi
            print_value ddcutil_fast
            ;;
        *)
            ;;
    esac
done
