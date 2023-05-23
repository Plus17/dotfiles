local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
-- keymap("", ",", "<Nop>", opts)
-- vim.g.mapleader = ","
-- vim.g.maplocalleader = ","
vim.g.mapleader = ";"

-- Normal --
-- Delete a word backwards
keymap("n", "dW", 'vb"_d', opts)

-- Select All
keymap("n", "<C-a>", "gg<S-v>G", opts)

--  close buffer
keymap("n", "<C-w>", ":bd<CR>", opts)

-- Quit
keymap("", "<C-q>", ":q!<CR>", opts)

--  save buffer
keymap("n", "<C-s>", ":w<CR>", opts)

-- Split buffers
keymap("n", "<S-v>", ":vsplit<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)

-- Indenting in visual mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- visual block
keymap("", "<Leader>v", "<C-v>", opts)

-- esc to hide matches
keymap("n", "<Esc>", ":noh<CR>", term_opts)

-- global "go to definition (lsp)"
keymap("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>", opts)
