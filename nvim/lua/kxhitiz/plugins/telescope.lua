return {
  -- fuzzy finding
  { "nvim-telescope/telescope-live-grep-args.nvim" },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" },
    requires = {
      { "nvim-telescope/telescope-live-grep-args.nvim" },
    },
    config = function()
      -- configure telescope
      require("telescope").load_extension("live_grep_args")
      local actions = require("telescope.actions")
      local telescope = require("telescope")
      telescope.setup({
        -- configure custom mappings
        defaults = {
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous, -- move to prev result
              ["<C-j>"] = actions.move_selection_next, -- move to next result
            },
          },
          file_ignore_patterns = {
            "node_modules/.*",
            "vendors/.*",
          },
        },
      })
    end,
  },
}
