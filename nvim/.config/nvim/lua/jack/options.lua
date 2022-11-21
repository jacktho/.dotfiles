local opt = vim.opt

-- Disabled for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Appearance
opt.termguicolors = true

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Mouse
opt.mouse = "a"
opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs and Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true
opt.expandtab = true

-- Line wrapping
opt.wrap = false

-- Undo
opt.undofile = true
opt.undodir="/home/jack/.config/nvim/undo"

-- Cursor line
opt.cursorline = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Make dash considered a part of a word
opt.iskeyword:append("-")
