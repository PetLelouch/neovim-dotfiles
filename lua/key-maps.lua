-- Common
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', {}) -- создание новой вкладки
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv") -- перемещение выделенных строчек по файлу вниз
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv") -- перемещение выделенных строчек по файлу вверх
vim.keymap.set('n', '<esc>', ":nohlsearch<CR>", { noremap = true, silent = true})

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Neotree
vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal float<CR>', {})

-- MarkdownPreview
vim.keymap.set('n', '<leader>md', ':MarkdownPreview<CR>', {})

-- LSP
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set('n', 'gr', "<cmd>lua require('telescope.builtin').lsp_references()<CR>", {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
