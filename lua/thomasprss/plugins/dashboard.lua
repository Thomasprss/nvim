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
            icon = "  ",
            desc = "Open Repo",
            key = "g",
            action = function()
              require("telescope.builtin").find_files({
                prompt_title = "Select Repository",
                cwd = "~/Documents/Kering/repo",
                find_command = { "fd", "--type", "d", "--max-depth", "1" },
                attach_mappings = function(_, map)
                  local actions = require("telescope.actions")
                  local action_state = require("telescope.actions.state")

                  local open_repo = function(prompt_bufnr)
                    local selection = action_state.get_selected_entry()
                    actions.close(prompt_bufnr)
                    vim.cmd("cd ~/Documents/Kering/repo/" .. selection[1])
                    vim.cmd("e " .. selection [1])
                    vim.cmd("Neotree toggle left")
                  end

                  map("i", "<CR>", open_repo)
                  map("n", "<CR>", open_repo)

                  return true
                end,
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
