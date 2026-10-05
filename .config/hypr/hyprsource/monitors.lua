--[[
    __  ___ ____   _   __ ____ ______ ____   ____  _____
   /  |/  // __ \ / | / //  _//_  __// __ \ / __ \/ ___/
  / /|_/ // / / //  |/ / / /   / /  / / / // /_/ /\__ \ 
 / /  / // /_/ // /|  /_/ /   / /  / /_/ // _, _/___/ / 
/_/  /_/ \____//_/ |_//___/  /_/   \____//_/ |_|/____/  
                                                        
--]]



-- ACER 14.1 IPS Panel (laptop_screen)
hl.monitor({
    output    = "eDP-1",
    disabled  = true,
    mode      = "highres",
    position  = "auto",
    scale     = "1.15",
    transform = 0,
    bitdepth  = 10,
    cm        = "srgb",
})

-- ACER 24 IPS Monitor (ext_monitor)
-- WARN: Bit-depth doesn't works on external monitors (HDMI-A-1) for some reason
hl.monitor({
    output    = "HDMI-A-1",
    -- mirror    = "eDP-1", -- use when the bigger desk is ready for dual-monitor setup
    disabled  = false,
    mode      = "highres",
    position  = "auto",
    scale     = "1.0",
    transform = 0,
    bitdepth  = 10,
    cm        = "srgb",
})


--  ┓ ┏┏┓┳┓┓┏┓┏┓┏┓┏┓┏┓┏┓┏┓
--  ┃┃┃┃┃┣┫┃┫ ┗┓┃┃┣┫┃ ┣ ┗┓
--  ┗┻┛┗┛┛┗┛┗┛┗┛┣┛┛┗┗┛┗┛┗┛
--  INFO: Assigning monitors to respective workspaces
hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "2", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1" })

hl.workspace_rule({ workspace = "4", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "5", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "6", monitor = "eDP-1" })

hl.workspace_rule({ workspace = "7", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "8", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "9", monitor = "eDP-1" })

hl.workspace_rule({ workspace = "special:magic", monitor = "eDP-1", no_rounding = true })
