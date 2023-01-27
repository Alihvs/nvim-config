local setup, ibl = pcall(require, "indent_blankline")

if not setup then
	return
end

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")

ibl.setup({
	space_char_blankline = " ",
	show_current_context = true,
})
