local setup, leap = pcall(require, "leap")

if not setup then
	return
end

leap.setup({})
leap.add_default_mappings()
