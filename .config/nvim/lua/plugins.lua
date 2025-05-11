--LAZY BOOTSTRAP
local plugins = {}
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  LAZY_BOOTSTRAP = vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
  return
end

lazy.setup({
  --colorschemes
  "sainnhe/sonokai",
  --statusline
  {"nvim-lualine/lualine.nvim", lazy = true},
  {"nvim-tree/nvim-web-devicons", lazy = true},
  --treesitter
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate", lazy = true},
  {"nvim-treesitter/nvim-treesitter-context", lazy = true},
  --LSP stuff
  {"neovim/nvim-lspconfig", lazy = true},
  {"hrsh7th/nvim-cmp", version = "0.0.2",lazy = true},
  {"L3MON4D3/LuaSnip", version = "2.4.0", lazy = true},
  {"rafamadriz/friendly-snippets", lazy = false},
  {"saadparwaiz1/cmp_luasnip", lazy = false},
  {"L3MON4D3/cmp-luasnip-choice", lazy = false},
  {"hrsh7th/cmp-buffer", lazy = false},
  {"hrsh7th/cmp-omni", lazy = false},
  {"hrsh7th/cmp-nvim-lsp", lazy = false},
  {"hrsh7th/cmp-nvim-lsp-signature-help", lazy = false},
  {"hrsh7th/cmp-path", lazy = false},
  {"j-hui/fidget.nvim", lazy = false},
  {"simrat39/rust-tools.nvim", lazy = true},
  {"numToStr/Comment.nvim", lazy = true},
  {"mfussenegger/nvim-jdtls", lazy = true},
  {"stevearc/conform.nvim"},
  --Telescope
  {"nvim-telescope/telescope.nvim", version = "0.1.8", lazy = false},
  {"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
  {"nvim-telescope/telescope-ui-select.nvim", lazy = true},
  {"nvim-lua/plenary.nvim", lazy = true},
  --
  {"akinsho/toggleterm.nvim", lazy = true},
  {"NeogitOrg/neogit", lazy = true},
  {"sindrets/diffview.nvim", lazy = true},
})

--if LAZY_BOOTSTRAP then
--  lazy.install()
--end

function plugins.first_init() 
  return LAZY_BOOTSTRAP
end

return plugins
