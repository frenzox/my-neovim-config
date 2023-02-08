-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.backspace = "indent,eol,start"
vim.o.backup = true
vim.o.backupdir = "~/.backup//,/tmp//"
vim.o.clipboard = "unnamedplus"
vim.o.completeopt = "menu,menuone,noselect"
vim.o.cursorline = true
vim.o.directory = "~/.swp//,/tmp//"
vim.o.expandtab = true
vim.o.hidden = true
vim.o.history = 50
vim.o.ignorecase = false
vim.o.incsearch = true
vim.o.list = false
vim.o.listchars = "space:_,tab:>~"
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 8
vim.o.shiftwidth = 4
vim.o.showcmd = true
vim.o.smartindent = true
vim.o.softtabstop = 4
vim.o.tabstop = 4
vim.o.termguicolors = true
vim.o.undodir = "~/.undo//,/tmp//"
vim.o.undofile = true

vim.wo.foldenable = false
vim.wo.foldmethod = "indent"

vim.g.VM_leader = "\\"
vim.g.dracula_bold = 1
vim.g.dracula_italic = 1
vim.g.mapleader = "\\"
vim.g.rustfmt_autosave = 1

vim.opt.conceallevel = 2
vim.opt.concealcursor = "nc"

vim.cmd("set formatoptions-=l")
vim.cmd("set mouse=a")
