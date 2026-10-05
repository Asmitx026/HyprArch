--[[
_   _____   ___  _______   ___  __   ________
   | | / / _ | / _ \/  _/ _ | / _ )/ /  / __/ __/
   | |/ / __ |/ , _// // __ |/ _  / /__/ _/_\ \
   |___/_/ |_/_/|_/___/_/ |_/____/____/___/___/
--]]



--  ┳┓┳ ┳┓┏┓┏┓┏┳┓┏┓┳┓┳┏┓┏┓
--  ┃┃┃ ┣┫┣ ┃  ┃ ┃┃┣┫┃┣ ┗┓
--  ┻┛┻ ┛┗┗┛┗┛ ┻ ┗┛┛┗┻┗┛┗┛
--  WARNING: Create HYPRSHOT directory, if it doesn't exists.
hl.env("HYPR_DIR", "$HOME/.config/hypr/")
hl.env("HYPRSRC", "$HOME/.config/hypr/hyprsource/")
hl.env("HYPRSHOT", "$HOME/Pictures/Screenshots/")


--  ┏┳┓┓┏┏┓┳┳┓┏┓┏┓
--   ┃ ┣┫┣ ┃┃┃┣ ┗┓
--   ┻ ┛┗┗┛┛ ┗┗┛┗┛
--  INFO: GTK Settings are saved in seperate file (settings.ini)
hl.env("GTK_THEME", "WhiteSur-Dark:dark")
hl.env("QT_STYLE_OVERRIDE", "kvantum")
hl.env("QT_QPA_PLATFORMTHEME", "kvantum")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1.15")
hl.env("ADW_DISABLE_PORTAL", "1")


--  ┏┓┳┳┳┓┏┓┏┓┳┓
--  ┃ ┃┃┣┫┗┓┃┃┣┫
--  ┗┛┗┛┛┗┗┛┗┛┛┗
--  INFO: hyprctl setcursor is disabled. Use these var to change cursor themes.
hl.env("HYPRCURSOR_THEME", "Neuro-Sama-hypr")
hl.env("HYPRCURSOR_SIZE", "32")
hl.env("XCURSOR_THEME", "Neuro-Sama")
hl.env("XCURSOR_SIZE", "32")


--  ┏┓┓┏┏┓┏┳┓┏┓┳┳┓
--  ┗┓┗┫┗┓ ┃ ┣ ┃┃┃
--  ┗┛┗┛┗┛ ┻ ┗┛┛ ┗
--  WARNING: Deleting any of these might cause issues!
hl.env("GDK_BACKEND", "wayland,x11")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("PROTON_ENABLE_WAYLAND", "1")
hl.env("ELECTRON_ARGS", "--enable-features=UseOzonePlatform --ozone-platform=wayland")