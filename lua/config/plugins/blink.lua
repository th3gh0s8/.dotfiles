return {
    "saghen/blink.cmp",
    build = "cargo build --release", -- builds the Rust native extension
    version = "*",                   -- you can pin to "1.*" for stability if you want
    opts = {
        fuzzy = {
            implementation = "prefer_rust_with_warning", -- use Rust if available, fallback to Lua with warning
            -- Optionally, force a prebuilt version if you can't build:
            -- prebuilt_binaries = { force_version = "1.0.0" },
        },

        -- You can add more options here if needed
        keymap = { preset = 'default' },

        appearance = {
            -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
            -- Adjusts spacing to ensure icons are aligned
            use_nvim_cmp_as_default = false, -- disables nvim-cmp emulation mode
            nerd_font_variant = 'mono'
        },
        signature = { enabled = true }
    },
    -- Optionally, dependencies if you use cmp:
    dependencies = {
        "hrsh7th/nvim-cmp",
        'rafamadriz/friendly-snippets',
    },
}

--[[ return {
    {
        "saghen/blink.cmp",
        build = "cargo build --release",
        opts = {
            -- fuzzy = { implementation = "lua" }
            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
    },
} ]]
