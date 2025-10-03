-- wezterm.lua: Windows-ready config for Neovim & terminal use
local wezterm = require("wezterm")

return {
    -- Font configuration (Nerd Font recommended for icons)
    font = wezterm.font("BigBlueTerm437 Nerd Font Mono"),
    font_size = 12.0,
    harfbuzz_features = { "calt=1", "clig=1", "liga=1" }, -- ligatures

    -- Color scheme
    color_scheme = "Builtin Gruvbox Dark",

    -- Cursor style
    default_cursor_style = "BlinkingBar",
    cursor_blink_rate = 500,

    -- Terminal shell
    default_prog = { "powershell.exe" }, -- Change to {"wsl.exe", "-d", "Ubuntu"} for WSL
    initial_cols = 120,
    initial_rows = 35,

    -- Scrollback
    scrollback_lines = 3500,
    enable_scroll_bar = true,

    -- Tab bar
    enable_tab_bar = true,
    use_fancy_tab_bar = true,
    hide_tab_bar_if_only_one_tab = false,

    -- Mouse and clipboard support
    mouse_bindings = {
        {
            event = { Down = { streak = 1, button = "Right" } },
            mods = "NONE",
            action = wezterm.action.PasteFrom("Clipboard"),
        },
    },

    -- Key bindings for convenience
    keys = {
        { key = "t", mods = "CTRL|SHIFT", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
        { key = "d", mods = "CTRL|SHIFT", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
        { key = "v", mods = "CTRL|SHIFT", action = wezterm.action({ PasteFrom = "Clipboard" }) },
        { key = "c", mods = "CTRL|SHIFT", action = wezterm.action({ CopyTo = "Clipboard" }) },
    },

    -- Window appearance
    window_decorations = "RESIZE",
    window_background_opacity = 0.95,
    text_background_opacity = 1.0,

    -- Dynamic title for tabs
    enable_tab_bar = true,
    tab_bar_at_bottom = false,
    use_fancy_tab_bar = true,
    window_frame = {
        font_size = 10.0,
    },

    -- Enable true color for Neovim
    term = "wezterm",
}
