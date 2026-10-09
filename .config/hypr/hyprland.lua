-- Organization
require("hyprbinds")
require("hyprstart")

-- Monitors
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = "auto" })

-- Environment Variables
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Permissions

-- Look/Feel
hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 3,
        col = {
            active_border = {
                colors = {
                    "rgb(c6a0f6)", "rgb(ed8796)", "rgb(ee99a0)", "rgb(f5a97f)",
                    "rgb(eed49f)", "rgb(a6da95)", "rgb(8bd5ca)", "rgb(91d7e3)",
                    "rgb(8aadf4)", "rgb(f0c6c6)",
                },
                angle = 6,
            },
            inactive_border = {
                colors = { "rgb(EC915A)", "rgb(3577D6)" },
                angle = 45,
            },
        },
        resize_on_border = true,
        layout = "dwindle",
    },
})

hl.config({
    decoration = {
        rounding = 10,
        rounding_power = 2,

        active_opacity = 1.0,
        inactive_opacity = 0.90,

        shadow = {
            enabled = false,
            range = 7,
            render_power = 1,
            color = "rgba(2a7a9aee)",
        },

        blur = {
            enabled = true,
            size = 5,
            passes = 1,
            vibrancy = 0.1696,
        },
    },
})

-- Animations
hl.config({
    animations = { enabled = true },
})

hl.curve("myBezier", { type = "bezier", points = { {0.05, 0.9},  {0.1, 1.05} } })
hl.curve("spaces",   { type = "bezier", points = { {0.45, -0.5}, {0.265, 1.35} } })
hl.curve("resize",   { type = "bezier", points = { {0.5, -0.9},  {0.43, 1.23} } })
hl.curve("inmove",   { type = "bezier", points = { {0.07, 0.9},  {0.3, 1.26} } })

hl.animation({ leaf = "windows",    enabled = true, speed = 3,   bezier = "inmove", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 100, bezier = "inmove", style = "slide" })
hl.animation({ leaf = "border",     enabled = true, speed = 12,  bezier = "default" })
hl.animation({ leaf = "fade",       enabled = true, speed = 7,   bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4,   bezier = "spaces", style = "slidevert" })

-- Layouts
hl.config({
    dwindle = {
        -- pseudotile = true,
        preserve_split = true,
    },
    master = {
        new_status = "master",
    },
    misc = {
        disable_splash_rendering = true,
    },
})

-- Input
hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",

        accel_profile = "flat",
        follow_mouse = 1,
        mouse_refocus = false,
        force_no_accel = true,
        -- allow_mouse_while_typing = true,

        sensitivity = 0,

        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})

-- Windows, Workspaces
