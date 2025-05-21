return {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false, -- 🔥 This disables Neo-tree entirely
    branch = "v3.x",
    lazy = true,     -- do not load on startup
    cmd = "Neotree", -- allow manual :Neotree usage
    keys = {
        {
            "<leader><Tab>",
            function()
                -- this loads the plugin and toggles the file tree
                require("neo-tree.command").execute({ toggle = true })
            end,
            desc = "Toggle Neo-tree",
        },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        -- vim.api.nvim_set_keymap('n', '<leader><Tab>', ':Neotree toggle<CR>', { noremap = true, silent = true })

        require("neo-tree").setup({})
    end
}
