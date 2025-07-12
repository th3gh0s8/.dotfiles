return {
    "nvim-telescope/telescope.nvim",
    version = '0.1.8',
    dependencies = {
        "nvim-lua/plenary.nvim",
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        "nvim-tree/nvim-web-devicons",
        "folke/todo-comments.nvim",
        "folke/which-key.nvim", -- Make sure which-key is installed
    },
    extensions = {
        fzf = {}
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next,     -- move to next result
                        -- ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
            },
        })
        -- Load extensions safely
        pcall(telescope.load_extension, "fzf")
        pcall(telescope.load_extension, "todo-comments")

        local builtin = require('telescope.builtin')
        -- local wk = require("which-key")

        -- Telescope keymaps with which-key descriptions
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find Help!" })
        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "Find Files" })
        vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Find Git Files" })
        vim.keymap.set('n', '<leader>pws', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end, { desc = "Grep String under Cursor Word" })
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end, { desc = "Grep String under Cursor WORD" })
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end, { desc = "Grep String" })
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, { desc = "Help Tags" })
        vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find Todos" })

        vim.keymap.set("n", "<leader>ed", function()
            builtin.find_files {
                cwd = vim.fn.stdpath("config")
            }
        end, { desc = "Find files in Neovim config" })
        -- Register which-key groups for <leader>p and <leader>f
        --[[ wk.register({
            p = {
                name = "Telescope", -- Group name for <leader>p
                f = "Find Files",
                w = {
                    name = "Grep Word",
                    s = "Grep under cursor (word)",
                    W = "Grep under cursor (WORD)"
                },
                s = "Grep String",
            },
            f = {
                name = "Find",
                t = "Find Todos"
            },
            v = {
                h = "Help Tags"
            }
        }, { prefix = "<leader>" }) ]]

        require "config.telescope.multigrep".setup()
    end
}
