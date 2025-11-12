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
      local ok, telescope = pcall(require, "telescope")
      if ok then
        telescope.load_extension("terraform_doc")
      end
    end,
  },

  {
    "cappyzawa/telescope-terraform.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    ft = { "terraform", "hcl" },
    config = function()
      local ok, telescope = pcall(require, "telescope")
      if ok then
        telescope.load_extension("terraform")
      end
    end,
  },

}
