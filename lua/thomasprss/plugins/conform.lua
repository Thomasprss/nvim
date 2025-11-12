return {
  "stevearc/conform.nvim",
  optional = true,
  event = {"BufWritePre"},
  opts = {
    format_on_save = {
      timeout_ms = 1000,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = {"stylua"},
      hcl = { "packer_fmt" },
      terraform = { "terraform_fmt" },
      tf = { "terraform_fmt" },
      ["terraform-vars"] = { "terraform_fmt" },
    },
  },
}
