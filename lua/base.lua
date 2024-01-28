-- Set list characters
vim.opt.list = true
vim.opt.listchars = {tab = "»·", trail = "·", nbsp = "·"}

-- Use one space, not two, after punctuation.
vim.opt.joinspaces = false

-- Numbers
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.numberwidth = 5
-- vim.opt.colorcolumn = 120

-- Open new split panes to right and bottom, which feels more natural
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Spelling check
vim.opt.spell = true
vim.opt.spelllang = "en_us"

-- Autocomplete with dictionary words when spell check is on
vim.opt.complete = vim.opt.complete + "kspell"

-- Always use vertical diffs
vim.opt.diffopt = vim.opt.diffopt + "vertical"

-- Enable mouse mode
vim.opt.mouse = "a"

-- Copy to clipboard
vim.opt.clipboard = "unnamed"

vim.opt.encoding = "utf-8"
vim.opt.guifont = "DroidSansMono\\ Nerd\\ Font:h11"

vim.opt.termguicolors = true

vim.opt.background = "dark"

-- Colorscheme
vim.cmd("colorscheme dracula")

vim.cmd("filetype plugin indent on")


-- Autojump to last cursor position
vim.cmd([[
  augroup vimrcEx
    autocmd!
    autocmd BufReadPost * if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
  augroup END
]])

-- Go file config
vim.cmd([[
  autocmd FileType go set noexpandtab
  autocmd FileType go set shiftwidth=4
  autocmd FileType go set softtabstop=4
  autocmd FileType go set tabstop=4
]])

-- Filetype detection for certain file extensions
vim.cmd([[
  autocmd BufRead,BufNewFile .eslintrc.json setlocal filetype=json
  autocmd BufRead,BufNewFile .babelrc setlocal filetype=json
  autocmd BufRead,BufNewFile .prettierrc setlocal filetype=json
  autocmd BufRead,BufNewFile .babelrc.js setlocal filetype=javascript
  autocmd BufRead,BufNewFile .sequelizerc setlocal filetype=javascript
  autocmd BufRead,BufNewFile *.hbs setlocal filetype=html
]])

-- Set shell script type for syntax highlighting
vim.g.is_posix = 1

-- Use tab with text block
vim.cmd([[
  vnoremap <Tab> >gv
  vnoremap <S-Tab> <gv
]])

