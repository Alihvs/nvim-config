local setup, bb = pcall(require, "bufferline")

if not setup then
	return
end

bb.setup({
	auto_hide = true,
})
