vim.o.backspace = 'indent,eol,start'
vim.o.backup = true
vim.o.backupdir = '~/.backup//,/tmp//'
vim.o.clipboard = 'unnamedplus'
vim.o.completeopt = 'menu,menuone,noselect'
vim.o.cursorline = true
vim.o.directory = '~/.swp//,/tmp//'
vim.o.expandtab = true
vim.o.hidden = true
vim.o.history = 50
vim.o.ignorecase = false
vim.o.incsearch = true
vim.o.listchars = 'space:_,tab:>~'
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 8
vim.o.shiftwidth = 4
vim.o.showcmd = true
vim.o.smartindent = true
vim.o.softtabstop = 4
vim.o.tabstop = 4
vim.o.termguicolors = true
vim.o.undodir = '~/.undo//,/tmp//'
vim.o.undofile = true

vim.wo.foldenable = false
vim.wo.foldmethod = 'indent'

vim.g.VM_leader = "\\"
vim.g.dracula_bold = 1
vim.g.dracula_italic = 0
vim.g.rustfmt_autosave = 1

vim.opt.conceallevel = 2
vim.opt.concealcursor = 'nc'

vim.cmd('colorscheme dracula')
vim.cmd('filetype plugin indent on')
vim.cmd('set formatoptions-=l')
vim.cmd('set mouse=a')
