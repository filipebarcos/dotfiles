-- tab mappings
vim.api.nvim_set_keymap('n', '<leader><CR>', ':tabe<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>[', ':tabp<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>]', ':tabn<CR>', {noremap = true, silent = true})

-- Genera mappings
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader><Space>', ':noh<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>ww', ':%s/\\s\\+$//<CR>:let @/=""<CR><C-o>', {noremap = true, silent = true})

-- Use . in selected visual mode just like in normal mode
vim.api.nvim_set_keymap('v', '.', ':norm.<CR>', {noremap = true})

-- Use Ctrl + hjkl for moving splits
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<C-t>', ':Term<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- Similar, but terminal mode
vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-n><C-h>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-n><C-j>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-n><C-k>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-n><C-l>', {noremap = true, silent = true})

-- Mappings for plugins
-- FZF-lua
vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>lua require('fzf-lua').files()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>fb', "<cmd>lua require('fzf-lua').buffers()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>g', ":Rg <C-r><C-w><CR>", {noremap = true, silent = true})

-- Vim Commentary
vim.api.nvim_set_keymap('v', '\\\\', ':Commentary<CR>', {noremap = false, silent = false})
vim.api.nvim_set_keymap('n', '\\\\', ':Commentary<CR>', {noremap = false, silent = false})

vim.api.nvim_set_keymap('n', ';', ':', {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<leader>ee', ':tabe ~/.config/nvim/init.lua<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>ss', ':source ~/.config/nvim/init.lua<CR>', {noremap = true, silent = true})

-- nvim-tree
vim.api.nvim_set_keymap('n', '<leader>nt', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>nf', ':NvimTreeFindFile<CR>', {noremap = true, silent = true})



