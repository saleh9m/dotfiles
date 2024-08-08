require("config")

local Plug = vim.fn["plug#"]
local vim = vim

vim.call("plug#begin")

Plug("https://github.com/tpope/vim-commentary")
Plug("https://github.com/vim-airline/vim-airline")
Plug("https://github.com/terryma/vim-multiple-cursors")
Plug("https://github.com/morhetz/gruvbox")
Plug("nvim-treesitter/nvim-treesitter", {["do"] = "TSUpdate"})

Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope.nvim")

vim.call("plug#end")

-- colorscheme gruvbox
vim.cmd.colorscheme("gruvbox")

