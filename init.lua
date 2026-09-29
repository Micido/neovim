
require("plugins.init")

-- Scrolloff
local scrolloff = math.floor(vim.o.lines / 2) - 3
vim.opt.scrolloff = scrolloff

-- Line numbers
vim.opt.cursorline = true
vim.wo.relativenumber = true
vim.wo.number = true

-- Tabs
local width = 2
vim.opt.expandtab = false
vim.opt.tabstop = width
vim.opt.softtabstop = width
vim.opt.shiftwidth = 0

-- Indent
vim.opt.autoindent = true

-- Highlighting
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true

-- Exrc
vim.o.exrc = true

-- Other
vim.opt.wrap = false
vim.o.ignorecase = true
vim.o.smartcase = true
