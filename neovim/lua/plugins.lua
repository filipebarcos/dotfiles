-- disable netrw at the very start for nvim-tree.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'Shatur/neovim-ayu',
  'ibhagwan/fzf-lua',
  'universal-ctags/ctags',
  'tpope/vim-commentary',
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  'tpope/vim-surround',
  'tpope/vim-rails',
  'vim-ruby/vim-ruby',
  'tpope/vim-endwise',
  'janko-m/vim-test',
  'Townk/vim-autoclose',
  'nvim-lualine/lualine.nvim',
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
  },
  'github/copilot.vim',
})

-- '~/.vim/plugged/dracula_pro', { as = 'dracula_pro' })

-- lualine
require('lualine').setup({
  options = {
    theme = 'auto',
    component_separators = '',
    section_separators = '',
    disabled_filetypes = {
      statusline = { 'NvimTree' },
    }
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { '' },
    lualine_c = { {'filename', path = 1} },
    lualine_x = { 'searchcount', 'encoding' },
    lualine_y = { 'filetype' },
    lualine_z = { 'location' },
  },
})

require('fzf-lua').setup({
  'fzf-vim',
  fzf_opts = {
    ['--layout'] = 'reverse-list'
  },
})

require('nvim-tree').setup({
  sort = {
    sorter = 'case_sensitive',
  },
  hijack_unnamed_buffer_when_opening = true,
  renderer = {
    add_trailing = true,
    group_empty = true,
    icons = {
      show = {
        git = true,
        file = false,
        folder = false,
        folder_arrow = true,
      },
      glyphs = {
        folder = {
          arrow_closed = "⏵",
          arrow_open = "⏷",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "⌥",
          renamed = "➜",
          untracked = "★",
          deleted = "⊖",
          ignored = "◌",
        },
      },
    },
  },
  filters = {
    dotfiles = true,
  },
  actions = {
    open_file = {
      resize_window = true,
    },
  },
})
