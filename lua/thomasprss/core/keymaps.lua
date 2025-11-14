local map_set = vim.keymap.set

-- move between windows
--
map_set("n", "<C-h>", "<C-w>h")
map_set("n", "<C-j>", "<C-w>j")
map_set("n", "<C-k>", "<C-w>k")
map_set("n", "<C-l>", "<C-w>l")





map_set("n", "<leader>e", "<Cmd>Neotree toggle<CR>", opts, { desc = "Open project tree" })
map_set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
map_set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
map_set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
map_set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
map_set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
map_set("n", "<C-b>", "<Cmd>Neotree<CR>")

local builtin = require('telescope.builtin')
map_set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map_set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map_set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map_set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- ~/.config/nvim/lua/keymaps.lua
map_set("n", "gd", vim.lsp.buf.definition, { buffer = 0, desc = "Go to definition" })
map_set("n", "K", vim.lsp.buf.hover, { buffer = 0, desc = "Hover documentation" })
map_set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = 0, desc = "Rename symbol" })


--Oil
map_set('n', '<leader>O', "<Cmd>Oil --float<CR>", { desc = "Open parents folder in Oil" })
