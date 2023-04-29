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
