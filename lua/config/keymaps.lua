-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local telescope = require("telescope.builtin")
vim.keymap.set("n", ";", telescope.buffers, {})
-- Define a custom function to use ripgrep with fzf
vim.api.nvim_set_keymap("n", "<leader>p", ":Grep<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<leader>p",
  ":lua require('fzf').grep({ source = 'grep -rnI <word> .' })<CR>",
  { noremap = true, silent = true }
)
