local setup, startify = pcall(require, "startify")

if not setup then
	return
end

startify.setup()
