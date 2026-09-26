-------------------------------------------------
---                                           ---
--- LUNAR'S ARCH + HYPRLAND + NOCTALIA CONFIG ---
---                                           ---
-------------------------------------------------

require("lua/animations")            -- ANIMATIONS
require("lua/autostart")             -- AUTOSTART
require("lua/env")                   -- ENV
require("lua/inputs")                -- INPUTS (KEYBOARD AND MOUSE)
require("lua/keybindings")           -- KEYBINDINGS
require("lua/layouts")               -- LAYOUTS (TILING LAYOUTS)
require("lua/looks")                 -- LOOKS
require("lua/misc")                  -- MISCELLANEOUS
require("lua/monitors")              -- MONITORS
require("lua/programs")              -- DEFAULT PROGRAMS
require("lua/plugins")               -- PLUGINS
require("lua/windows")               -- WINDOWS
require("lua/workspaces")            -- WORKSPACES


-- For Noctalia Color templates
require("noctalia").apply_theme()

-- HyprMod managed settings
require("hyprland-gui")
