--[[
  ____ ______ ___    ___  ______   __  __ ___
 / __//_  __// _ |  / _ \/_  __/  / / / // _ \
 _\ \   / /  / __ | / , _/ / /    / /_/ // ___/
/___/  /_/  /_/ |_|/_/|_| /_/     \____//_/
--]]



hl.on("hyprland.start", function()
--  ┓ ┏┏┓┓ ┓ ┏┓┏┓┏┓┏┓┳┓
--  ┃┃┃┣┫┃ ┃ ┃┃┣┫┃┃┣ ┣┫
--  ┗┻┛┛┗┗┛┗┛┣┛┛┗┣┛┗┛┛┗
--  INFO: Change your wallpaper using either hyprpaper or waypaper.
    hl.exec_cmd("waypaper --restore --no-post-command")
    -- Live Wallpaper [High MEM & CPU usage]
    -- hl.exec_cmd("mpvpaper -o '--display-fps=30 --vo=opengl  no-audio --loop-playlist' VGA-1 ~/Videos/live_wallpapers/inazuma-fireworks-genshin-impact-moewalls.com.mp4")


--  ┓┏┓┏┏┓┳┓  ┏┓┏┓┏┓┳┓┳┏┓┏┓
--  ┣┫┗┫┃┃┣┫  ┃┓┃┃┃┃┃┃┃┣ ┗┓
--  ┛┗┗┛┣┛┛┗  ┗┛┗┛┗┛┻┛┻┗┛┗┛
--  INFO: Starts the lock screen while other apps keep loading (kinda like Windows).
    -- hl.exec_cmd("hyprpm reload -n")
    -- hl.exec_cmd("pidof hyprlock || hyprlock")
    hl.exec_cmd("hyprshade on vibrance")
    hl.exec_cmd("hyprdim -s 0.3 -f 50 -d 360000") -- dim the window for an hour
    hl.exec_cmd("snappy-switcher --daemon")


--  ┳┓┏┓┏┓┳┓┳┳┓┏┓  ┳┳┓┏┓┳┓┏┓
--  ┣┫┣ ┣┫┃┃┃┃┃┃┓  ┃┃┃┃┃┃┃┣
--  ┛┗┗┛┛┗┻┛┻┛┗┗┛  ┛ ┗┗┛┻┛┗┛
--  INFO: Display color-temp. regulator [Reading Mode]
    hl.exec_cmd("wlsunset -t 5400 -T 5500")


--  ┏┓┏┓┓ ┓┏┓┳┏┳┓ ┏┓┏┓┏┓┳┓┏┳┓
--  ┃┃┃┃┃ ┃┫ ┃ ┃  ┣┫┃┓┣ ┃┃ ┃
--  ┣┛┗┛┗┛┛┗┛┻ ┻  ┛┗┗┛┗┛┛┗ ┻
--  WARN: Use xfce or kde one if functionalities break.
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")


--  ┏┓┏┓┏┓ 
--  ┣┫┃┃┃┃
--  ┛┗┣┛┣┛
--  INFO: Start your apps on boot
--  hl.exec_cmd("caelestia shell -d") -- looks good but is still buggy
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("blueman-applet")
    hl.exec_cmd("waybar")
    hl.exec_cmd("ulauncher --no-window-shadow --hide-window")
    hl.exec_cmd("vicinae server")
    hl.exec_cmd("easyeffects -w --service-mode")


--  ┳┓┏┓┏┳┓┳┏┓┳┏┓┏┓┏┳┓┳┏┓┳┓┏┓
--  ┃┃┃┃ ┃ ┃┣ ┃┃ ┣┫ ┃ ┃┃┃┃┃┗┓
--  ┛┗┗┛ ┻ ┻┻ ┻┗┛┛┗ ┻ ┻┗┛┛┗┗┛ + OSD Window
--  WARN: Use mako or dunst if functionalities break.
    hl.exec_cmd("swaync")
    hl.exec_cmd("swayosd-server")


--  ┳┓┳┓┏┓ ┏┓┏┓┳┓┓┏┏┓┳┓
--  ┃┃┃┃┗┓ ┗┓┣ ┣┫┃┃┣ ┣┫
--  ┻┛┛┗┗┛ ┗┛┗┛┛┗┗┛┗┛┛┗
--  INFO: Use your preffered dns server (Quad9 or ControlD).
--  currently using systemd-resolved to configure DNS at boot.
    -- hl.exec_cmd("sudo nextdns activate")


--  ┏┓┳┳┳┓┏┓┏┓┳┓
--  ┃ ┃┃┣┫┗┓┃┃┣┫
--  ┗┛┗┛┃┗┗┛┗┛┃┗
--  INFO: Managed by environment variables. Check the env_vars.conf file.
    -- hl.exec_cmd("hyprctl setcursor WinSur-dark-cursors 24")


--  ┏┓┓ ┳┳┏┓┳┳┓┏┓
--  ┃┃┃ ┃┃┃┓┃┃┃┗┓
--  ┣┛┗┛┗┛┗┛┻┛┗┗┛
--  WARN: Currenly not using any plugins.
    hl.exec_cmd("hypridle")
    -- hl.exec_cmd("hyprpm reload -n update")
    hl.exec_cmd("shimejictl mascot summon 'Neuron'")
    hl.exec_cmd("shimejictl mascot summon 'Weuron'")
    hl.exec_cmd("shimejictl mascot summon 'Eviling'")
    -- hl.exec_cmd("shimejictl mascot summon 'hornet'")


--  ┏┓┓ ┳┏┓┳┓┏┓┏┓┳┓┳┓
--  ┃ ┃ ┃┃┃┣┫┃┃┣┫┣┫┃┃
--  ┗┛┗┛┻┣┛┻┛┗┛┛┗┛┗┻┛
    hl.exec_cmd("wl-paste --type text --watch cliphist store") -- Stores only text data
    hl.exec_cmd("wl-paste --type image --watch cliphist store") -- Stores only image data


--  ┏┓┏┳┓┓┏┏┓┳┓┏┓
--  ┃┃ ┃ ┣┫┣ ┣┫┗┓
--  ┗┛ ┻ ┛┗┗┛┛┗┗┛
--  WARN: Currently not required.
    hl.exec_cmd("dbus-update-activation-environment --systemd HYPRLAND_INSTANCE_SIGNATURE")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    hl.exec_cmd("systemctl --user import-environment QT_QPA_PLATFORMTHEME")

end)
