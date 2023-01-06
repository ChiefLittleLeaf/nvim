-- sets gui cursor to be fat while in insert mode
vim.opt.guicursor = ""

-- line number and relativenumber
vim.opt.nu = true
vim.opt.relativenumber = true

-- tab intentation settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

-- undo file settings
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- highlight search settings and incsearch settings
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- this sets the scroll off at the bottom to be at least 8 from the cursor while there is still scrolling left in the file
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "
