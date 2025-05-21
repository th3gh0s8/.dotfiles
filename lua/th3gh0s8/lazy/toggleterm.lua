return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup{
        size = 10,
        open_mapping = [[<leader>`]],      -- Keybinding to toggle terminal
        shade_terminals = true,
        direction = "horizontal",      -- Split direction (horizontal, vertical, or float)
        close_on_exit = true,
        shell = vim.o.shell,
      }
    end
}
