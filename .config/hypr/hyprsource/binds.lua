--     __ __ ______  __    ___   ____ _  __ ___   ____
--    / //_// __/\ \/ /   / _ ) /  _// |/ // _ \ / __/
--   / ,<  / _/   \  /   / _  |_/ / /    // // /_\ \
--  /_/|_|/___/   /_/   /____//___//_/|_//____//___/
--                                                     



--  ┳┳┓┏┓┳┓┏┓
--  ┃┃┃┃┃┃┃┗┓
--  ┛ ┗┗┛┻┛┗┛
local mainMod = "SUPER"
-- INFO: Use SUPERSHIFT for SUPER + SHIFT
-- Use ALT_L and SHIFT_L if normal ALT and SHIFT doesn't works.

--  ┳┓┏┓┏┳┓┳┏┓┓┏ ┳┳┓┏┓┳┓┏┓
--  ┃┃┃┃ ┃ ┃┣ ┗┫ ┃┃┃┃┃┃┃┗┓
--  ┛┗┗┛ ┻ ┻┻ ┗┛ ┛ ┗┗┛┻┛┗┛
-- Aliases for notify-send after starting any app
local notifexec = "notify-send -i 'app' 'Fist my bump!'"
local notifexecterm = "notify-send -i 'alacritty' 'Fist my bump!'" 
local notifexecfiles = "notify-send -i 'nautilus' 'Fist my bump!'" 
local notifexeccode = "notify-send -i 'vscode' 'Fist my bump!'" 
local notifexecsmile = "notify-send -i 'ksmiletris' 'Fist my bump!'" 
local notifexecwall = "notify-send -i 'wallpaper' 'Fist my bump!'" 
local notifexecdock = "notify-send -i 'dock' 'Fist my bump!'" 
local notifexeclock = "notify-send -i 'lock' 'Fist my bump!'" 
local notifexecmedia = "notify-send -i 'multimedia-video-player' 'Fist my bump!'" 
local notifexecread = "notify-send -i 'synaptic' 'Fist my bump!'" 
local notifexecnotion = "notify-send -i 'notepad' 'Fist my bump!'" 
local notifexecclip = "notify-send -i 'xclipboard' 'Fist my bump!'" 
local notifexeclaunch = "notify-send -i 'ulauncher' 'Fist my bump!'" 
local notifexecstar = "notify-send -i 'staruml' 'Fist my bump!'" 


--  ┏┓┏┓┏┓┏┓
--  ┣┫┃┃┃┃┗┓
--  ┛┗┣┛┣┛┗┛
-- Execute your favourite apps using mainMod + [key]
hl.bind(mainMod .. " + Q", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecterm .. 'Launching Alacritty'))
    hl.dispatch(hl.dsp.exec_cmd('alacritty'))
end)
hl.bind(mainMod .. " + A", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecfiles .. 'Launching Files'))
    hl.dispatch(hl.dsp.exec_cmd('nautilus'))
end)
hl.bind(mainMod .. " + Z", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexeccode .. 'Launching VSCode'))
    hl.dispatch(hl.dsp.exec_cmd('code'))
end)
hl.bind(mainMod .. " + period", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecsmile .. 'Doodling up fellas!'))
    hl.dispatch(hl.dsp.exec_cmd('vicinae vicinae://launch/core/search-emojis'))
end)

hl.bind(mainMod .. " + W", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecwall .. 'Switching wallpapers eh?'))
    hl.dispatch(hl.dsp.exec_cmd('waypaper'))
end)
hl.bind(mainMod .. " + SHIFT + W", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecwall .. 'Restoring Waypaper'))
    hl.dispatch(hl.dsp.exec_cmd('waypaper --restore --no-post-command'))
end)
hl.bind(mainMod .. " + S", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecwall .. 'Trigerring failsafe'))
    hl.dispatch(hl.dsp.exec_cmd('awww img .walls/mac-os/macos-sequoia.jpg'))
end)

