-- Automatically install packer
local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = vim.fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end


-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "single" })
    end,
  },
}

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'
  use 'morhetz/gruvbox'

    -- cmp plugins
  use "neovim/nvim-lspconfig" -- enable LSP
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"


  use {
  'nvim-telescope/telescope.nvim',
  requires = { 
      { "nvim-lua/plenary.nvim" }, 
      { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }, 
      { "nvim-telescope/telescope-project.nvim" },
      { "nvim-telescope/telescope-ui-select.nvim" }
   }
  }

  use { "simrat39/rust-tools.nvim" }

    use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow"
  use "windwp/nvim-autopairs"
  use "jose-elias-alvarez/null-ls.nvim"

  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {"akinsho/toggleterm.nvim"}

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  use { "TimUntersberger/neogit", requires = "sindrets/diffview.nvim"}

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
  
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
