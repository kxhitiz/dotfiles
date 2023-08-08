return {
  "folke/neodev.nvim",
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  { "christoomey/vim-tmux-navigator" }, -- tmux & split window navigation
  { "szw/vim-maximizer" }, -- maximizes and restores current window

  -- essential plugins
  { "tpope/vim-surround" },

  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      -- disable netrw at the very start of your init.lua
      vim.g.loaded = 1
      vim.g.loaded_netrwPlugin = 1

      -- set termguicolors to enable highlight groups
      vim.opt.termguicolors = true

      require("nvim-tree").setup()
    end,
  },

  { "nvim-tree/nvim-web-devicons" },

  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

  { "tpope/vim-rails" },

  { "github/copilot.vim" },
}
