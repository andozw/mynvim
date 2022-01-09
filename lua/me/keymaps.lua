local opts = { noremap = true }
local sopts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

local k = vim.api.nvim_set_keymap

k("", "<space>", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Word count
k("n", "<leader>wc", ":w !wc<CR>", opts)

-- Set textwidth
k("n", "<leader>tw", ":set textwidth=100<CR>", opts)

-- Mute highlighting for this search only
k("n", "<C-l>", ":<C-u>nohlsearch<CR><C-l>", opts)

k("n", "<leader>e", ":Lex 30<CR>", sopts)

-- Resize with shift + arrows
k("n", "<S-Up>", ":Resize -2<CR>", sopts)
k("n", "<S-Down>", ":Resize +2<CR>", sopts)
k("n", "<S-Left>", ":Vertical resize -2<CR>", sopts)
k("n", "<S-Right>", ":Vertical resize +2<CR>", sopts)

-- Move between buffers
k("n", "<Tab>", ":bnext<CR>", sopts)
k("n", "<S-Tab>", ":bprevious<CR>", sopts)

-- Move line
k("n", "<C-j>", "<C-l><Esc>:m .+1<CR>==", opts)
k("n", "<C-k>", "<C-l><Esc>:m .-2<CR>==", opts)

------------
-- Visual --
------------
-- Don't leave visual mode when indenting
k("v", "<", "<gv", sopts)
k("v", ">", ">gv", sopts)

-- Move line
k("v", "<C-j>", ":m .+1<CR>==", sopts)
k("v", "<C-k>", ":m .-2<CR>==", sopts)

------------------
-- Visual Block --
------------------
-- Move line
k("x", "<C-j>", ":m '>+1<CR>gv-gv", sopts)
k("x", "<C-k>", ":m '<-2<CR>gv-gv", sopts)

--------------
-- Terminal --
--------------
k("t", "<Esc>", "<C-\\><C-n>", sopts)
k("t", "<C-v><Esc>", "<Esc>", sopts)

-------------
-- Command --
-------------
-- TODO:
-- Add entry for %% to expand the path of the active buffer.
-- :% will expand but includes the current file.
-- cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
-- k("c", "", "", opts)
