-- :help options
vim.opt.backup = false                          -- creates a backup file
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
--vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.hlsearch = false                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.pumheight = 10                          -- pop up menu height
--vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
--vim.opt.showtabline = 2                         -- always show tabs
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- creates a swapfile
vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2                             -- insert 2 spaces for a tab
--vim.opt.cursorline = true                       -- highlight the current line
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = true                  -- set relative numbered lines
vim.opt.numberwidth = 4                         -- set number column width to 2 {default 4}
--vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false                            -- display lines as one long line
vim.opt.scrolloff = 8                           -- is one of my fav
vim.opt.sidescrolloff = 8
--vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
vim.opt.shortmess:append "c"

vim.api.nvim_set_var('netrw_menu', 0)
vim.api.nvim_set_var('netrw_banner', 0)
vim.api.nvim_set_var('gruvbox_contrast_dark', 'hard')

vim.api.nvim_set_var('sonokai_style', 'default')
vim.api.nvim_set_var('sonokai_transparent_background', 1)
vim.api.nvim_set_var('sonokai_better_performance', 1)

require("tokyonight").setup({
  transparent = true,
  styles = {
    variables = {fg = "red"}
  }
})

require("gruvbox").setup({
  strikethrough = false,
  italic = false,
  transparent_mode = true,
})

vim.cmd [[
"set transparent background
    augroup user_colors
      autocmd!
      autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
    augroup END

    " autocmd vimenter * ++nested colorscheme gruvbox
  colorscheme sonokai
]]

--Set indentation for some langs and wipe netrw buffers
vim.cmd [[
    autocmd FileType html setlocal shiftwidth=2 tabstop=2
    autocmd FileType java,rust setlocal shiftwidth=4 tabstop=4
    autocmd FileType netrw setl bufhidden=wipe
]]

--Disable arrow keys and force me to use 'hjkl'.
vim.api.nvim_set_keymap('n', '<Up>', '', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<Down>', '', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<Left>', '', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<Right>', '', { noremap=true, silent=true })

vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-o>', '<C-o>zz', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-i>', '<C-i>zz', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', 'n', 'nzz', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', 'N', 'Nzz', { noremap=true, silent=true })
