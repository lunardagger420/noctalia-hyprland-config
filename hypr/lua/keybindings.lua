----------------------
---- KEYBINDINGS -----
----------------------

local programs = require("lua/programs")
local mainMod = "SUPER"

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(programs.terminal))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd(programs.terminal))
local closeWindowBind = hl.bind(mainMod .. " + W", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. "+ Q", hl.dsp.exec_cmd(programs.browser))
hl.bind(mainMod .. "+ E", hl.dsp.exec_cmd(programs.fileManager))
hl.bind(mainMod .. "+ T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. "+ R", hl.dsp.exec_cmd(programs.menu))
hl.bind(mainMod .. "+ P", hl.dsp.window.pseudo())
hl.bind(mainMod .. "+ J", hl.dsp.layout("togglesplit")) -- dwindle only
hl.bind(mainMod .. "+ TAB", function()
    hl.plugin.scrolloverview.overview("toggle all")
end)

--------------------
--- MOVE WINDOWS ---
--------------------

hl.bind(mainMod .. "+ SHIFT + Left", hl.dsp.layout("swapcol l"))
hl.bind(mainMod .. "+ SHIFT + Right", hl.dsp.layout("swapcol r"))
hl.bind(mainMod .. "+ SHIFT + A", hl.dsp.layout("swapcol l"))
hl.bind(mainMod .. "+ SHIFT + D", hl.dsp.layout("swapcol r"))


----------------------------
--- NOCTALIA KEYBINDINGS ---
----------------------------

local ipc = "noctalia msg "

hl.bind(mainMod .. "+ SUPER_L", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind(mainMod .. "+ Z", hl.dsp.exec_cmd(ipc .. "panel-toggle control-center"))
hl.bind(mainMod .. "+ I", hl.dsp.exec_cmd(ipc .. "settings-toggle"))
hl.bind("ALT + Tab", hl.dsp.exec_cmd(ipc .. "window-switcher"))
hl.bind("CTRL + ALT + Delete", hl.dsp.exec_cmd(ipc .. "panel-toggle session"))
hl.bind(mainMod .. "+ Y", hl.dsp.exec_cmd(ipc .. "panel-toggle wallpaper"))
hl.bind(mainMod .. "+ L", hl.dsp.exec_cmd(ipc .. "session lock"))
hl.bind(mainMod .. "+ N", hl.dsp.exec_cmd(ipc .. "panel-toggle control-center notifications"))
hl.bind("CTRL + SHIFT + Escape", hl.dsp.exec_cmd(ipc .. "panel-toggle control-center system"))
hl.bind(mainMod .. "+ SHIFT + W", hl.dsp.exec_cmd(ipc .. "panel-toggle control-center network"))
hl.bind(mainMod .. "+ SHIFT + B", hl.dsp.exec_cmd(ipc .. "panel-toggle control-center bluetooth"))
hl.bind(mainMod .. "+ V", hl.dsp.exec_cmd(ipc .. "panel-toggle clipboard"))

---------------------
--- FOCUS WINDOWS ---
---------------------

hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + A",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + D", hl.dsp.focus({ direction = "right" }))


-----------------------
--- LAPTOP KEYBINDS ---
-----------------------

-- VOLUME, MIC AND BRIGHTNESS
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                 { locked = true, repeating = true })

-- MEDIA
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

---------------------------
--- WORKSPACES KEYBINDS ---
---------------------------

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
