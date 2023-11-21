require('ayu').colorscheme()
vim.opt.background = 'light'
vim.opt.termguicolors = true
vim.opt.compatible = false
vim.opt.cursorline = true   -- highlight current line

vim.g.CSApprox_verbose_level = 0

-- Wrap gitcommit file types at the appropriate length
vim.cmd('filetype plugin indent on') -- Required

-- I look good!
vim.cmd('syntax enable')
