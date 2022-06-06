--REMEMBER THAT YOU NEED TO DOWNLOAD VIA 'NPM' SOME LSP! ESPECIALLY ANGULAR, YOU NEED TO INSTALL BOTH GLOBALLY AND LOCAL PROJECT!
--FOR ANGULAR: @angular/cli & language-server & typescript & typescript-language-server.
--TELESCOPE REQUIRES & others "pacman -s ripgrep fd prettier"!

require("user.options")
require("plugins")
require("user.completion")
require("user.lsp")
require("user.telescope")
require("user.treesitter")
require("user.autopairs")
require("user.null-ls")
require("user.evil_lualine")
require("user.toggleterm")  
