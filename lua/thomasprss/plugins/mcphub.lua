return {
	"ravitemer/mcphub.nvim",
	-- Dependencies for async operations and UI components (adjust as needed)
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- Optional: "nvim-telescope/telescope.nvim" for picker interfaces
	},
	-- Installs the mcp-hub Express server globally via npm
	build = "npm install -g mcp-hub@latest",
	config = function()
		-- Basic setup - detailed configuration below
		require("mcphub").setup({
			port = 3000, -- Port for the mcp-hub Express server
			-- CRITICAL: Must be an absolute path
			config = vim.fn.expand("~/.config/nvim/mcpservers.json"),
			log = {
				level = vim.log.levels.WARN, -- Adjust verbosity (DEBUG, INFO, WARN, ERROR)
				to_file = true, -- Log to ~/.local/state/nvim/mcphub.log
			},
			on_ready = function()
				vim.notify("MCP Hub backend server is initialized and ready.", vim.log.levels.INFO)
			end,
			extensions = {
				mcphub = {
					callback = "mcphub.extensions.codecompanion",
					opts = {
						-- MCP Tools
						make_tools = true, -- Make individual tools (@server__tool) and server groups (@server) from MCP servers
						show_server_tools_in_chat = true, -- Show individual tools in chat completion (when make_tools=true)
						add_mcp_prefix_to_tool_names = false, -- Add mcp__ prefix (e.g `@mcp__github`, `@mcp__neovim__list_issues`)
						show_result_in_chat = true, -- Show tool results directly in chat buffer
						format_tool = nil, -- function(tool_name:string, tool: CodeCompanion.Agent.Tool) : string Function to format tool names to show in the chat buffer
						-- MCP Resources
						make_vars = true, -- Convert MCP resources to #variables for prompts
						-- MCP Prompts
						make_slash_commands = true, -- Add MCP prompts as /slash commands
					},
				},
			},
		})
	end,
	-- Optional: lazy = false -- if you want it to load immediately on startup
}
