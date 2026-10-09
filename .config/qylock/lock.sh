#!/usr/bin/env bash

# Set session type and themes
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export XDG_SESSION_TYPE="wayland"
export QS_THEME="f1-livery"
export QS_THEME_PATH="$DIR/themes/$QS_THEME"

# Set library paths
export QML2_IMPORT_PATH="$DIR/imports:$QML2_IMPORT_PATH"
export QML_XHR_ALLOW_FILE_READ=1

echo "Locking with Quickshell using theme: $QS_THEME"
echo "Theme path: $QS_THEME_PATH"

# Process cleanup
killall -9 hyprlock swaylock wlogout 2>/dev/null || true

# Execute lock
exec quickshell -p "$DIR/lock_shell.qml"
