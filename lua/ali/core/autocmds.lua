-- load and save views to preserve folds
vim.cmd("autocmd BufWrite * mkview")
vim.cmd("autocmd BufRead * silent! loadview")

-- highlight yanked text
vim.cmd([[ 
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}
augroup end
]])
