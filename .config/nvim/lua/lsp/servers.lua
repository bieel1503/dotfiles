-- if you want to set up formatting on save, you can use this as a callback
-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- add to your shared on_attach callback
-- local on_attach = function(client, bufnr)
--     if client.supports_method("textDocument/formatting") then
--         vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
--         vim.api.nvim_create_autocmd("BufWritePre", {
--             group = augroup,
--             buffer = bufnr,
--             callback = function()
--                 lsp_formatting(bufnr)
--             end,
--         })
--     end
-- end

-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")
local servers = { "jsonls", "cssls", "pyright", "ts_ls", "clangd" }
for _, lsp in pairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Manual configured LSPs...
--
local project_library_path = "/home/bieel1503/.local/lib/node_modules/"
local cmd = {"ngserver", "--stdio", "--tsProbeLocations", project_library_path , "--ngProbeLocations", project_library_path}

lspconfig["angularls"].setup{
  --on_attach = on_attach,
  capabilities = capabilities,
  cmd = cmd,
  on_new_config = function(new_config,new_root_dir)
    new_config.cmd = cmd
  end,
}

-- lspconfig["ccls"].setup{
--   --on_attach = on_attach,
--   capabilities = capabilities,
--   init_options = {
--     compilationDatabaseDirectory = "build";
--     index = {
--       threads = 0;
--     },
--     clang = {
--       excludeArgs = {"-frounding-math"};
--     }
--   }
-- }
