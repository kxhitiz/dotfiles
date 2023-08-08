local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<BS>", ":nohl<CR>")

keymap.set("n", "x", '"_x') -- don't copy deleted character via x on register

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- make split windows equal width

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>l", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>h", ":tabp<CR>") -- go to previous tab

-- Define the function to copy the current file path to the clipboard
function CopyFilePathToClipboard()
  local file_path = vim.fn.expand("%:p")
  vim.fn.setreg("*", file_path)
  print("File path copied to clipboard: " .. file_path)
end

-- Create the mapping to trigger the function
vim.api.nvim_set_keymap("n", "<Leader>yf", ":lua CopyFilePathToClipboard()<CR>", { noremap = true, silent = true })

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader><leader>", builtin.find_files, {})
keymap.set("n", "<leader>fg", builtin.live_grep, {})
keymap.set("n", "<leader>/", builtin.live_grep, {})
keymap.set("n", "<leader>fb", builtin.buffers, {})
keymap.set("n", "<leader>fh", builtin.help_tags, {})
keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "[fo] Find old files" })
keymap.set("n", "<leader>k", ":Telescope keymaps<CR>", { desc = "[k] Show all the keymaps" })

-- lazy
keymap.set("n", "<leader>z", ":Lazy<CR>")

-- mason
keymap.set("n", "<leader>m", ":Mason<CR>")