-- hl.bind(mainMod .. " + W", function()
--     hl.dispatch(hl.dsp.exec_cmd(notifexecwall .. 'Switching wallpapers eh?'))
--     hl.dispatch(hl.dsp.exec_cmd('awww img $(find ~/.walls/ -type f | vicinae dmenu -p "Pick a wallpaper...")'))
--     hl.dispatch(hl.dsp.exec_cmd('zsh ~/.scripts/wal-notify'))
-- end)

hl.bind(mainMod .. " + E", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecread .. 'Enabling Reading Mode'))
    hl.dispatch(hl.dsp.exec_cmd('wlsunset -t 5400 -T 5500'))
end)
hl.bind(mainMod .. " + SHIFT + E", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecread .. 'Disabling Reading Mode'))
    hl.dispatch(hl.dsp.exec_cmd('pkill wlsunset'))
end)

hl.bind(mainMod .. " + ALT + W", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecdock .. 'Restarting Waybar'))
    hl.dispatch(hl.dsp.exec_cmd('pkill -SIGUSR2 waybar'))
end)


--  ┏┓┓┏┳┳┳┓┏┓┏┳┳
--  ┗┓┣┫┃┃┃┃┣  ┃┃
--  ┗┛┛┗┻┛ ┗┗┛┗┛┻
-- WARN: Shimeji keybinds are a bit buggy.
hl.bind(mainMod .. " + ALT + 1", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecstar .. 'Summoning Neuron'))
    hl.dispatch(hl.dsp.exec_cmd('shimejictl mascot summon "Neuron"'))
end)
hl.bind(mainMod .. " + ALT + 2", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecstar .. 'Summoning Weuron'))
    hl.dispatch(hl.dsp.exec_cmd('shimejictl mascot summon "Weuron"'))
end)
hl.bind(mainMod .. " + ALT + 3", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecstar .. 'Summoning Eviling'))
    hl.dispatch(hl.dsp.exec_cmd('shimejictl mascot summon "Eviling"'))
end)
hl.bind(mainMod .. " + ALT + 4", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecstar .. 'Summoning Miku'))
    hl.dispatch(hl.dsp.exec_cmd('shimejictl mascot summon "miku"'))
end)
hl.bind(mainMod .. " + Delete", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecstar .. 'Click to dismiss a Shimeji'))
    hl.dispatch(hl.dsp.exec_cmd('shimejictl dismiss'))
end)
hl.bind(mainMod .. " + SHIFT + Delete", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecstar .. 'Click to dismiss all shimejis'))
    hl.dispatch(hl.dsp.exec_cmd('shimejictl dismiss -a'))
end)


--  ┏┓┏┓┏┓┓ ┏┓┏┓┏┳┓┳┏┓
--  ┃ ┣┫┣ ┃ ┣ ┗┓ ┃ ┃┣┫
--  ┗┛┛┗┗┛┗┛┗┛┗┛ ┻ ┻┛┗
-- bind = $mainMod, N, exec, caelestia shell -d
-- bind = $mainMod SHIFT, N, global,caelestia:launcher
-- bind = $mainMod SHIFT, M, global, caelestia:session 

--  ┏┓┏┓┓ ┏┏┓┳┓
--  ┃┃┃┃┃┃┃┣ ┣┫
--  ┣┛┗┛┗┻┛┗┛┛┗
-- Kill apps and system using mainMod + [key]
hl.bind(mainMod .. " + K",          hl.dsp.window.close(), { description = "Close active window" })
hl.bind(mainMod .. " + SHIFT + M",  hl.dsp.exec_cmd('systemctl poweroff'), { description = "Power off the system" })
hl.bind(mainMod .. " + M",          hl.dsp.exec_cmd('hyprshutdown'), { description = "Shutdown Hyprland" })
hl.bind(mainMod .. " + D",          hl.dsp.exec_cmd('zsh ~/.scripts/disable-eDP'), { description = "Disable eDP monitor" })

hl.bind(mainMod .. " + L", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexeclock .. 'Initiating Lock'))
    hl.dispatch(hl.dsp.exec_cmd('loginctl lock-session'))
