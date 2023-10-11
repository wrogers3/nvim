vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
require("wabongo.remap")
print("Hello from wabongo")

-- this is for nvimtree.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true
require("nvim-tree").setup()

