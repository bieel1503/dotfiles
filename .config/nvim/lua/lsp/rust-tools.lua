require("rust-tools").setup({
  tools = {
    hover_actions = {
      auto_focus = true
    }
  },
  server = {
    on_attach = on_attach,
    capabilities = capabilities
  }
})
