vim.g.mapleader = " "

vim.keymap.set("n", "<leader>wq", ":wq<CR>") -- save and quit
vim.keymap.set("n", "<leader>qq", ":q!<CR>") -- quit without saving
vim.keymap.set("n", "<leader>ww", ":w<CR>") -- save
vim.keymap.set("n", "gx", ":!open <c-r><c-a><CR>") -- open URL under cursor

-- Tab management
vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close a tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab

-- Navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>')

-- Splits
vim.keymap.set('n', '|', ':vsplit<CR>')
vim.keymap.set('n', '\\', ':split<CR>')

