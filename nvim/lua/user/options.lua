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
vim.opt.textwidth = 79

-- User interface
vim.opt.wrap = true
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
