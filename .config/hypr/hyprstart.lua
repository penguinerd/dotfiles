hl.on("hyprland.start", function()
    hl.exec_cmd("dunst")
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("copyq")

    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets") -- git
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1") -- vpn? idk

    -- rice
    hl.exec_cmd("waybar")

    -- hypr ecosystem
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hyprsunset")
    hl.exec_cmd("hypridle")
end)
