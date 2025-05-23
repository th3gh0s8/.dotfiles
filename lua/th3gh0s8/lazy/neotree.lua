return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = true,     -- do not load on startup
    cmd = "Neotree", -- allow manual :Neotree usage
    keys = {
        {
            "<leader><Tab>",
            function()
                require("neo-tree.command").execute({ toggle = true })
            end,
            desc = "Toggle Neo-tree",
        },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim",              -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                hijack_netrw_behavior = "disabled", -- <--- This disables auto-opening and netrw hijack
                --[[ visible = true,                     -- Show hidden files by default
                show_hidden_count = true,           -- Show count of hidden files
                hide_dotfiles = false,              -- Do not hide dotfiles (files starting with .)
                hide_gitignored = false,            -- Do not hide gitignored files (optional) ]]

            }
        })
    end
}
