vim.g.gitblame_display_virtual_text = 0 -- Disable virtual text
local git_blame = require("gitblame")

require("lualine").setup({
	sections = {
		lualine_c = {
			{ git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available },
		},
	},
})
