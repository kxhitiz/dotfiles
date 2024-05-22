return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    requires = {
      {'neovim/nvim-lspconfig'},
      {'nvim-lua/plenary.nvim'},
    },
    config = function()
      local null_ls = require("null-ls")
      local formatting = null_ls.builtins.formatting
      local diagnostics = null_ls.builtins.diagnostics

      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

      null_ls.setup({
        sources = {
          formatting.prettier,
          formatting.stylua,
          formatting.rubocop,
          diagnostics.eslint_d.with({ -- js/ts linter
            -- only enable eslint if root has .eslintrc.js
            condition = function(utils)
              return utils.root_has_file(".eslintrc.js") -- change file extension if you use something else
            end,
          }),
          -- diagnostics.reek,
          diagnostics.rubocop,
        },

        -- configure format on save
        -- on_attach = function(current_client, bufnr)
        --   if current_client.supports_method("textDocument/formatting") then
        --     vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        --     vim.api.nvim_create_autocmd("BufWritePre", {
        --       group = augroup,
        --       buffer = bufnr,
        --       callback = function()
        --         vim.lsp.buf.format({
        --           filter = function(client)
        --             --  only use null-ls for formatting instead of lsp server
        --             return client.name == "null-ls"
        --           end,
        --           bufnr = bufnr,
        --         })
        --       end,
        --     })
        --   end
        -- end,
      })
    end,
  },
  { "jayp0521/mason-null-ls.nvim" },
}
