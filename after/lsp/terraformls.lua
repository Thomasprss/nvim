return {
	cmd = { "terraform-ls", "serve" },
	filetypes = { "terraform", "terraform-vars" },

	root_markers = {
		".terraform",
		".git",
		"versions.tf",
		"main.tf",
		"providers.tf",
	},

	capabilities = require("cmp_nvim_lsp").default_capabilities(),

	settings = {
		["terraform-ls"] = {
			experimentalFeatures = {
				validateOnSave = true,
			},
		},
	},
}
