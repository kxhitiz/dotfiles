local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.softtabstop = 2

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "light"
opt.signcolumn = "yes"

-- Set colorcolumn to highlight column 80 and use a specific color
vim.cmd("set colorcolumn=120")
vim.cmd("highlight ColorColumn ctermbg=235 guibg=#5a5a5a")

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

-- Show trailing whitespace as red squiggly lines
vim.opt.list = true
vim.opt.listchars:append("trail:⋅")
