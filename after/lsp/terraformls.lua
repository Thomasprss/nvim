-- ~/.config/nvim/lua/thomasprss/lsp/terraformls.lua
local M = {}

M["terraformls"] = {
  cmd = { "terraform-ls", "serve" },
  filetypes = { "terraform", "tf" },
  root_dir = function(fname)
    local path = type(fname) == "number" and vim.api.nvim_buf_get_name(fname) or fname
    return vim.fs.root(path, { ".git", ".terraform", "main.tf" }) or vim.fs.dirname(path)
  end,
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
  settings = {
    terraform = { lsp = { experimentalFeatures = { validateOnSave = true } } },
  },
}

return M
