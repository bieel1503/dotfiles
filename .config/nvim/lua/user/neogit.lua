require("neogit").setup {
  kind = "replace",
  integrations = {
    diffview = true
  },
}

vim.api.nvim_set_keymap('n', '<leader>gg', '<cmd>:Neogit<cr>', { noremap=true, silent=true })
