local setup, pn = pcall(require, "project_nvim")

if not setup then
	return
end

pn.setup()
