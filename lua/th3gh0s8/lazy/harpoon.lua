return {
    "ThePrimeagen/harpoon",
    config = function()
        local harpoon = require("harpoon")
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        harpoon.setup()

        vim.keymap.set("n", "<leader>a", mark.add_file)        -- Add current file to harpoon
        vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)     -- Open harpoon menu

        -- Navigate to specific harpoon files
        vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)


        -- Replace marks at specific positions
        vim.keymap.set("n", "<leader><C-h>", function() mark.set_index(1) end)
        vim.keymap.set("n", "<leader><C-t>", function() mark.set_index(2) end)
        vim.keymap.set("n", "<leader><C-n>", function() mark.set_index(3) end)
        vim.keymap.set("n", "<leader><C-s>", function() mark.set_index(4) end)
    end
}