end)


--  ┏┳┓┳┓ ┓ ┳┳┓┏┓
--   ┃ ┃┃ ┃ ┃┃┃┃┓
--   ┻ ┻┗┛┗┛┻┛┗┗┛
-- Toggle between normal & extra-ordinary!
hl.bind(mainMod .. " + P",          hl.dsp.window.pseudo({ action = "toggle" }), { description = "Toggle pseudo window" })
hl.bind(mainMod .. " + SHIFT + P",  hl.dsp.window.float({ action = "toggle" }), { description = "Toggle floating window" })

hl.bind(mainMod .. " + F",          hl.dsp.window.fullscreen({ mode = "fullscreen" }), { description = "Toggle complete fullscreen (without bar)" })
hl.bind(mainMod .. " + SHIFT + F",  hl.dsp.window.fullscreen({ mode = "maximized" }), { description = "Set window to fullscreen (with bar)" })

hl.bind(mainMod .. " + Space",      hl.dsp.window.center(), { description = "Center the active window" })

-- Look up for a way to rotate the screen with lua. (Probably with hyprctl eval)
-- hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("sed -i '/eDP-1/s/transform, 1/transform, 0/' ~/.config/hypr/hyprsource/monitors.conf"))
-- hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("sed -i '/eDP-1/s/transform, 0/transform, 1/' ~/.config/hypr/hyprsource/monitors.conf"))


--  ┏┓┏┓┏┓┳┳┏┓
--  ┣ ┃┃┃ ┃┃┗┓
--  ┻ ┗┛┗┛┗┛┗┛
-- Change focus with mainMod + arrow keys
hl.bind(mainMod .. " + Up",     hl.dsp.focus({ direction = "up" }), { description = "Focus window above" })
hl.bind(mainMod .. " + Down",   hl.dsp.focus({ direction = "down" }), { description = "Focus window below" })
hl.bind(mainMod .. " + Left",   hl.dsp.focus({ direction = "left" }), { description = "Focus window to the left" })
hl.bind(mainMod .. " + Right",  hl.dsp.focus({ direction = "right" }), { description = "Focus window to the right" })


--  ┓ ┏┏┓┳┓┓┏┓┏┓┏┓┏┓┏┓┏┓┏┓
--  ┃┃┃┃┃┣┫┃┫ ┗┓┃┃┣┫┃ ┣ ┗┓
--  ┗┻┛┗┛┛┗┛┗┛┗┛┣┛┛┗┗┛┗┛┗┛
-- Switch workspaces with mainMod + [0-9]
hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }), { description = "Switch to workspace 1" })
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }), { description = "Switch to workspace 2" })
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }), { description = "Switch to workspace 3" })
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }), { description = "Switch to workspace 4" })
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }), { description = "Switch to workspace 5" })
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }), { description = "Switch to workspace 6" })
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }), { description = "Switch to workspace 7" })
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }), { description = "Switch to workspace 8" })
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }), { description = "Switch to workspace 9" })
-- Reserve workspace 10 for special workspace (do it later)
hl.bind(mainMod .. " + 0", hl.dsp.workspace.toggle_special("magic"), { description = "Switch to special workspace" })

-- Toggle workspace overviw mode (Hyprspace plugin)
-- bind = $mainMod, Tab, overview:toggle


--  ┓ ┏┳ ┳┓┳┓┏┓┏┓┏┓╹┳┓┏┳┓
--  ┃┃┃┃ ┃┃┃┃┃┃┣ ┗┓ ┃┃ ┃ 
--  ┗┻┛┻ ┛┗┻┛┗┛┗┛┗┛ ┛┗ ┻ 
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }), { description = "Move active window to workspace 1" })
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }), { description = "Move active window to workspace 2" })
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }), { description = "Move active window to workspace 3" })
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }), { description = "Move active window to workspace 4" })
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }), { description = "Move active window to workspace 5" })
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }), { description = "Move active window to workspace 6" })
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }), { description = "Move active window to workspace 7" })
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }), { description = "Move active window to workspace 8" })
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }), { description = "Move active window to workspace 9" })
-- Reserve workspace 10 for special workspace (do it later)
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = "special:magic" }), { description = "Move active window to special workspace" })

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { description = "Move active window with mouse" })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { description = "Resize active window with mouse" })
-- Move/resize windows with mainMod + Ctrl/ALT and dragging (useful for touchpad users)
hl.bind(mainMod .. " + Control_L", hl.dsp.window.drag(), { description = "Move active window with keyboard" })
hl.bind(mainMod .. " + ALT_L", hl.dsp.window.resize(), { description = "Resize active window with keyboard" })

