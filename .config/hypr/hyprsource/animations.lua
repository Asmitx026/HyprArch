--[[
    ___     _   __ ____ __  ___ ___   ______ ____ ____   _   __ _____
   /   |   / | / //  _//  |/  //   | /_  __//  _// __ \ / | / // ___/
  / /| |  /  |/ / / / / /|_/ // /| |  / /   / / / / / //  |/ / \__ \ 
 / ___ | / /|  /_/ / / /  / // ___ | / /  _/ / / /_/ // /|  / ___/ / 
/_/  |_|/_/ |_//___//_/  /_//_/  |_|/_/  /___/ \____//_/ |_/ /____/  
                                                                     
--]]



hl.config({
    animations = {
        enabled = true,
        workspace_wraparound = false,
    },
})


--  ┏┓┳┳┳┓┓┏┏┓┏┓
--  ┃ ┃┃┣┫┃┃┣ ┗┓
--  ┗┛┗┛┛┗┗┛┗┛┗┛
hl.curve( "easeOutExpo", { type = "bezier", points = { {0.29, 0.97}, {0.39, 0.7} } } )
hl.curve( "easeOutQuad", { type = "bezier", points = { {0.5, 1}, {0.29, 1.0} } } )
hl.curve( "zoink", { type = "bezier", points = { {0.13, 0.99}, {0.29, 1.1} } } )
hl.curve( "overshot", { type = "bezier", points = { {0.3, 0.9}, {0.1, 1.1} } } ) -- similar to zoink

hl.curve( "rubber", { type = "spring", mass = 1, stiffness = 70, dampening = 10 } )


--  ┏┓┳┓┳┳┳┓┏┓┏┳┓┳┏┓┳┓┏┓
--  ┣┫┃┃┃┃┃┃┣┫ ┃ ┃┃┃┃┃┗┓
--  ┛┗┛┗┻┛ ┗┛┗ ┻ ┻┗┛┛┗┗┛
hl.animation({ leaf = "windowsIn",  enabled = true, speed = 4, bezier = "zoink", style = "slide bottom" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 7, bezier = "zoink", style = "slide" })
hl.animation({ leaf = "windowsMove",  enabled = true, speed = 4, bezier = "zoink" })
hl.animation({ leaf = "layers",  enabled = true, speed = 4, bezier = "easeOutQuad", style = "slide bottom" })

-- hl.animation({ leaf = "fade", enabled = true, speed = 5, beizer = "zoink" })

hl.animation({ leaf = "workspaces",  enabled = true, speed = 4, bezier = "zoink", style = "slidefadevert 35%" })
hl.animation({ leaf = "monitorAdded", enabled = true, speed = 2, bezier = "overshot" })
