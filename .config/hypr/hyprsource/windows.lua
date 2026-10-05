--[[
 _       __ ____ _   __            ____   __  __ __     ______ _____
| |     / //  _// | / /           / __ \ / / / // /    / ____// ___/
| | /| / / / / /  |/ /  ______   / /_/ // / / // /    / __/   \__ \ 
| |/ |/ /_/ / / /|  /  /_____/  / _, _// /_/ // /___ / /___  ___/ / 
|__/|__//___//_/ |_/           /_/ |_| \____//_____//_____/ /____/  
--]]
-- Rules for individual windows in Hyprland DE
-- See https://wiki.hyprland.org/Configuring/Window-Rules/ for more



--  ┏┓┓ ┏┓┏┓┳┓┳┏┳┓┏┳┓┓┏
--  ┣┫┃ ┣┫┃ ┣┫┃ ┃  ┃ ┗┫
--  ┛┗┗┛┛┗┗┛┛┗┻ ┻  ┻ ┗┛
--  INFO: Rules for erminal [WORKING]
hl.window_rule({
    name = "alacritty",
    pseudo = true,
    center = true,
    size = { 1138, 715 },
    match = {
        class = "Alacritty",
        workspace = "w[t0]",
    },
})


--  ┏┓┏┓┏┓┏┓┳┓┏┓
--  ┃┃┣┫┃┃┣ ┣┫┗┓
--  ┣┛┛┗┣┛┗┛┛┗┗┛
--  INFO: Rules for papers [WORKING]
hl.window_rule({
    name = "papers",
    float = true,
    center = true,
    size = { 1330, 734 },
    match = {
        class = "org.gnome.Evince",
    },
})


--  ┓┏┏┳┓ ┳┳┓┳┳┏┓┳┏┓
--  ┗┫ ┃  ┃┃┃┃┃┗┓┃┃ 
--  ┗┛ ┻  ┛ ┗┗┛┗┛┻┗┛
--  INFO: Rules for YouTube Music [WORKING]
hl.window_rule({
    name = "yt-music",
    float = true,
    animation = "slide right",
    move = { 1129, 60 },
    size = { 517, 817 },
    match = {
        initial_title = "YouTube Music",
    },
})

--  ┏┓┏┓┏┓┓┏ ┏┓┏┓┏┓┏┓┏┓┏┳┓┏┓
--  ┣ ┣┫┗┓┗┫ ┣ ┣ ┣ ┣ ┃  ┃ ┗┓
--  ┗┛┛┗┗┛┗┛ ┗┛┻ ┻ ┗┛┗┛ ┻ ┗┛
--  INFO: Rules for Easy Effects
hl.window_rule({
    name = "easyeffects",
    float = true,
    animation = "slide left",
    move = { 24, 60 },
    size = { 1076, 817 },
    match = {
        class = "com.github.wwmm.easyeffects",
    },
})


--  ┓ ┏┓┳┳┳┓┏┓┓┏┏┓┳┓
--  ┃ ┣┫┃┃┃┃┃ ┣┫┣ ┣┫
--  ┗┛┛┗┗┛┛┗┗┛┛┗┗┛┛┗
--  INFO: Rules for ulauncher [WORKING]
hl.window_rule({
    name = "ulauncher",
    float = true,
    pin = true,
    animation = "gnomed",
    stay_focused = true,
    match = {
        class = "ulauncher",
    },
})

--  INFO: Rules for ulauncher [WORKING]
hl.window_rule({
    name = "vicinae",
    float = true,
    pin = true,
    animation = "gnomed",
    stay_focused = true,
    match = {
        class = "vicinae",
    },
})


--  ┏┓┏┓┳┓┏┓
--   ┃┃ ┃┃┃┓
--  ┗┛┗┛┻┛┗┛
--  INFO: Rules for xdg-desktop-portal-gtk [WORKING]
hl.window_rule({
    name = "xdg-desktop-portal-gtk",
    float = true,
    center = true,
    size = { 1120, 650 },
    match = {
        class = "xdg-desktop-portal-gtk",
    },
})


--  ┳┓┏┓┳┳┏┳┓┳┓ ┳┳┏┓
--  ┃┃┣┫┃┃ ┃ ┃┃ ┃┃┗┓
--  ┛┗┛┗┗┛ ┻ ┻┗┛┗┛┗┛
--  INFO: Rules for Nautilus [WORKING]
-- File Dialogs (open, save, etc.) are now managed by xdg-desktop-portal-gtk
hl.window_rule({
    name = "nautilus",
    pseudo = true,
    center = true,
    size = { 1120, 650 },
    match = {
        class = "org.gnome.Nautilus",
        workspace = "w[t0]",
    },
})

--  INFO: Rules for File Roller [WORKING]
hl.window_rule({
    name = "file-roller",
    float = true,
    center = true,
    size = { 1120, 650 },
    match = {
        class = "org.gnome.FileRoller",
    },
})


--  ┳┓┏┓┏┓┳
--  ┣┫┃┃┣ ┃
--  ┛┗┗┛┻ ┻
--  INFO: Rules for rofi scripts [WORKING]
hl.window_rule({
    name = "rofi",
    float = true,
    center = true,
    match = {
        class = "Rofi",
    },
})


