vim.g.mapleader = " "

-- Сохранение, выход и работа с файлами
vim.keymap.set("n", "<leader>wq", ":wq<CR>") -- сохранить и выйти
vim.keymap.set("n", "<leader>qq", ":q!<CR>") -- выйти без сохранения
vim.keymap.set("n", "<leader>ww", ":w<CR>") -- сохранить
vim.keymap.set("n", "gx", ":!open <c-r><c-a><CR>") -- открыть URL под курсором

-- Управление вкладками
vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- открыть новую вкладку
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- закрыть текущую вкладку
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- следующая вкладка
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- предыдущая вкладка
vim.keymap.set("n", "<leader>tl", ":tablast<CR>") -- последняя вкладка
vim.keymap.set("n", "<leader>tf", ":tabfirst<CR>") -- первая вкладка

-- Переключение между буферами
vim.keymap.set("n", "<leader>bn", ":bnext<CR>") -- следующий буфер
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>") -- предыдущий буфер
vim.keymap.set("n", "<leader>bd", ":bd<CR>") -- закрыть текущий буфер

-- Навигация по окнам
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
vim.keymap.set('n', '<leader>/', ':CommentToggle<CR>')

-- Сплиты
vim.keymap.set('n', '|', ':vsplit<CR>')
vim.keymap.set('n', '\\', ':split<CR>')
