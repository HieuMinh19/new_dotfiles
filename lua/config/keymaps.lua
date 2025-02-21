-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- search words behind the pointer in the current file
keymap.set("n", "<C-k>", "/<C-R><C-W><CR>", { noremap = true, silent = true })

-- Increase pane size by 2
keymap.set("n", "=", ":res +2<CR>", { noremap = true, silent = true })

-- Decrease pane size by 2
keymap.set("n", "-", ":res -2<CR>", { noremap = true, silent = true })

-- Vertically increase pane size by 2
keymap.set("n", "]", ":vertical res +2<CR>", { noremap = true, silent = true })

-- Vertically decrease pane size by 2
keymap.set("n", "[", ":vertical res -2<CR>", { noremap = true, silent = true })

-- Using tab in visual mode will indent the selected text
keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true })
keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true })