-- Switch focus to windows using keyboard (HyprEasyMotion)
-- bind = , code:135, easymotion, action:hyprctl dispatch focuswindow address:{}

-- Cycle through active windows using snappy-switcher
hl.bind(mainMod .. " + Tab", hl.dsp.exec_cmd('snappy-switcher next --mod super'), { description = "Cycle through active windows" })
-- Not Working properly, need to check the snappy-switcher docs for more info.
-- hl.bind(mainMod .. " + SHIFT + Tab", hl.dsp.exec_cmd('snappy-switcher --workspace --mod super'), { description = "Cycle through windows on current workspace" }) 


--  ┳┳┓      •┏•    •    
--  ┃┃┃┏┓┏┓┏┓┓╋┓┏┏┓╋┓┏┓┏┓
--  ┛ ┗┗┻┗┫┛┗┗┛┗┗┗┻┗┗┗┛┛┗
-- Magnify the screen using keyboard buttons
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.exec_cmd("hyprctl keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor | awk '/^float.*/ {print $2 + 0.1}')"), { description = "Zoom in" })
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.exec_cmd("hyprctl keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor | awk '/^float.*/ {print $2 - 0.1}')"), { description = "Zoom out" })


--  ┏┓ ┏┓ ┳┓┳┳┓┳┓  ┓┏┓┏┓┓┏┏┓
--   ┃━┃  ┣┫┃┃┃┃┃━━┃┫ ┣ ┗┫┗┓
--  ┗┛ ┗┛ ┻┛┻┛┗┻┛  ┛┗┛┗┛┗┛┗┛
-- Media Controls using XF86-keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd('swayosd-client --output-volume +2'), { description = "Increase audio volume", locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd('swayosd-client --output-volume -2'), { description = "Decrease audio volume", locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd('swayosd-client --output-volume mute-toggle'), { description = "Mute audio", locked = true })

-- NOTE: The next 4 commands requires playerctl.
hl.bind("XF86AudioPlay", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecmedia .. 'Toggling play/pause media'))
    hl.dispatch(hl.dsp.exec_cmd('playerctl play-pause'), { description = "Play/Pause media", locked = true })
end)
hl.bind("XF86AudioPrev", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecmedia .. 'Toggling previous media'))
    hl.dispatch(hl.dsp.exec_cmd('playerctl previous'), { description = "Previous media", locked = true })
end)
hl.bind("XF86AudioNext", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecmedia .. 'Toggling next media'))
    hl.dispatch(hl.dsp.exec_cmd('playerctl next'), { description = "Next media", locked = true })
end)
hl.bind("XF86AudioStop", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecmedia .. 'Toggling stop media'))
    hl.dispatch(hl.dsp.exec_cmd('playerctl stop'), { description = "Stop media", locked = true })
end)

-- Brightness Controls using XF86-keys
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd('swayosd-client --brightness +2'), { description = "Increase brightness", locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd('swayosd-client --brightness -2'), { description = "Decrease brightness", locked = true, repeating = true })


--  ┓       ┓
--  ┃┏┓┓┏┏┓┏┣┓┏┓┏┓
--  ┗┗┻┗┻┛┗┗┛┗┗ ┛
-- Start your favourite app-launcher using mainMod
hl.bind(mainMod .. " + U", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexeclaunch .. 'Bringing up Ulauncher'))
    hl.dispatch(hl.dsp.exec_cmd('ulauncher --no-window-shadow'))
