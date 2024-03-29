local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentatioon
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- share clipboard with os
opt.clipboard = "unnamed"

-- fold column width
opt.foldcolumn = "auto:9"
