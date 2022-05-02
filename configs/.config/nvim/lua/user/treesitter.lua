local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = { "typescript", "rust", "html", "css", "bash", "c", "cpp", "json", "java", "python", "lua", "vim", "kotlin", "php", "query", "tsx"},
  sync_install = false, 
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,

  },
  rainbow = {
    enable = true,
    extended_mode = true
    --max_file_lines = nil, -- Do not enable for files with more than n lines, int
  },
  indent = { enable = true, disable = { "yaml" } },
}
