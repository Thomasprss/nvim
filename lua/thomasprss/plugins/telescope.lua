-- File finder
return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
    }
  },
  -- Terraform Telescope extensions
  {
    "ANGkeith/telescope-terraform-doc.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    ft = { "terraform", "hcl" },
    config = function()
      require("telescope").load_extension("terraform_doc")
    end,
  },

  {
    "cappyzawa/telescope-terraform.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    ft = { "terraform", "hcl" },
    config = function()
      require("telescope").load_extension("terraform")
    end,
  },

}