--  ┓ ┏┏┓┓┏┏┓┏┓┏┓┏┓┳┓
--  ┃┃┃┣┫┗┫┃┃┣┫┃┃┣ ┣┫
--  ┗┻┛┛┗┗┛┣┛┛┗┣┛┗┛┛┗
--  INFO: Rules for Waypaper [WORKING]
hl.window_rule({
    name = "waypaper",
    float = true,
    move = { 827, 277 },
    size = { 820, 600 },
    animation = "slide right",
    match = {
        class = "waypaper",
    },
})


--  ┓ ┏┳┳┓┳┓┏┓┏┓┳┓┳┳┓┏┓
--  ┃┃┃┃┃┃┃┃┗┓┃ ┣┫┃┣┫┣ 
--  ┗┻┛┻┛┗┻┛┗┛┗┛┛┗┻┻┛┗┛
--  INFO: Rules for Windscribe [WORKING]
hl.window_rule({
    name = "windscribe",
    float = true,
    center = true,
    match = {
        class = "Windscribe",
    },
})

--  ┏┓┏┓┓ ┳┏┓┏┳┓┏┓
--  ┣ ┃┃┃ ┃┣┫ ┃ ┣ 
--  ┻ ┗┛┗┛┻┛┗ ┻ ┗┛
--  INFO: Rules for Foliate [WORKING]
hl.window_rule({
    name = "foliate",
    pseudo = true,
    center = true,
    size = { 1068, 768 },
    match = {
        class = "com.github.johnfactotum.Foliate",
    },
})


--  ┏┓┏┓┓ ┏┓┳┓┳┳┳┳┓
--  ┗┓┃┃┃ ┣┫┃┃┃┃┃┃┃
--  ┗┛┗┛┗┛┛┗┛┗┗┛┛ ┗
--  INFO: Rules for Solanum (GNOME Pomodoro) [WORKING]
hl.window_rule({
    name = "solanum",
    pseudo = true,
    center = true,
    size = { 1100, 808 },
    match = {
        class = "org.gnome.Solanum",
    },
})


--  ┓ ┏┏┓┓┏ ┳┓┳┓┏┓┳┳┓
--  ┃┃┃┣┫┗┫ ┃┃┣┫┃┃┃┃┃
--  ┗┻┛┛┗┗┛ ┻┛┛┗┗┛┻┻┛
--  INFO: Rules for Waydroid [NOT-WORKING]
hl.window_rule({
    name = "waydroid",
    opacity = "1.0 override",
    match = {
        class = "^(Waydroid|waydroid\\..*)$",
    },
})



--  ┓ ┏┓┓┏┏┓┳┓┏┓
--  ┃ ┣┫┗┫┣ ┣┫┗┓
--  ┗┛┛┗┗┛┗┛┛┗┗┛
--  INFO: Rules for various layers under same category

hl.layer_rule({
    name = "hypr-dock",
    blur = true,
    ignore_alpha = 0.5,
    animation = "slide bottom",
    match = {
        namespace = "hypr-dock",
    },
})

hl.layer_rule({
    name = "hypr-dock (popup)",
    blur = false,
    ignore_alpha = 0,
    animation = "slide bottom",
    match = {
        namespace = "dock-popup",
    },
})

hl.layer_rule({
    name = "waybar",
    blur = true,
    animation = "slide",
    match = {
        namespace = "waybar",
    },
})

hl.layer_rule({
    name = "awww-daemon",
    animation = "fade",
    match = {
        namespace = "awww-daemon",
    },
})

hl.layer_rule({
    name = "vicinae-blur",
    blur = true,
    ignore_alpha = 0.3,
    animation = "slide bottom",
    match = {
        namespace = "vicinae",
    },
})

hl.layer_rule({
    name = "fuzzel",
    blur = true,
    ignore_alpha = 0.3,
    animation = "slide bottom",
    match = {
        namespace = "fuzzel",
    },
})

hl.layer_rule({
    name = "swaync-control-center",
    blur = true,
    ignore_alpha = 0.3,
    animation = "slide right",
    match = {
        namespace = "swaync-control-center",
    },
})

hl.layer_rule({
    name = "swaync-notification-window",
    blur = true,
    ignore_alpha = 0.5,
    animation = "slide right",
    match = {
        namespace = "swaync-notification-window",
    },
})

hl.layer_rule({
    name = "gtk-layer-shell",
    blur = true,
    ignore_alpha = 0.5,
    animation = "fade",
    match = {
        namespace = "gtk-layer-shell",
    },
})

hl.layer_rule({
    name = "swayosd",
    blur = true,
    ignore_alpha = 0.5,
    animation = "slide bottom",
    match = {
        namespace = "swayosd",
    },
})

hl.layer_rule({
    name = "tofi-drun",
    blur = true,
    animation = "slide bottom",
    match = {
        namespace = "tofi-drun",
    },
})

hl.layer_rule({
    name = "nwg-drawer",
    blur = true,
    animation = "slide bottom",
    match = {
        namespace = "nwg-drawer",
    },
})

hl.layer_rule({
    name = "snappy-switcher",
    blur = true,
    animation = "slide top",
    match = {
        namespace = "snappy-switcher",
    },
})

hl.layer_rule({
    name = "hyprpicker",
    no_anim = true,
    match = {
        namespace = "hyprpicker",
    },
})

hl.layer_rule({
    name = "selection",
    no_anim = true,
    match = {
        namespace = "selection",
    },
})

hl.layer_rule({
    name = "hyprshutdown",
    animation = "fade",
    blur = true,
    blur_popups = true,
    dim_around = true,
    ignore_alpha = 0.3,
    match = {
        namespace = "hyprshutdown",
    }
})
