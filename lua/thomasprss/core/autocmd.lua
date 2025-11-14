-- Force all *.tf files to be terraform and NOT hcl
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.tf", "*.tfvars" },
  callback = function()
    vim.bo.filetype = "terraform"
  end,
})
