require("telescope").setup()
require('telescope').load_extension('fzf')
require('telescope').load_extension('project')
--require('telescope').load_extension('file_browser')



--Telescope mappings...
local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
--vim.api.nvim_set_keymap('n', '<leader>fe', '<cmd>Telescope file_browser<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>fe', '<cmd>:Explore<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>fc', '<cmd>Telescope command_history<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>lua require("telescope").extensions.project.project{}<cr>', opts)

