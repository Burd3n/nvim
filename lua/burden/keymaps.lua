vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.guicursor = ""
vim.opt.autoread = true
vim.opt.scrolloff = 10
vim.opt.updatetime = 50

-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd [[ set termguicolors ]]

-- Line numbers
vim.wo.number = true
vim.opt.relativenumber = true

-- search highlight config
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- hide swap files to another folder
vim.cmd [[ set backupdir=~/.vim/backup ]]
vim.cmd [[ set directory=~/.vim/swap ]]
vim.cmd [[ set undodir=~/.vim/undo ]]
