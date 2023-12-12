-- Autocommands and commands
vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  group = 'YankHighlight',
  callback = function()
    vim.highlight.on_yank({ higroup = 'IncSearch', timeout = '1000' })
  end
})

-- Strip trailing whitespace on save
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '',
  callback = function()
    -- Preparation: save last search, and cursor position.
    local _s = vim.fn.getreg('/')
    local l = vim.fn.line('.')
    local c = vim.fn.col('.')

    -- Do the business:
    vim.cmd('%s/\\s\\+$//e')

    -- Clean up: restore previous search history, and cursor position
    vim.fn.setreg('/', _s)
    vim.fn.cursor(l, c)
  end
})

-- Highlight trailing whitespace
vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = '*',
  callback = function()
    vim.cmd("highlight ExtraWhitespace ctermbg=red guibg=red")
  end
})

vim.api.nvim_create_autocmd('VimResized', {
  pattern = '*',
  callback = function()
    vim.cmd("wincmd =")
  end
})

-- Remove 'c', 'r', and 'o' from formatoptions for all filetypes
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    vim.cmd("setlocal formatoptions-=c formatoptions-=r formatoptions-=o")
  end
})

-- SQL
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*.sql',
  callback = function()
    vim.cmd("set filetype=sql shiftwidth=4 softtabstop=4 tabstop=4")
  end
})

-- TypeScript
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*.ts,*.d.ts',
  callback = function()
    vim.cmd("set filetype=typescript shiftwidth=2 softtabstop=2 tabstop=2")
  end
})

-- Set up highlight group & retain through colorscheme changes
vim.cmd("highlight ExtraWhitespace ctermbg=red guibg=red")
vim.cmd("match ExtraWhitespace /\\s\\+$/")

-- Copy path to Clipboard
vim.cmd([[command! CopyPath let @*=expand('%')]])
vim.api.nvim_set_keymap('n', '<leader>cp', ':CopyPath<CR>', {noremap = true, silent = true})

-- Make Ctags
vim.cmd([[command! MakeTags !ctags -R --exclude=.git --exclude=node_modules --exclude=test --exclude=log --exclude=vendor .]])

-- Delete specific line number
vim.cmd([[command! -range -nargs=0 Delete <line1>,<line2>d|norm ``]])

-- Split single line in multiple after comma ,
vim.cmd([[command! NewLineAfterComma %s/,/,\r/g]])

-- Join multi-lines in a single comman separated
vim.cmd([[command! CommaInsteadOfNewLine %s/\n/, /g]])

vim.cmd("cabbrev W w")
vim.cmd("cabbrev Q q")
vim.cmd("cabbrev Wq wq")
vim.cmd("cabbrev WQ wq")
vim.cmd("cabbrev RG Rg")
vim.cmd("cabbrev rg Rg")
