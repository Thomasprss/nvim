-- Syntax highlightings
return {
  "nvim-treesitter/nvim-treesitter", 
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      indent = {
        enables = true
      },
      ensure_installed = {
            "lua",
            "bash",
            "dockerfile",
            "dot",
            "gitignore",
            "hcl",
            "json",
            "jq",
            "markdown",
            "python",
            "sql",
            "terraform",
            "vim",
      },
    })
  end,
}


