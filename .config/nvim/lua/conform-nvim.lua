require("conform").setup({
  formatters_by_ft = {
    json = { "prettier" },
    javascript = { "prettier" },
    angular = { "prettier" },
    html = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },
    yaml = { "prettier" },
    jsx = { "prettier" },
    rust = { "rustfmt" },
    c = { "clang_format" },
    cpp = { "clang_format" },
    -- -- Use a sub-list to run only the first available formatter
    -- javascript = { { "prettierd", "prettier" } },
  },
})
