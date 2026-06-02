return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "moon",
		},
		-- config = function()
		-- 	-- chargement du thème
		-- 	vim.cmd([[colorscheme tokyonight]])
		-- end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		-- config = function()
		-- 	-- chargement du thème
		-- 	vim.cmd([[colorscheme catppuccin]])
		-- end,
	},
	{
		"uloco/bluloco.nvim",
		lazy = false,
		priority = 1000,
		dependencies = { "rktjmp/lush.nvim" },
		-- config = function()
		-- 	-- chargement du thème
		-- 	vim.cmd([[colorscheme bluloco]])
		-- end,
	},
	{
		"EdenEast/nightfox.nvim",
		config = function()
			vim.cmd([[colorscheme nordfox]])
		end,
	},
	-- Using Lazy
	{
		"navarasu/onedark.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		-- config = function()
		-- 	require("onedark").setup({
		-- 		style = "darker",
		-- 	})
		-- 	require("onedark").load()
		-- 	vim.cmd([[colorscheme onedark]])
		-- end,
	},
}
