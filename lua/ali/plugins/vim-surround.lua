local setup, vs = pcall(require, "vim-surround")

if not setup then
	return
end

vs.setup()
