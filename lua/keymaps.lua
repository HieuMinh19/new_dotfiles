local keymap = vim.keymap

vim.api.nvim_set_keymap("v", "<Tab>", ">gv", {})
vim.api.nvim_set_keymap("v", "<S-Tab>", "<gv", {})

vim.api.nvim_set_keymap("n", "<Leader>\\", ":vsplit<CR>", {})
vim.api.nvim_set_keymap("n", "<Leader>/", ":split<CR>", {})

vim.api.nvim_set_keymap("n", "=", ":res +2<CR>", {}) -- increase pane by 2
vim.api.nvim_set_keymap("n", "-", ":res -2<CR>", {}) -- decrease pane by 2
vim.api.nvim_set_keymap("n", "]", ":vertical res +2<CR>", {}) -- vertical increase pane by 2
vim.api.nvim_set_keymap("n", "[", ":vertical res -2<CR>", {}) -- vertical decrease pane by 2
