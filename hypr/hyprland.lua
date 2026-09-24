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
require("lua/noctalia/colour")       -- NOCTALIA'S COLOUR TEMPLATE
require("lua/permissions")           -- PERMISSIONS (CURRENTLY DISABLED)
require("lua/programs")              -- DEFAULT PROGRAMS
require("lua/scroll-overview")   -- SCROLL OVERVIEW
require("lua/windows")               -- WINDOWS
require("lua/workspaces")            -- WORKSPACES

-- For Noctalia Color templates
require("noctalia").apply_theme()
