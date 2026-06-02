vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH

require("thomasprss.lazy")
require("thomasprss.core")
require("thomasprss.lsp")
