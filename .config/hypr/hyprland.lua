-- Config Root for Hyprland (Main Branch)
-- Source config files are stored in ~/.config/hypr/hyprsource/...
require("~/.cache/wal/colors-hyprland.lua")

require("hyprsource.animations") -- DONE
require("hyprsource.autostart") -- DONE
require("hyprsource.binds") -- DONE
require("hyprsource.defaults") -- DONE
require("hyprsource.lappy") -- DONE
require("hyprsource.monitors") -- DONE
-- require("hyprsource.plugins")
require("hyprsource.uix") -- DONE
require("hyprsource.variables") -- DONE
require("hyprsource.windows") -- DONE


---- Notes below (Things to implement)
-- [DONE] Add a switch for light-dark mode (made a script)
-- [DONE] Check for bugs caused due to inconsistent configuration
-- [DONE] Add seperate configuration for laptops
-- [DONE] Implement Special Workspace to mimic minimise fnctionality
-- [DONE] Add ALT-TAB functionality
-- [DONE] Transformed the config to lua
-- [PENDING] Fix and implement the plugin system (currently not working)
