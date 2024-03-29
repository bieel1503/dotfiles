local config = {
  cmd = {'/usr/bin/jdtls'},
  root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
  filetypes = { "java" }
}

require('jdtls').start_or_attach(config)
