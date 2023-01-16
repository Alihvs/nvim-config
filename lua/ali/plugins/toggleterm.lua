local setup, tt = pcall(require, "toggleterm")

if not setup then
	return
end

tt.setup()
