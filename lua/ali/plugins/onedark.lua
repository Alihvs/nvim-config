local setup, onedark = pcall(require, "onedarkpro")

if not setup then
	return
end

onedark.setup()