end)
-- Use {locked = true} for ulauncher if it doesn't work properly.
hl.bind(mainMod .. " + SUPER_L", hl.dsp.exec_cmd('ulauncher-toggle'), { description = "Toggle Ulauncher", release = true })
hl.bind("code:135", hl.dsp.exec_cmd('vicinae toggle'), { description = "Toggle Vicinae Launcher", release = true })
hl.bind(mainMod .. " + Space", hl.dsp.exec_cmd('vicinae vicinae://launch/system/browse-apps'), { description = "Browse installed apps", release = true })


--  ┏┓┏┓┳┓┏┓┏┓┳┓ ┏┓┓┏┏┓┏┓┏┳┓┏┓┳┓
--  ┗┓┃ ┣┫┣ ┣ ┃┃ ┗┓┣┫┃┃┃┃ ┃ ┣ ┣┫
--  ┗┛┗┛┛┗┗┛┗┛┛┗ ┗┛┛┗┗┛┗┛ ┻ ┗┛┛┗
-- Screenshot your windows using mainMod + Prnt-Screen
hl.bind("PRINT", hl.dsp.exec_cmd('hyprshot -m output -z'), { description = "Take screenshot", release = true })
hl.bind(mainMod .. " + PRINT", hl.dsp.exec_cmd('slurp | grim -g - - | tee ~/Pictures/$(date +%s).png | wl-copy'), { description = "Take screenshot of selected area", release = true })


--  ┏┓┓ ┳┏┓┳┓┏┓┏┓┳┓┳┓
--  ┃ ┃ ┃┃┃┣┫┃┃┣┫┣┫┃┃
--  ┗┛┗┛┻┣┛┻┛┗┛┛┗┛┗┻┛
-- WARNING: Need to configure later!
-- bind = $mainMod, V, exec, $notifexecclip 'Bringing up clipboard'; nwg-clipman
hl.bind(mainMod .. " + V", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexecclip .. 'Bringing up clipboard'))
    hl.dispatch(hl.dsp.exec_cmd('vicinae vicinae://launch/clipboard/history'), { description = "View clipboard history"})
end)
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd('cliphist list | fuzzel --dmenu --with-nth 2 | cliphist decode | wl-copy'))


--  ┏┓┓┏┏┓┳┓┏┓┳┓┏┓
--  ┗┓┣┫┣┫┃┃┣ ┣┫┗┓
--  ┗┛┛┗┛┗┻┛┗┛┛┗┗┛
-- Shader toggle keybindings
hl.bind(mainMod .. " + SHIFT + F1", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexec .. 'Enabled AMOLED shader'))
    hl.dispatch(hl.dsp.exec_cmd('hyprshade on amoled'))
end)
hl.bind(mainMod .. " + SHIFT + F2", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexec .. 'Enabled Retro shader'))
    hl.dispatch(hl.dsp.exec_cmd('hyprshade on retro'))
end)
hl.bind(mainMod .. " + SHIFT + F3", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexec .. 'Enabled CyberPunk shader'))
    hl.dispatch(hl.dsp.exec_cmd('hyprshade on cyberpunk'))
end)
hl.bind(mainMod .. " + SHIFT + F4", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexec .. 'Enabled Matrix shader'))
    hl.dispatch(hl.dsp.exec_cmd('hyprshade on matrix'))
end)
hl.bind(mainMod .. " + SHIFT + F5", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexec .. 'Enabled Reading Mode shader'))
    hl.dispatch(hl.dsp.exec_cmd('hyprshade on blue-light-filter'))
end)
hl.bind(mainMod .. " + SHIFT + F11", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexec .. 'Enabled Vibrance shader'))
    hl.dispatch(hl.dsp.exec_cmd('hyprshade on vibrance'))
end)
-- Turn off any active shader
hl.bind(mainMod .. " + SHIFT + F12", function()
    hl.dispatch(hl.dsp.exec_cmd(notifexec .. 'Disabled HyprShade'))
    hl.dispatch(hl.dsp.exec_cmd('hyprshade off'))
end)
