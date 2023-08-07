return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.install").update({ with_sync = true })
		local treesitter = require("nvim-treesitter")

		-- configure treesitter
		treesitter.setup({
			-- enable syntax highlighting
			highlight = {
				enable = true,
			},
			-- enable indentation
			indent = { enable = true },
			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = { enable = true },
			-- ensure these language parsers are installed
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"html.erb",
				"css",
				"markdown",
				"markdown_inline",
				"python",
				"regex",
				"ruby",
				"scss",
				"sql",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"yaml",
			},
			-- auto install above language parsers
			auto_install = true,
		})
	end,
}
