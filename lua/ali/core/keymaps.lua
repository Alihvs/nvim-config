vim.g.mapleader = " "

local keymap = vim.keymap

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- move lines of code in visual mode up and down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep the cursor at the middle of screen when jumping half page up or down
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- keep search terms in the middle
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- don't copy lines when deleting with DD
keymap.set("n", "DD", '"_dd"')

-- When pasting in visual mode, don't copy the text that the paste happened on
keymap.set("v", "p", '"_dp')
keymap.set("v", "P", '"_dP')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- saving and restoring folds
keymap.set("n", "<leader>vs", "<cmd>mkview<CR>")
keymap.set("n", "<leader>vl", "<cmd>loadview<CR>")

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leder>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- focus file explorer

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>fd", "<cmd>Telescope current_buffer_fuzzy_find fuzzy=false case_mode=ignore_case<cr>") -- fuzzy find in current buffer

-- DiffView
keymap.set("n", "<leader>gg", ":DiffviewOpen<CR>")
keymap.set("n", "<leader>gc", ":DiffviewClose<CR>")

-- Harpoon
keymap.set("n", "<leader>hh", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
keymap.set("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>")
keymap.set("n", "<C-n>", ":lua require('harpoon.ui').nav_next()<CR>")
keymap.set("n", "<C-p>", ":lua require('harpoon.ui').nav_prev()<CR>")
keymap.set("n", "<leader>1", ":lua require('harpoon.ui').nav_file(1)<CR>")
keymap.set("n", "<leader>2", ":lua require('harpoon.ui').nav_file(2)<CR>")
keymap.set("n", "<leader>3", ":lua require('harpoon.ui').nav_file(3)<CR>")

-- dap
keymap.set("n", "<F5>", ":lua require('dap').continue()<CR>")
keymap.set("n", "<F6>", ":lua require('dap').step_into()<CR>")
keymap.set("n", "<F7>", ":lua require('dap').step_over()<CR>")
keymap.set("n", "<F8>", ":lua require('dap').step_out()<CR>")
keymap.set("n", "<leader>b", ":lua require('dap').toggle_breakpoint()<CR>")
keymap.set("n", "<leader>B", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>")
keymap.set("n", "<leader>dt", ":lua require('dap-go').debug_test()<CR>")

-- toggleterm
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=float<CR>")
keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=60 direction=vertical<CR>")
keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=20 direction=horizontal<CR>")
function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	-- keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	keymap.set("t", "<esc>", "<cmd>ToggleTerm<CR>", opts)
	keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
end
vim.cmd("autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()")
