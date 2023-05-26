local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = { "typescript", "rust", "html", "css", "bash", "c", "cpp", "json", "java", "python", "lua", "vim", "kotlin", "php", "query", "tsx", "cmake", "diff", "http", "ini", "javascript", "make", "regex", "sql", "toml", "vimdoc", "yaml"},
  sync_install = false, 
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
}
