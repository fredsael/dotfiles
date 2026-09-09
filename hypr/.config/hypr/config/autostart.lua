-- Auto-start config
-- if you dont use UWSM add your auto start programs here, otherwise use XDG autostart https://wiki.archlinux.org/title/XDG_Autostart

hl.on("hyprland.start", function()
	hl.exec_cmd("dbus-update-activation-environment --systemd --all")
	hl.exec_cmd("noctalia")
	hl.exec_cmd("xhost +SI:localuser:root")
	-- hl.exec_cmd("hyprctl dispatch exec [workspace:2 silent] ghostty")
	-- hl.exec_cmd("hyprctl dispatch exec [workspace:3 silent] obsidian")
	-- hl.exec_cmd("firefox")
	-- hl.exec_cmd("ghostty")
	-- hl.exec_cmd("obsidian")
	hl.exec_cmd("firefox", { workspace = "1 silent" })
	hl.exec_cmd("ghostty", { workspace = "2 silent" })
	hl.exec_cmd("obsidian", { workspace = "3 silent" })

	-- hl.exec-once = hyprctl dispatch exec [workspace:4 silent] protonvpn-app

	-- hl.exec_cmd("windowrulev2 = workspace 1, class:^(firefox)$")
	-- hl.exec_cmd("windowrulev2 = workspace 2, class:^(ghostty)$")
	-- hl.exec_cmd("windowrulev2 = workspace 3, class:^(obsidian)$")
end)
