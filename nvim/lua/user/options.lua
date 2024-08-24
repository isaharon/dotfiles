-- Set cursor
vim.opt.guicursor = ""

-- Indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 0 -- follows tabstop
vim.opt.smarttab = true

-- User interface
vim.opt.wrap = false
vim.opt.number = true
vim.opt.visualbell = true
vim.opt.showmatch = true
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"
vim.opt.mouse = "a"

-- Persistent undo across files
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Disable backup, swap
vim.opt.backup = false
vim.opt.swapfile = false

-- Set leader key
vim.g.mapleader = " "

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
