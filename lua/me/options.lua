local cmd = vim.cmd
local options = {
    spell = true,                            -- enable spellcheck
    backup = false,                          -- creates a backup file
    clipboard = "unnamed",                   -- allows neovim to access the system clipboard
    cmdheight = 2,                           -- more space in the neovim command line for displaying messages
    completeopt = { "menuone", "noselect" }, -- mostly just for cmp
    conceallevel = 0,                        -- so that `` is visible in markdown files
    fileencoding = "utf-8",                  -- the encoding written to a file
    hlsearch = true,                         -- highlight all matches on previous search pattern
    ignorecase = true,                       -- ignore case in search patterns
    mouse = "a",                             -- allow the mouse to be used in neovim
    pumheight = 10,                          -- pop up menu height
    showtabline = 2,                         -- always show tabs
    smartcase = true,                        -- smart case
    smartindent = true,                      -- make indenting smarter again
    splitbelow = true,                       -- force all horizontal splits to go below current window
    splitright = true,                       -- force all vertical splits to go to the right of current window
    swapfile = false,                        -- creates a swapfile
    undofile = true,                         -- enable persistent undo
    undodir = vim.env.VIMDATA .. "/undo",
    writebackup = false,                     -- don't allow if a file is being edited by another program
    expandtab = true,                        -- convert tabs to spaces
    shiftwidth = 4,                          -- the number of spaces inserted for each indentation
    tabstop = 4,                             -- actual tabs occupy 8 characters
    softtabstop = 4,                         -- insert mode tab and backspace use 2 spaces
    cursorline = false,                      -- highlight the current line
    number = true,                           -- set numbered lines
    relativenumber = false,                  -- set relative numbered lines
    ruler = true,                            -- show where you are
    numberwidth = 4,                         -- set number column width to 2 {default 4}
    signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
    wrap = true,                             -- fuck wrapping you psychopath
    scrolloff = 8,                           -- minimal number of lines to keep above/below the cursor
    sidescrolloff = 8,

    history = 200,                           -- increase buffer history
    laststatus = 2,                          -- always show statusline
    incsearch = true,                        -- search as you type
    list = true,                             -- show trailing whitespace
    listchars = { tab = '▸ ', trail = '▫' },

    termguicolors = true,
    colorcolumn = "100",
    nrformats = "",                          -- treat all numerals as decimals regardless of leading 0's. Helpful with <C-a> commands
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

cmd "highlight ColorColumn ctermbg=0 guibg=lightgrey"

-- Show terminal cursor in terminal mode
cmd "highlight! link TermCursor Cursor"
cmd "highlight! TermCursorNC guibg=pink guifg=white ctermbg=1 ctermfg=15"

if vim.env.TMUX then
    -- TMUX specific
end
