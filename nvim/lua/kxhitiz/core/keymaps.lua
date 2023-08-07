local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader><BS>", ":nohl<CR>")

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
function copy_file_path_to_clipboard()
	local file_path = vim.fn.expand("%:p")
	vim.fn.setreg("*", file_path)
	print("File path copied to clipboard: " .. file_path)
end

-- Create the mapping to trigger the function
vim.api.nvim_set_keymap("n", "<Leader>yf", ":lua copy_file_path_to_clipboard()<CR>", { noremap = true, silent = true })

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader><leader>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- lazy
keymap.set("n", "<leader>z", ":Lazy<CR>")
