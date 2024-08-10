local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Better escape using jk in insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)

-- Center search results
keymap("n", "n", "nzz", default_opts)
keymap("n", "N", "Nzz", default_opts)

-- Visual line wraps
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_opts)
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_opts)

-- Better indent
keymap("v", "<", "<gv", default_opts)
keymap("v", ">", ">gv", default_opts)

-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP', default_opts)

-- Switch buffer
keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
keymap("n", "<S-l>", ":bnext<CR>", default_opts)

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", default_opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", default_opts)

-- Resizing panes
keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", default_opts)
keymap("n", "<Down>", ":resize +1<CR>", default_opts)

-- Hop config
local hop = require('hop')
local directions = require('hop.hint').HintDirection
hop.setup { keys = 'etovxqpdygfblzhckisuran' }
vim.keymap.set('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, {remap=true})
vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, {remap=true})

vim.api.nvim_set_keymap("v", "çj", "<cmd>HopLineAC<CR>", {noremap=true})
vim.api.nvim_set_keymap("v", "çk", "<cmd>HopLineBC<CR>", {noremap=true})
vim.api.nvim_set_keymap("v", "çb", "<cmd>HopWordBC<CR>", {noremap=true})
vim.api.nvim_set_keymap("v", "çw", "<cmd>HopWordAC<CR>", {noremap=true})
vim.api.nvim_set_keymap("v", "çe", "<cmd>HopWordAC<CR>", {noremap=true})

vim.api.nvim_set_keymap("n", "çj", "<cmd>HopLineAC<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "çk", "<cmd>HopLineBC<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "çb", "<cmd>HopWordBC<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "çw", "<cmd>HopWordAC<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "çe", "<cmd>HopWordAC<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "çs", "<cmd>HopPattern<CR>", {noremap=true})

-- normal mode (sneak-like)
vim.api.nvim_set_keymap("n", "s", "<cmd>HopChar2AC<CR>", {noremap=false})
vim.api.nvim_set_keymap("n", "S", "<cmd>HopChar2BC<CR>", {noremap=false})

-- visual mode (sneak-like)
vim.api.nvim_set_keymap("v", "s", "<cmd>HopChar2AC<CR>", {noremap=false})
vim.api.nvim_set_keymap("v", "S", "<cmd>HopChar2BC<CR>", {noremap=false})
