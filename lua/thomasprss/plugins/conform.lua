return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  config = function()
    require("conform").setup({
      format_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { "stylua" },
        hcl = { "terraform_fmt" },
        terraform = { "terraform_fmt" },
        tf = { "terraform_fmt" },
        ["terraform-vars"] = { "terraform_fmt" },
      },
    })
  end,
}

