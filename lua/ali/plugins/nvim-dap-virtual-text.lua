local setup, ndvt = pcall(require, "nvim-dap-virtual-text")
if not setup then
	return
end

ndvt.setup()
