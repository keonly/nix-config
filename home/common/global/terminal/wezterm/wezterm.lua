local triple = wezterm.target_triple
local is_mac = triple:find("darwin", 1, true)

local P = {
	rosewater = "#f5e0dc",
	flamingo = "#f2cdcd",
	pink = "#f5c2e7",
	mauve = "#cba6f7",
	red = "#f38ba8",
	maroon = "#eba0ac",
	peach = "#fab387",
	yellow = "#f9e2af",
	green = "#a6e3a1",
	teal = "#94e2d5",
	sky = "#89dceb",
	sapphire = "#74c7ec",
	blue = "#89b4fa",
	lavender = "#b4befe",
	text = "#f4f4f4",
	subtext1 = "#e0e0e0",
	subtext0 = "#c6c6c6",
	overlay2 = "#a8a8a8",
	overlay1 = "#8d8d8d",
	overlay0 = "#6f6f6f",
	surface2 = "#525252",
	surface1 = "#393939",
	surface0 = "#262626",
	base = "#161616",
	mantle = "#0b0b0b",
	crust = "#000000",
}

local function merge(dst, src)
	for k, v in pairs(src) do
		dst[k] = v
	end
	return dst
end

local carppuccin_mocha = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
merge(carppuccin_mocha, {
	foreground = P.text,
	background = P.base,
	cursor_fg = P.crust,
	selection_fg = P.text,
	selection_bg = P.surface2,
	scrollbar_thumb = P.surface2,
	split = P.overlay0,
	ansi = {
		P.surface1,
		P.red,
		P.green,
		P.yellow,
		P.blue,
		P.pink,
		P.teal,
		P.subtext1,
	},
	brights = {
		P.surface2,
		P.red,
		P.green,
		P.yellow,
		P.blue,
		P.pink,
		P.teal,
		P.subtext0,
	},
	tab_bar = {
		background = P.crust,
		active_tab = { bg_color = P.subtext1, fg_color = P.crust },
		inactive_tab = {
			bg_color = P.mantle,
			fg_color = P.text,
		},
		inactive_tab_hover = {
			bg_color = P.base,
			fg_color = P.text,
		},
		new_tab = { -- + button
			bg_color = P.surface0,
			fg_color = P.text,
		},
		new_tab_hover = {
			bg_color = P.surface0,
			fg_color = P.text,
		},
		inactive_tab_edge = P.surface0,
	},
	visual_bell = P.surface0,
})

return {
	color_schemes = {
		["Carppuccin"] = carppuccin_mocha,
	},
	color_scheme = "Carppuccin",

	front_end = "OpenGL",
	font = wezterm.font({
		family = "Iosevka Nerd Font Mono",
		weight = is_mac and "Medium" or "Regular", -- https://github.com/wezterm/wezterm/issues/3774
	}),
	font_size = 16.0,
	freetype_load_flags = "NO_HINTING",
	freetype_load_target = "Light",
	freetype_render_target = "HorizontalLcd",

	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	tab_bar_at_bottom = true,

	window_decorations = "INTEGRATED_BUTTONS",
	window_padding = {
		top = 32,
	},

	default_prog = is_mac and { "zsh", "--login", "-c", "fish --login --interactive" } or { "fish" },
}
