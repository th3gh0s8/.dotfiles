  return{
    "ThePrimeagen/refactoring.nvim",
      config = function()
        require('refactoring').setup({})
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    lazy = false,
    opts = {},
  }
