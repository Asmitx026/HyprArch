#!/usr/bin/env bash
set -euo pipefail

# Set session type and themes
export SCRIPT_DIR="$HOME/.config/qy-sddm"
export XDG_SESSION_TYPE="wayland"
export QS_THEME="wuwa-x-cpe"
export QS_THEME_PATH="$SCRIPT_DIR/themes/$QS_THEME"

# Set library paths
export QML2_IMPORT_PATH="$SCRIPT_DIR/imports${QML2_IMPORT_PATH:+:$QML2_IMPORT_PATH}"
export QML_XHR_ALLOW_FILE_READ=1

echo "Locking with Quickshell using theme: $QS_THEME"
echo "Theme path: $QS_THEME_PATH"

# Process cleanup
killall -9 hyprlock swaylock wlogout 2>/dev/null || true

# Execute lock
exec quickshell -p "$SCRIPT_DIR/lock_shell.qml"
