local Plug = vim.fn["plug#"]
local vim = vim

vim.call("plug#begin")

Plug("https://github.com/tpope/vim-commentary")
Plug("https://github.com/terryma/vim-multiple-cursors")
Plug("nvim-treesitter/nvim-treesitter", {["do"] = "TSUpdate"})

Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope.nvim")

vim.call("plug#end")

vim.cmd.colorscheme("habamax")

-- set
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- remap
vim.g.mapleader = " "

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>q", function() vim.cmd(":Ex")  end)

vim.keymap.set("n", "<leader>uu", function() vim.cmd("!go fmt") end)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>h", function() vim.cmd(":tabp") end)
vim.keymap.set("n", "<leader>k", function() vim.cmd(":tabn") end)
