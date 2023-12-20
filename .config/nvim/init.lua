--REMEMBER THAT YOU NEED TO DOWNLOAD VIA 'NPM' SOME LSP! ESPECIALLY ANGULAR, YOU NEED TO INSTALL BOTH GLOBALLY AND LOCAL PROJECT!
--FOR ANGULAR: @angular/cli & language-server & typescript & typescript-language-server.
--TELESCOPE REQUIRES & others "pacman -s ripgrep fd prettier"!

require("options")

local plugins = require("plugins")
if not plugins.first_init() then
  require("colorscheme")
  require("conform-nvim")
  require("evil_lualine")
  require("treesitter")
  require("lsp/lsp")
  require("telescope-nvim")
  require("fidget-nvim")
  require("toggleterm-nvim")
  require("treesitter-context-nvim")
  require("Comment").setup()
  require("neogit-nvim")
else
  print("first init: wait for lazy to download stuff, then re-open nvim")
end
