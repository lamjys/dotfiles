local keymap    = vim.api.nvim_set_keymap
local opts      = { noremap = true, silent = true }
local term_opts = { noremap = true, silent = true }

keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)
keymap('i', 'jk',        '<esc>',               opts)
keymap('i', 'kj',        '<esc>',               opts)
-- map to vim-unimpaired to exchange lines
keymap('n', '<A-up>',    '[e',     {noremap = false})
keymap('n', '<A-Down>',  ']e',     {noremap = false})
