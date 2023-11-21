vim.opt.showmode = false     -- no show current mode
vim.opt.encoding = 'utf-8'
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.showmatch = true    -- show matching brackets
vim.opt.showcmd = true      -- display incomplete commands
vim.opt.title = true        -- set window title
vim.opt.visualbell = true   -- no beeping
vim.opt.wrap = true         -- wrap lines
vim.opt.ttyfast = true      -- faster redrawing
vim.opt.lazyredraw = true   -- scroll
vim.opt.wildmenu = true     -- show command completion menu
vim.opt.backspace = 'indent,eol,start' -- backspace through everything in insert mode
vim.opt.laststatus = 2      -- always show status line
vim.o.colorcolumn = 120     -- 120 chars line
vim.opt.scrolloff = 3       -- keep 3 lines when scrolling
vim.opt.cmdheight = 1       -- height of command bar
vim.opt.updatetime = 200    -- faster completion
vim.opt.textwidth = 0
vim.opt.smartindent = false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.wildmenu = true
-- vim.opt.wildmode = 'longest,list:longest'
vim.opt.shortmess:append({ c = true })
vim.opt.wildignore = vim.opt.wildignore + '*/tmp/*,*.so,*.swp,*.zip,*node_modules/**,*DS_Store*,*.gem,log/**,tmp/**,*.png,*.jpg,*.heic,*.gif'

-- Folding
vim.opt.foldmethod = 'syntax'
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

vim.opt.clipboard = 'unnamedplus' -- copy paste between vim and everything else

vim.opt.undodir = vim.fn.expand('~/.vim/undo')
vim.opt.undofile = true
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000

-- Italics
-- vim.o.t_ZH = "\e[3m"
-- vim.o.t_ZR = "\e[23m"

-- Disable swap files
vim.opt.swapfile = false
vim.opt.backup = false
vim.o.nowrb = true

vim.opt.autoindent = true
vim.opt.hlsearch = true                -- Highlight matches
vim.opt.hidden = true                  -- Handle multiple buffers better
vim.opt.incsearch = true               -- Highlight matches as you type
vim.opt.writebackup = false            -- Don't write backup file
