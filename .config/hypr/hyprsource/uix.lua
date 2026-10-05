--[[
   __  __ ____   ______                         
  / / / //  _/  /_  __/__  __ ____   ___   _____
 / / / / / /     / /  / / / // __ \ / _ \ / ___/
/ /_/ /_/ /     / /  / /_/ // / / //  __// /    
\____//___/    /_/   \__,_//_/ /_/ \___//_/     
--]]



hl.config({
--  ┏┓┏┓┳┓┏┓┳┓┏┓┓ 
--  ┃┓┣ ┃┃┣ ┣┫┣┫┃ 
--  ┗┛┗┛┛┗┗┛┛┗┛┗┗┛                
    general = {
        layout = "dwindle",
        gaps_in = 15,
        gaps_out = 30,
        border_size = 4,
        extend_border_grab_area = 30,
        resize_on_border = true,

        col = {
            active_border = {
                colors = {COLOR2, COLOR1},
                angle = 45,
            },
            inactive_border = {
                colors = {COLOR0},
                angle = 45,
            },

            -- active_border = rgba(184,212,239,1) rgba(212,197,243,1)
            -- active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
            -- inactive_border = rgba(14,15,21,1.0)
        },

        snap = {
            -- customize later, keep def for now!
        },
    },


--  ┳┓┏┓┏┓┏┓┳┓┏┓┏┳┓┳┏┓┳┓
--  ┃┃┣ ┃ ┃┃┣┫┣┫ ┃ ┃┃┃┃┃
--  ┻┛┗┛┗┛┗┛┛┗┛┗ ┻ ┻┗┛┛┗
    decoration = {
        rounding = 8,
        rounding_power = 5,
        dim_special = 0.8,

        blur = {
            enabled = true,
            size = 10,
            passes = 4,
            noise = 0.1,
            ignore_opacity=true,
            xray = true,
            brightness = 1.2,
	        special = true,
	        popups = true,
	        input_methods = true,
        },
    
        shadow = {
            -- customize later, keep def for now!
            enabled = true,
            range = 100,
            color = "rgba(0, 0, 0, 0.3)",
        },

        active_opacity = 0.85,
        inactive_opacity = 0.9,
        fullscreen_opacity = 1,
    },
})
