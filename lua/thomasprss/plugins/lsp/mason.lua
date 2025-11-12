return {
    {
      "neovim/nvim-lspconfig",
    },
    {
      "mason-org/mason.nvim",
      opts = {
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗",
            },
          },
        },
    },
    {
      "mason-org/mason-lspconfig.nvim",
      opts = {
        ensure_installed = {
          "bashls",
          "lua_ls",
          "pyright",
          "terraformls",
          "tflint",
          "yamlls"
        },
      },
    },
}
