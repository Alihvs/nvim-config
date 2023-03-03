local setup, dg = pcall(require, "dap-go")
if not setup then
	return
end

dg.setup({
	-- Additional dap configurations can be added.
	-- dap_configurations accepts a list of tables where each entry
	-- represents a dap configuration. For more details do:
	-- :help dap-configuration
	{
		dap_configurations = {
			-- must be "go" or it will be ignored by the plugin
			type = "go",
			name = "attach remote",
			mode = "remote",
			request = "attach",
		},
	},
	-- delve configurations
	delve = {
		-- time to wait for delve to initialize the debug session.
		-- default to 20 seconds
		initialize_timeout_sec = 20,
		-- default to string "${port}" which instructs nvim-dap
		-- a string that defines the port to start delve debugger.
		-- to start the process in a random available port
		port = "${port}",
	},
})
