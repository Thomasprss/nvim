return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    local db = require("dashboard")

      local berserk_logo = {
      "⠀⠀  ⢀⡴⠁⠀⠀⣿⡏⠀⠀⠱⣄    ",
      "⠀⠀⢀⣴⡟⠁⠀⠀⠀⣿⡇⠀⠀⠀⠙⣷⣄  ",
      "⠀⠀⠙⢿⣷⣄⠀⠀⠀⣿⡇⠀⠀⢀⣴⣿⠋  ",
      "⠀⠀⠀⠀⠙⢿⣷⣄⠀⢻⡇⢀⣴⣿⠋    ",
      "⠀⠀⠀⠀⠀⠀⠈⠻⣷⣾⣷⡿⠋      ",
      "⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣷⣄      ",
      "⠀⠀⠀⠀⠀⢀⣶⣿⠟⢹⣏⠻⢿⣷⣄    ",
      "⠀⠀⠀⢀⣼⣿⠟⠁⠀⢸⣿⠀⠈⠙⢿⣷⣄  ",
      "⠀⠀⣴⣿⡟⠁⠀⠀⠀⢸⣿⠀⠀⠀⠀⣹⣿⡷ ",
      "⠀⠀⠈⠻⣿⣦⡀⠀⠀⢸⣿⠀⠀⢀⣼⣿⠏  ",
      "⠀⠀⠀⠀⠈⠻⣿⣦⡀⢸⣿⠀⣴⣿⠟⠁   ",
      "⠀⠀⠀⠀⠀⠀⠈⠻⣿⣾⣿⣾⡿⠃⠀    ",
      "⠀⠀ ⠀⠀⠀⠀⠀⠈⠻⡿⠋𒉭      ",
    }

    db.setup({
      theme = "doom",
      config = {
        header = berserk_logo,
        center = {
          {
            icon = "  ",
            desc = "Open File Explorer",
            action = "Ex",
            key = "e",
          },
          {
            icon = "  ",
            desc = "New File",
            action = "ene | startinsert",
            key = "n",
          },
          {
            icon = "  ",
            desc = "Recent Files",
            action = "Telescope oldfiles",
            key = "r",
          },
          {
            icon = "  ",
            desc = "Open Git Repo",
            key = "g",
            action = function()
              require("telescope.builtin").find_files({
                prompt_title = "Select Git Repository",
                cwd = "~/Documents",
              })
            end,
          },
          {
            icon = "  ",
            desc = "Open Neovim Config",
            key = "c",
            action = function()
              local config_path = vim.fn.expand("~/.config/nvim")
              vim.cmd("cd " .. config_path)
              vim.cmd("Neotree toggle left")
            end,
          },
          {
            icon = "  ",
            desc = "Exit Neovim",
            action = "qa",
            key = "q",
          },
        },
        footer = {
          "⚔️  Berserk Mode Activated — Build, Deploy, Automate ⚙️",
        },
      },
    })
  end,
}
