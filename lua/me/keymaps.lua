local opts = { noremap = true }
local sopts = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- TODO: include the lsp keymaps in lua/me/lsp/keymaps.lua with these.

local k = vim.api.nvim_set_keymap

k("", "<space>", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Word count
k("n", "<leader>c", ":w !wc<CR>", opts)

-- Set textwidth
k("n", "<leader>tw", ":set textwidth=100<CR>", opts)

-- Set textwidth
k("n", "<leader>tt", ":set noexpandtab<CR>", opts)

-- Mute highlighting for this search only
k("n", "<C-l>", ":<C-u>nohlsearch<CR><C-l>", opts)

k("n", "<leader>e", ":Lex 30<CR>", sopts)

-- Resize with shift + arrows
k("n", "<S-Up>", ":resize -2<CR>", sopts)
k("n", "<S-Down>", ":resize +2<CR>", sopts)
k("n", "<S-Left>", ":vertical resize -2<CR>", sopts)
k("n", "<S-Right>", ":vertical resize +2<CR>", sopts)

-- Move between buffers
k("n", "<Tab>", ":bnext<CR>", sopts)
k("n", "<S-Tab>", ":bprevious<CR>", sopts)

-- Toggle windows
k("n", "<C-h>", "<C-w>w", sopts)
k("n", "<leader><space>", "<C-w>w", sopts)

-- Move line
k("n", "<C-j>", "<C-l><Esc>:m .+1<CR>==", opts)
k("n", "<C-k>", "<C-l><Esc>:m .-2<CR>==", opts)

-- Telescope
k("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
k("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)

-- Glow markdown preview
k("n", "<leader>m", ":w<CR>:Glow<CR>", opts)

-- Undo tree
k("n", "<F5>", ":UndotreeToggle<CR>", opts)

-- Nerd Commenter
k("n", "<leader>k", "<plug>NERDCommenterToggle<CR>k", {})

------------
-- Visual --
------------
-- Don't leave visual mode when indenting
k("v", "<", "<gv", sopts)
k("v", ">", ">gv", sopts)

-- Move line
k("v", "<C-j>", ":m .+1<CR>==", sopts)
k("v", "<C-k>", ":m .-2<CR>==", sopts)

-- Nerd Commenter
k("v", "<leader>k", "<plug>NERDCommenterToggle<CR>k", opts)

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
