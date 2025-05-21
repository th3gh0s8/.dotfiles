local local_plugins = {
    {
        "ThePrimeagen/vim-apm",
        config = function()
            -- Uncomment and configure if you want to use vim-apm
            -- local apm = require("vim-apm")
            -- apm.setup({})
            -- vim.keymap.set("n", "<leader>apm", function() apm:toggle_monitor() end)
        end
    },
    {
        "ThePrimeagen/vim-with-me",
        config = function()
            -- Additional configurations for vim-with-me can go here
        end
    },
}

return local_plugins
