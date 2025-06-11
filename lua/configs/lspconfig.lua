-- require("nvchad.configs.lspconfig").defaults()
--
-- local servers = { "html", "cssls", "tsserver", "jsonls", "tailwind", "ruff", "clangd", "emmet_language_server" }
-- vim.lsp.enable(servers)
--
-- read :h vim.lsp.config for changing options of lsp servers

require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "jsonls", "tailwindcss", "ruff", "clangd", "emmet_language_server" }

for _, lsp in ipairs(servers) do
  require("lspconfig")[lsp].setup {}
end
