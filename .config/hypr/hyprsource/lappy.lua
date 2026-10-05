--[[
   __    ___    ___  ______ ____   ___ 
  / /   / _ |  / _ \/_  __// __ \ / _ \
 / /__ / __ | / ___/ / /  / /_/ // ___/
/____//_/ |_|/_/    /_/   \____//_/
--]]                                         



hl.config({
--  ┏┳┓┳┓┏┓┏┓┓┏┓┏┓┏┓┳┓
--   ┃ ┣┫┣┫┃ ┃┫ ┃┃┣┫┃┃
--   ┻ ┛┗┛┗┗┛┛┗┛┣┛┛┗┻┛
    input = {
        touchpad = {
            disable_while_typing = true,
            natural_scroll = true,
            clickfinger_behavior = false,
            middle_button_emulation = true,
            tap_to_click = true,
            drag_lock = 0,
    	    scroll_factor = 0.2,
        },
    },


--  ┏┓┏┓┏┓┏┳┓┳┳┳┓┏┓┏┓
--  ┃┓┣ ┗┓ ┃ ┃┃┣┫┣ ┗┓
--  ┗┛┗┛┗┛ ┻ ┗┛┛┗┗┛┗┛
    gestures = {
        workspace_swipe_distance = 600,
        workspace_swipe_invert = 1,
        workspace_swipe_min_speed_to_force = 30,
        workspace_swipe_cancel_ratio = 0.5,
        workspace_swipe_create_new = 1,
        workspace_swipe_forever = false,
    },


--  ┏┓┏┓┳┓┏┓┏┓┳┓┳┳┓┏┓┳┓┏┓┏┓
--  ┃┃┣ ┣┫┣ ┃┃┣┫┃┃┃┣┫┃┃┃ ┣ 
--  ┣┛┗┛┛┗┻ ┗┛┛┗┛ ┗┛┗┛┗┗┛┗┛
    -- decoration:drop_shadow = false,
    -- misc:vfr = true, # lowers the amount of sent frames
    -- decoration:blur = false,
})


--  ┏┓┏┓┏┓┏┳┓┳┳┳┓┏┓┏┓
--  ┃┓┣ ┗┓ ┃ ┃┃┣┫┣ ┗┓
--  ┗┛┗┛┗┛ ┻ ┗┛┛┗┗┛┗┛
hl.gesture({ fingers = 3, direction = "vertical", action = "workspace" })

hl.gesture({ fingers = 3, direction = "up", mods = "SUPER", action = "fullscreen", mode = "maximize" })
hl.gesture({ fingers = 3, direction = "down", mods = "SUPER", action = "close" })

hl.gesture({ fingers = 3, direction = "left", mods = "SUPER", action = "float", mode = "tile" })
hl.gesture({ fingers = 3, direction = "right", mods = "SUPER", action = "float", mode = "float" })
